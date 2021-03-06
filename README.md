# GPS Tracker Device

  

## Project

The purpose for this project is to make a GPS tracker device which tracks position and movement patterns on animlas or things. Then sends the position data through lora.

## Areas of expertise

- Ruben will do the software
- Simon Will do the hardware

## Dependencies
- Install rust [https://rustup.rs/](https://rustup.rs/)

- Rust 1.40, or later

- `rustup update`

- `rustup target add thumbv7em-none-eabihf`

## Debug and Run

- `openocd -f openocd.cfg`

- `cargo run`

## Components

* GPS module - Adafruit 746 - https://www.elfa.se/en/mtk3339-gps-breakout-adafruit-746/p/30091220?q=GPS&pos=2&origPos=5&origPageSize=10&track=true

* Micro USB connector - https://www.elfa.se/en/micro-usb-with-solder-tabs-micro-usb-socket-right-angle-poles-molex-105017-0001/p/30161483?queryFromSuggest=true

* A display - SSD1306 SPI - https://cdon.se/hem-tradgard/oled-display-0-96-tum-vit-128x64-pixlar-ssd1306-spi-p50506639

* Temperature sensor - TMP36FSZ - https://se.rs-online.com/web/p/temperature-sensors-humidity-sensors/0412973/

* LED SMD 0805 - https://www.elfa.se/en/smd-led-640nm-0805-150mcd-20ma-kingbright-kp-2012surc/p/17531013?queryFromSuggest=true

* ADC - Integrated in MCU

* Battery (chargable) -ICP501022UPM - https://www.elfa.se/sv/litiumjonpolymerbatteripack-340mah-7v-renata-icp422339pr/p/30158712?q=&pos=1&origPos=1&origPageSize=10&track=true

* Charging circuit (for battery)- MCP73831T-2ACI/OT https://www.elfa.se/sv/laddkrets-75-sot-23-microchip-mcp73831t-2aci-ot/p/17386933?track=true&no-cache=true

* Button - https://www.elfa.se/en/tactile-switch-b3fs-1no-47n-6mm-omron-electronic-components-b3fs-1012p/p/30156578?q=smd+button&pos=3&origPos=43&origPageSize=100&track=true

* Power switch - https://www.elfa.se/en/low-power-slide-switch-1co-on-on-pcb-smd-rnd-components-rnd-210-00603/p/30152627?q=power+switch&pos=3&origPos=1&origPageSize=10&track=true

* Regulator lm1117 ADJ - https://se.rs-online.com/web/p/low-dropout-voltage-regulators/8472888/

* Current limiter - RT9742EGJ5 - https://www.digikey.se/product-detail/en/richtek-usa-inc/RT9742EGJ5/1028-1432-2-ND/5880515

* Diode (prevents currents going wrong way) - https://www.elfa.se/en/schottky-diode-1a-40v-do-214ac-sma-vishay-ss14-e3-61t/p/30048133

* Coax connector - https://www.elfa.se/en/micro-coaxial-straight-socket-micro-coaxial-connector-50ohm-6ghz-molex-73412-0110/p/30076410?queryFromSuggest=true

* Pin connectors to display and the GPS module - https://www.elfa.se/en/straight-male-pcb-header-through-hole-rows-10-contacts-54mm-pitch-rnd-connect-rnd-205-00631/p/30093651?q=&pos=1&origPos=1&origPageSize=10&track=true

* Pin connector to the battery - https://www.elfa.se/sv/kk-254-rak-hane-kretskortslist-genomgaende-hal-rader-kontakter-54mm-stiftavstand-molex-22-29-2021/p/30048774

* Pin female connector - https://www.elfa.se/en/straight-female-pcb-receptacle-through-hole-rows-10-contacts-54mm-pitch-rnd-connect-rnd-205-00650/p/30093670?queryFromSuggest=true

  

## Also needed for project

* Anti aliasing filters for sampling.

* Amplifiers to amplify eventually low signals to be measurable.

* ADC with at least 8 bits.

  

## TMP36FSZ

* Voltage range (100mV - 1750 mV)

* Temperature range -40 - 125 degrees
  
  
## Needed changes on pcb layout

* Add buttons on the MCU reset and also on the OLED reset, (alternatively connect them to the same reset button) 

## References

* https://github.com/mcci-catena/HW-Designs/blob/master/Boards/Catena-4610/234001131b_(Catena-4610-Schematic).pdf



