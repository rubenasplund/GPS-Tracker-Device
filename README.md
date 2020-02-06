# GPS Tracker Device

## Project
A GPS tracker device which tracks position and movement patterns on animlas or things. Then sends data through lora.

## Modules and sensors needed
* GPS module - Adafruit 746 - https://www.elfa.se/en/mtk3339-gps-breakout-adafruit-746/p/30091220?q=GPS&pos=2&origPos=5&origPageSize=10&track=true
* A display - SSD1306 SPI
* Temperature sensor - TMP36FSZ - https://www.elfa.se/en/temperature-sensor-ic-40-125-soic-analog-devices-tmp36fsz/p/30167232?queryFromSuggest=true

## Also needed for project
* Anti aliasing filters for sampling.
* Amplifiers to amplify eventually low signals to be measurable.
* ADC with at least 8 bits.

## Extra contributions
* Low power implementation of the system. 
