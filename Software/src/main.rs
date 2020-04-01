#![no_main]
#![no_std]
#![allow(deprecated)]

extern crate panic_semihosting;

use hal::{
    exti::TriggerEdge,
    gpio::*,
    pac,
    prelude::*,
    rcc::Config,
    spi,
    syscfg,
    delay::Delay,
    time::U32Ext, 
    serial::{Config as serialConfig, Rx, Serial, Tx},
    stm32::{USART1},
    stm32::usart1,
};

use nb::block;
use cortex_m_semihosting::hprintln;
use cortex_m::peripheral::DWT;

use stm32l0xx_hal as hal;
//use communicator::{Message, Channel};
use heapless::consts::*;

#[rtfm::app(device = stm32l0xx_hal::pac, monotonic = rtfm::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources {
        INT: pac::EXTI,
        TX: Tx<USART1>,
        RX: Rx<USART1>,
        LED: gpioa::PA0<Output<PushPull>>,

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

        let mut tx = gpioa.pa9.into_push_pull_output();
        let mut rx = gpioa.pa10.into_pull_up_input();

        // Configure led
        let mut led = gpioa.pa0.into_push_pull_output();
        led.set_low().ok();

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
    #[idle(resources = [RX, TX, LED])]
    fn idle(cx: idle::Context) -> ! {
        let led = cx.resources.LED;
        let rx = cx.resources.RX;
        let tx = cx.resources.TX;


        led.set_high().ok();

        loop {
        
            match block!(rx.read()) {
                Ok(byte) => {
                    //tx.write(byte).unwrap();
                }
                Err(err) => {

                }

            }
            
        }
    }

    // #[task(resources = [LED])]
    // fn blinkinLed() {
    //      let led = cx.resources.LED;
    // }

    // Interrupt handlers used to dispatch software tasks
    extern "C" {
        fn USART4_USART5();
    }
};

    // #[init(resources = [BUFFER])]
    // fn init() -> init::LateResources {
    //     // Configure the clock.
    //     let mut rcc = device.RCC.freeze(Config::hsi16());
    //     let mut syscfg = syscfg::SYSCFG::new(device.SYSCFG, &mut rcc);

    //     // Acquire the GPIOB peripheral. This also enables the clock for GPIOB in
    //     // the RCC register.
    //     let gpioa = device.GPIOA.split(&mut rcc);
    //     let gpiob = device.GPIOB.split(&mut rcc);
    //     let gpioc = device.GPIOC.split(&mut rcc);

    //     let exti = device.EXTI;

    //     // Configure PB4 as input.
    //     let sx1276_dio0 = gpiob.pb4.into_pull_up_input();
    //     // Configure the external interrupt on the falling edge for the pin 2.
    //     exti.listen(
    //         &mut syscfg,
    //         sx1276_dio0.port(),
    //         sx1276_dio0.pin_number(),
    //         TriggerEdge::Rising,
    //     );

    //     let sck = gpiob.pb3;
    //     let miso = gpioa.pa6;
    //     let mosi = gpioa.pa7;
    //     let nss = gpioa.pa15.into_push_pull_output();
    //     longfi_bindings::set_spi_nss(nss);

    //     // Initialise the SPI peripheral.
    //     let mut _spi = device
    //         .SPI1
    //         .spi((sck, miso, mosi), spi::MODE_0, 1_000_000.hz(), &mut rcc);

    //     let reset = gpioc.pc0.into_push_pull_output();
    //     longfi_bindings::set_radio_reset(reset);

    //     let ant_sw = AntennaSwitches::new(
    //         gpioa.pa1.into_push_pull_output(),
    //         gpioc.pc2.into_push_pull_output(),
    //         gpioc.pc1.into_push_pull_output(),
    //     );

    //     longfi_bindings::set_antenna_switch(ant_sw);

    //     let en_tcxo = gpioa.pa8.into_push_pull_output();
    //     longfi_bindings::set_tcxo_pins(en_tcxo);

    //     static mut BINDINGS: longfi_device::BoardBindings = longfi_device::BoardBindings {
    //         reset: Some(longfi_bindings::radio_reset),
    //         spi_in_out: Some(longfi_bindings::spi_in_out),
    //         spi_nss: Some(longfi_bindings::spi_nss),
    //         delay_ms: Some(longfi_bindings::delay_ms),
    //         get_random_bits: Some(longfi_bindings::get_random_bits),
    //         set_antenna_pins: Some(longfi_bindings::set_antenna_pins),
    //         set_board_tcxo: Some(longfi_bindings::set_tcxo),
    //     };

    //     let rf_config = RfConfig {
    //         oui: 0xBEEF_FEED,
    //         device_id: 0xABCD,
    //     };

    //     let mut longfi_radio = unsafe { LongFi::new(&mut BINDINGS, rf_config).unwrap() };

    //     longfi_radio.set_buffer(resources.BUFFER);

    //     longfi_radio.receive();

    //     // Configure PB5 as output.
    //     let mut led = gpiob.pb2.into_push_pull_output();
    //     led.set_low().ok();

    //     // Return the initialised resources.
    //     init::LateResources {
    //         INT: exti,
    //         SX1276_DIO0: sx1276_dio0,
    //         LONGFI: longfi_radio,
    //         LED: led,
    //     }
    // }

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
