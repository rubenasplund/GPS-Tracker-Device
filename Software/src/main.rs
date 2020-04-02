#![no_main]
#![no_std]
#![allow(deprecated)]

extern crate panic_semihosting;

use hal::{
    gpio::*,
    pac,
    prelude::*,
    rcc::Config,
    // spi,
    syscfg,
    serial::{Config as serialConfig, Rx, Serial, Tx},
    stm32::{USART1},
    timer,
};

use nb::block;
use cortex_m::peripheral::syst::SystClkSource;
use stm32l0xx_hal as hal;

#[rtfm::app(device = stm32l0xx_hal::pac, monotonic = rtfm::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources {
        INT: pac::EXTI,
        TX: Tx<USART1>,
        RX: Rx<USART1>,
        LED: gpioa::PA0<Output<PushPull>>,
        #[init(false)]
        STATE: bool,

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


        let mut syst = cx.core.SYST;

        // configures the system timer to trigger a SysTick exception 
        syst.set_clock_source(SystClkSource::Core);
        // syst.set_reload(16_000_000); // period = 1s
        syst.set_reload(1_000_000); // period = 1/16 s
        syst.enable_counter();
        syst.enable_interrupt();

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

        // let sck = gpiob.pb3;
        // let miso = gpioa.pa6;
        // let mosi = gpioa.pa7;
        // //let nss = gpioa.pa15.into_push_pull_output();
        // //longfi_bindings::set_spi_nss(nss);

        // // Initialise the SPI peripheral.
        // let mut _spi = cx.device
        //     .SPI1
        //     .spi((sck, miso, mosi), spi::MODE_0, 1_000_000.hz(), &mut rcc);

        // let reset = gpioc.pc0.into_push_pull_output();
    
        // Late resources
        init::LateResources {
            INT: exti,
            TX: tx,
            RX: rx,
            LED: led,
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
                    tx.write(byte).unwrap();
                }
                Err(err) => {

                }

            }
            
        }
    }

    // led on/off
    #[task(binds = SysTick, priority = 5, resources = [LED, STATE])]
    fn led_pwn(cx: led_pwn::Context) {
        let led = cx.resources.LED;
        if *cx.resources.STATE {
            led.set_high().ok();
        } else {
            led.set_low().ok();
        }
        *cx.resources.STATE = !*cx.resources.STATE;
    }

    // Interrupt handlers used to dispatch software tasks
    extern "C" {
        fn USART4_USART5();
    }
};

    // #[task(capacity = 4, priority = 2, resources = [BUFFER, LONGFI, LED, STATE, COUNTER_1, COUNTER_2])]
    // fn radio_event(event: RfEvent) {
    //     let longfi_radio = resources.LONGFI;
    //     let client_event = longfi_radio.handle_event(event);
    //     match client_event {
    //         ClientEvent::ClientEvent_TxDone => {
    //             longfi_radio.receive();
    //         }
    //         ClientEvent::ClientEvent_Rx => {
    //             let rx_packet = longfi_radio.get_rx();

    //             {
    //                 let buf = unsafe {
    //                     core::slice::from_raw_parts(rx_packet.buf, rx_packet.len as usize)
    //                 };
    //                 let message = Message::deserialize(buf);

    //                 if let Some(message) = message {
    //                     // Let's assume we only have permission to use ID 2:
    //                     if message.id != 2 {
    //                         longfi_radio.set_buffer(resources.BUFFER);
    //                         longfi_radio.receive();
    //                         return;
    //                     }

    //                     let binary = application(
    //                         message,
    //                         resources.COUNTER_1,
    //                         resources.COUNTER_2,
    //                         resources.STATE,
    //                         resources.LED
    //                     );
    //                     longfi_radio.send(&binary);
    //                 }
    //             }

    //             longfi_radio.set_buffer(resources.BUFFER);
    //             longfi_radio.receive();
    //         }
    //         ClientEvent::ClientEvent_None => {}
    //     }
    // }
