#![no_main]
#![no_std]
#![allow(deprecated)]

extern crate panic_semihosting;

use hal::{
    gpio::*,
    pac,
    prelude::*,
    rcc::Config,
    spi,
    syscfg,
    serial::{Config as serialConfig, Rx, Serial, Tx},
    stm32::{USART1},
    timer,
    adc,
    exti::TriggerEdge,
};

use nb::block;
use cortex_m::peripheral::syst::SystClkSource;
use stm32l0xx_hal as hal;
use cortex_m_semihosting::hprintln;

#[rtfm::app(device = stm32l0xx_hal::pac, monotonic = rtfm::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources {
        INT: pac::EXTI,
        TX: Tx<USART1>,
        RX: Rx<USART1>,
        LED: gpioa::PA0<Output<PushPull>>,
        ADC: adc::Adc,
        SIG: gpioa::PA2<Analog>,
        Button: gpiob::PB6<Input<PullUp>>,
        #[init(false)]
        LED_STATE: bool,
        #[init(false)]
        LED_LOCK: bool,

    }

    // init runs in an interrupt free section
    #[init]
    fn init(cx: init::Context) -> init::LateResources {
        // Configure the clock.
        let mut rcc = cx.device.RCC.freeze(Config::hsi16());
        let mut syscfg = syscfg::SYSCFG::new(cx.device.SYSCFG, &mut rcc);

        // Acquire the GPIOB peripheral. This also enables the clock for GPIOB in
        // the RCC register.
        let gpioa = cx.device.GPIOA.split(&mut rcc);
        let gpiob = cx.device.GPIOB.split(&mut rcc);
        let gpioc = cx.device.GPIOC.split(&mut rcc);

        let exti = cx.device.EXTI;

        // Configure tx and rx
        let mut tx = gpioa.pa9.into_push_pull_output();
        let mut rx = gpioa.pa10.into_pull_up_input();

        // Configure led
        let mut led = gpioa.pa0.into_push_pull_output();
        led.set_low().ok();

        // Configure button
        let mut button = gpiob.pb6.into_pull_up_input(); 

        let mut syst = cx.core.SYST;
        // configures the system timer to trigger a SysTick exception 
        syst.set_clock_source(SystClkSource::Core);
        // syst.set_reload(16_000_000); // period = 1s
        syst.set_reload(1_000_000); // period = 1/16 s
        syst.enable_counter();
        syst.enable_interrupt();


        exti.listen(
            &mut syscfg,
            button.port(),
            button.pin_number(),
            TriggerEdge::Rising,
        );

        // let mut core = cx.core;
        // let device = cx.device;
    
        // let rcc = device.RCC.constrain();
    
        // 16 MHz (default, all clocks)
        // let clocks = rcc.cfgr.freeze();
    
        // let gpioa = device.GPIOA.split();
    
        // let tx = gpioa.pa2.into_alternate_af7();
        // let rx = gpioa.pa3.into_alternate_af7();
    
        let serial = Serial::usart1(
            cx.device.USART1,
            (tx, rx),
            serialConfig::default().baudrate(9_600.bps()),
            &mut rcc,
            // clocks,
        ).unwrap();
    
        // Separate out the sender and receiver of the serial port
        let (tx, rx) = serial.split();

        let adc = cx.device.ADC.constrain(&mut rcc);
        let sig = gpioa.pa2.into_analog();

        // let sck = gpiob.pb13;
        // let miso = gpiob.pb14;
        // let mosi = gpiob.pb15;
        // let nss = gpiob.pb12.into_push_pull_output();
        // let dc = gpiob.pb9.into_push_pull_output();
        // //longfi_bindings::set_spi_nss(nss);

        // // Initialise the SPI peripheral.
        // let mut _spi = cx.device
        //     .SPI2
        //     .spi((sck, miso, mosi), spi::MODE_0, 1_000_000.hz(), &mut rcc);

        // let reset = gpiob.pb8.into_push_pull_output();
    
        // Late resources
        init::LateResources {
            INT: exti,
            TX: tx,
            RX: rx,
            LED: led,
            ADC: adc,
            SIG: sig,
            Button: button,
        }
    }
    
    // idle may be interrupted by other interrupts/tasks in the system
    #[idle(resources = [RX, TX])]
    fn idle(cx: idle::Context) -> ! {
        let rx = cx.resources.RX;
        let tx = cx.resources.TX;

        loop {
        
            match block!(rx.read()) {
                Ok(byte) => {
                    // hprintln!("Ok {:?}", byte).unwrap();
                    // tx.write(byte).unwrap();
                }
                
                Err(err) => {

                }
            }
        }
    }

    // led is flashing until, when 3.3V signal is going through the adc PA2 then it stops flashing
    #[task(binds = SysTick, priority = 3, resources = [LED, LED_STATE, LED_LOCK, ADC, SIG])]
    fn led_pwn_toggle(cx: led_pwn_toggle::Context) {
        let mut led = cx.resources.LED;
        let mut adc = cx.resources.ADC;
        let mut sig = cx.resources.SIG;
        let mut val: u16 = 0;

        if *cx.resources.LED_STATE && !*cx.resources.LED_LOCK {
            led.set_high().ok();
        } else {
            led.set_low().ok();
        }
        *cx.resources.LED_STATE = !*cx.resources.LED_STATE;

        val = adc.read(sig).unwrap();
        // hprintln!(" {:?}", val).unwrap();

        if val >= 350 {
            *cx.resources.LED_LOCK = false;
        } else {
            *cx.resources.LED_LOCK = true;
        }
    }

    #[task(priority = 5)]
    fn button_event(cx: button_event::Context) {
        hprintln!("button is pressed!!").unwrap();
    }

    #[task(binds = EXTI4_15, priority = 1, resources = [Button, INT], spawn = [button_event])]
    fn EXTI4_15(c: EXTI4_15::Context) {
        c.spawn.button_event().unwrap();
        c.resources.INT.clear_irq(c.resources.Button.pin_number());

    }

    // Interrupt handlers used to dispatch software tasks
    extern "C" {
        fn USART4_USART5();
    }
};
