# GPS Tracker Device

## Project
A GPS tracker device which tracks position and movement patterns on animlas or things. Then sends data through lora.

## Components
* GPS module - Adafruit 746 - https://www.elfa.se/en/mtk3339-gps-breakout-adafruit-746/p/30091220?q=GPS&pos=2&origPos=5&origPageSize=10&track=true
* A display - SSD1306 SPI
* Temperature sensor - TMP36FSZ - https://www.elfa.se/en/temperature-sensor-ic-40-125-soic-analog-devices-tmp36fsz/p/30167232?queryFromSuggest=true
* LED SMD 0805 - https://www.elfa.se/en/smd-led-640nm-0805-150mcd-20ma-kingbright-kp-2012surc/p/17531013?queryFromSuggest=true
* ADC MCP3002-I/SN - A/D-omvandlare 10 bit - https://www.elfa.se/sv/omvandlare-10-bit-soic-microchip-mcp3002-sn/p/30055987?channel=b2c&price_gs=22.375&wt_mc=se.cse.gshop.sv.-&source=googleps&ext_cid=shgooaqsesv-blcss&kw=%7Bkeyword%7D&/?ext_cid=shgooaqsesv-P-CSS-Shopping-MainCampaign-Semiconductors&gclid=EAIaIQobChMI6Yjqncy_5wIVQ6MYCh0x1QsrEAQYASABEgJBs_D_BwE
* Battery (chargable) -ICP501022UPM - https://www.elfa.se/sv/litiumjonpolymerbatteripack-340mah-7v-renata-icp422339pr/p/30158712?q=&pos=1&origPos=1&origPageSize=10&track=true
* Charging circuit (for battery)- MCP73831T-2ACI/OT https://www.elfa.se/sv/laddkrets-75-sot-23-microchip-mcp73831t-2aci-ot/p/17386933?track=true&no-cache=true
* Button - https://www.elfa.se/en/tactile-switch-b3fs-1no-47n-6mm-omron-electronic-components-b3fs-1012p/p/30156578?q=smd+button&pos=3&origPos=43&origPageSize=100&track=true
* Power switch - https://www.elfa.se/en/low-power-slide-switch-1co-on-on-pcb-smd-rnd-components-rnd-210-00603/p/30152627?q=power+switch&pos=3&origPos=1&origPageSize=10&track=true
* Regulator lm1117 ADJ

## Also needed for project
* Anti aliasing filters for sampling.
* Amplifiers to amplify eventually low signals to be measurable.
* ADC with at least 8 bits.

## Extra contributions
* Low power implementation of the system. 

## TMP36FSZ
* Voltage range (100mV - 1750 mV)
* Temperature range -40 - 125 degrees
