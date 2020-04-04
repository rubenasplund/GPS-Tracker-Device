EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5850 4400 5850 4100
Wire Wire Line
	5750 4400 5750 4100
Wire Wire Line
	5750 4100 5850 4100
Connection ~ 5850 4100
Wire Wire Line
	5850 4100 5850 3750
Connection ~ 5850 3750
Wire Wire Line
	5850 3750 5850 3400
$Comp
L Device:C C6
U 1 1 5E2BB6B6
P 6000 4100
F 0 "C6" V 6255 4100 50  0000 C CNN
F 1 "100nF" V 6164 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6038 3950 50  0001 C CNN
F 3 "~" H 6000 4100 50  0001 C CNN
	1    6000 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 5E2C3D1B
P 6000 3750
F 0 "C5" V 6255 3750 50  0000 C CNN
F 1 "100n" V 6164 3750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6038 3600 50  0001 C CNN
F 3 "~" H 6000 3750 50  0001 C CNN
	1    6000 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 5E2C45DE
P 6000 3400
F 0 "C4" V 6255 3400 50  0000 C CNN
F 1 "10uF" V 6164 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6038 3250 50  0001 C CNN
F 3 "~" H 6000 3400 50  0001 C CNN
	1    6000 3400
	0    -1   -1   0   
$EndComp
Connection ~ 5850 3400
Wire Wire Line
	6150 3400 6400 3400
Wire Wire Line
	6400 3400 6400 3750
Wire Wire Line
	6400 4100 6150 4100
Wire Wire Line
	6150 3750 6400 3750
Connection ~ 6400 3750
Wire Wire Line
	6400 3750 6400 4100
$Comp
L Device:C C3
U 1 1 5E2C9042
P 4750 3650
F 0 "C3" H 4868 3696 50  0000 L CNN
F 1 "100nF" H 4868 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4788 3500 50  0001 C CNN
F 3 "~" H 4750 3650 50  0001 C CNN
	1    4750 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E2CAED2
P 4250 3650
F 0 "C2" H 4368 3696 50  0000 L CNN
F 1 "100n" H 4368 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4288 3500 50  0001 C CNN
F 3 "~" H 4250 3650 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4400 5650 3500
Wire Wire Line
	5650 3500 4750 3500
Wire Wire Line
	4750 3500 4250 3500
Connection ~ 4750 3500
Wire Wire Line
	5950 4400 5950 4300
Wire Wire Line
	5850 2900 5850 3400
Wire Wire Line
	5950 4300 6700 4300
$Comp
L power:+3.3V #PWR0101
U 1 1 5E2DE666
P 6200 2900
F 0 "#PWR0101" H 6200 2750 50  0001 C CNN
F 1 "+3.3V" H 6215 3073 50  0000 C CNN
F 2 "" H 6200 2900 50  0001 C CNN
F 3 "" H 6200 2900 50  0001 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5E2DF063
P 4250 3500
F 0 "#PWR0102" H 4250 3350 50  0001 C CNN
F 1 "+3.3V" H 4265 3673 50  0000 C CNN
F 2 "" H 4250 3500 50  0001 C CNN
F 3 "" H 4250 3500 50  0001 C CNN
	1    4250 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2900 6200 2900
Connection ~ 6200 2900
Wire Wire Line
	6200 2900 6700 2900
Connection ~ 4250 3500
Wire Wire Line
	4250 3800 4500 3800
Wire Wire Line
	6700 4150 6700 2900
Wire Wire Line
	6700 4300 6700 4150
Connection ~ 6700 4150
$Comp
L Device:C C7
U 1 1 5E2CF272
P 6850 4150
F 0 "C7" V 7105 4150 50  0000 C CNN
F 1 "1uF" V 7014 4150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6888 4000 50  0001 C CNN
F 3 "~" H 6850 4150 50  0001 C CNN
	1    6850 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E2E2CE8
P 6450 3650
F 0 "#PWR0104" H 6450 3400 50  0001 C CNN
F 1 "GND" H 6455 3477 50  0000 C CNN
F 2 "" H 6450 3650 50  0001 C CNN
F 3 "" H 6450 3650 50  0001 C CNN
	1    6450 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E2E3222
P 4500 3800
F 0 "#PWR0105" H 4500 3550 50  0001 C CNN
F 1 "GND" H 4505 3627 50  0000 C CNN
F 2 "" H 4500 3800 50  0001 C CNN
F 3 "" H 4500 3800 50  0001 C CNN
	1    4500 3800
	1    0    0    -1  
$EndComp
Connection ~ 4500 3800
Wire Wire Line
	4500 3800 4750 3800
$Comp
L power:GND #PWR0107
U 1 1 5E2EBF9D
P 5850 7400
F 0 "#PWR0107" H 5850 7150 50  0001 C CNN
F 1 "GND" H 5855 7227 50  0000 C CNN
F 2 "" H 5850 7400 50  0001 C CNN
F 3 "" H 5850 7400 50  0001 C CNN
	1    5850 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E2ECE87
P 4650 7200
F 0 "R2" V 4443 7200 50  0000 C CNN
F 1 "10k" V 4534 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4580 7200 50  0001 C CNN
F 3 "~" H 4650 7200 50  0001 C CNN
	1    4650 7200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E2EE0CF
P 4500 7200
F 0 "#PWR0108" H 4500 6950 50  0001 C CNN
F 1 "GND" V 4505 7072 50  0000 R CNN
F 2 "" H 4500 7200 50  0001 C CNN
F 3 "" H 4500 7200 50  0001 C CNN
	1    4500 7200
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5E2FC0FF
P 4100 5650
F 0 "J1" H 4208 6031 50  0000 C CNN
F 1 "Conn_01x05_Male" H 4208 5940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4100 5650 50  0001 C CNN
F 3 "~" H 4100 5650 50  0001 C CNN
	1    4100 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5E302BBD
P 3900 5050
F 0 "#PWR0110" H 3900 4900 50  0001 C CNN
F 1 "+3.3V" H 3915 5223 50  0000 C CNN
F 2 "" H 3900 5050 50  0001 C CNN
F 3 "" H 3900 5050 50  0001 C CNN
	1    3900 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5050 3900 5100
Wire Wire Line
	4800 6100 4800 6050
Wire Wire Line
	4200 5300 4200 5450
$Comp
L power:GND #PWR0111
U 1 1 5E319BFF
P 4100 5000
F 0 "#PWR0111" H 4100 4750 50  0001 C CNN
F 1 "GND" H 4105 4827 50  0000 C CNN
F 2 "" H 4100 5000 50  0001 C CNN
F 3 "" H 4100 5000 50  0001 C CNN
	1    4100 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 6300 4650 6300
Wire Wire Line
	4650 6300 4650 5450
Wire Wire Line
	4650 5450 4300 5450
Connection ~ 4650 6300
Wire Wire Line
	4100 5450 4100 5100
$Comp
L Device:C C1
U 1 1 5E324AB8
P 4000 4700
F 0 "C1" V 4255 4700 50  0000 C CNN
F 1 "100nF" V 4164 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4038 4550 50  0001 C CNN
F 3 "~" H 4000 4700 50  0001 C CNN
	1    4000 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 4700 3750 4700
Wire Wire Line
	3750 4700 3750 5100
Wire Wire Line
	3750 5100 3900 5100
Connection ~ 3900 5100
Wire Wire Line
	3900 5100 3900 5450
Wire Wire Line
	4150 4700 4250 4700
Wire Wire Line
	4250 4700 4250 5100
Wire Wire Line
	4250 5100 4100 5100
Connection ~ 4100 5100
$Comp
L Device:C C11
U 1 1 5E348D4F
P 9900 1650
F 0 "C11" H 10015 1696 50  0000 L CNN
F 1 "100nF" H 10015 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9938 1500 50  0001 C CNN
F 3 "~" H 9900 1650 50  0001 C CNN
	1    9900 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C12
U 1 1 5E349B34
P 10350 1650
F 0 "C12" H 10465 1696 50  0000 L CNN
F 1 "10uF" H 10465 1605 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 10388 1500 50  0001 C CNN
F 3 "~" H 10350 1650 50  0001 C CNN
	1    10350 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5E349EA6
P 2650 1450
F 0 "C10" H 2765 1496 50  0000 L CNN
F 1 "100nF" H 2765 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2688 1300 50  0001 C CNN
F 3 "~" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C9
U 1 1 5E34AAD5
P 2200 1450
F 0 "C9" H 2086 1404 50  0000 R CNN
F 1 "10uF" H 2086 1495 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 2238 1300 50  0001 C CNN
F 3 "~" H 2200 1450 50  0001 C CNN
	1    2200 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5E34AECF
P 1750 1450
F 0 "C8" H 1636 1404 50  0000 R CNN
F 1 "100nF" H 1636 1495 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1788 1300 50  0001 C CNN
F 3 "~" H 1750 1450 50  0001 C CNN
	1    1750 1450
	1    0    0    1   
$EndComp
Wire Wire Line
	2650 1300 2200 1300
Connection ~ 2650 1300
Wire Wire Line
	2200 1300 1750 1300
Connection ~ 2200 1300
Wire Wire Line
	9900 1500 10350 1500
$Comp
L power:GND #PWR08
U 1 1 5E352767
P 9900 1800
F 0 "#PWR08" H 9900 1550 50  0001 C CNN
F 1 "GND" H 9905 1627 50  0000 C CNN
F 2 "" H 9900 1800 50  0001 C CNN
F 3 "" H 9900 1800 50  0001 C CNN
	1    9900 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E352E41
P 10350 1800
F 0 "#PWR010" H 10350 1550 50  0001 C CNN
F 1 "GND" H 10355 1627 50  0000 C CNN
F 2 "" H 10350 1800 50  0001 C CNN
F 3 "" H 10350 1800 50  0001 C CNN
	1    10350 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E3533CD
P 2650 1600
F 0 "#PWR06" H 2650 1350 50  0001 C CNN
F 1 "GND" H 2655 1427 50  0000 C CNN
F 2 "" H 2650 1600 50  0001 C CNN
F 3 "" H 2650 1600 50  0001 C CNN
	1    2650 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E353D82
P 2200 1650
F 0 "#PWR05" H 2200 1400 50  0001 C CNN
F 1 "GND" H 2205 1477 50  0000 C CNN
F 2 "" H 2200 1650 50  0001 C CNN
F 3 "" H 2200 1650 50  0001 C CNN
	1    2200 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E3541BC
P 1750 1600
F 0 "#PWR04" H 1750 1350 50  0001 C CNN
F 1 "GND" H 1755 1427 50  0000 C CNN
F 2 "" H 1750 1600 50  0001 C CNN
F 3 "" H 1750 1600 50  0001 C CNN
	1    1750 1600
	1    0    0    -1  
$EndComp
Connection ~ 1750 1300
$Comp
L power:GND #PWR02
U 1 1 5E35817F
P 900 1900
F 0 "#PWR02" H 900 1650 50  0001 C CNN
F 1 "GND" H 905 1727 50  0000 C CNN
F 2 "" H 900 1900 50  0001 C CNN
F 3 "" H 900 1900 50  0001 C CNN
	1    900  1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_OTG J3
U 1 1 5E383C06
P 900 1500
F 0 "J3" H 957 1967 50  0000 C CNN
F 1 "USB_OTG" H 957 1876 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 1050 1450 50  0001 C CNN
F 3 " ~" H 1050 1450 50  0001 C CNN
	1    900  1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5E298BD9
P 10350 1500
F 0 "#PWR09" H 10350 1350 50  0001 C CNN
F 1 "+3.3V" H 10365 1673 50  0000 C CNN
F 2 "" H 10350 1500 50  0001 C CNN
F 3 "" H 10350 1500 50  0001 C CNN
	1    10350 1500
	1    0    0    -1  
$EndComp
Connection ~ 10350 1500
NoConn ~ 6750 5100
NoConn ~ 6750 5200
NoConn ~ 6750 5300
NoConn ~ 6750 6100
NoConn ~ 6750 6200
NoConn ~ 6750 6300
NoConn ~ 6750 6700
NoConn ~ 6750 6800
NoConn ~ 6750 6900
NoConn ~ 6750 7000
NoConn ~ 4950 7000
NoConn ~ 4950 5800
NoConn ~ 4950 5000
Wire Wire Line
	6950 4150 7000 4150
$Comp
L power:GND #PWR0103
U 1 1 5E2F251D
P 6950 4150
F 0 "#PWR0103" H 6950 3900 50  0001 C CNN
F 1 "GND" V 6955 4022 50  0000 R CNN
F 2 "" H 6950 4150 50  0001 C CNN
F 3 "" H 6950 4150 50  0001 C CNN
	1    6950 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E2FADCB
P 800 1900
F 0 "#PWR0106" H 800 1650 50  0001 C CNN
F 1 "GND" H 805 1727 50  0000 C CNN
F 2 "" H 800 1900 50  0001 C CNN
F 3 "" H 800 1900 50  0001 C CNN
	1    800  1900
	1    0    0    -1  
$EndComp
NoConn ~ 1200 1500
NoConn ~ 1200 1600
NoConn ~ 1200 1700
Wire Wire Line
	2450 4400 2450 4000
Wire Wire Line
	2450 4000 2950 4000
$Comp
L power:+3.3V #PWR0112
U 1 1 5E417260
P 2450 4000
F 0 "#PWR0112" H 2450 3850 50  0001 C CNN
F 1 "+3.3V" H 2465 4173 50  0000 C CNN
F 2 "" H 2450 4000 50  0001 C CNN
F 3 "" H 2450 4000 50  0001 C CNN
	1    2450 4000
	1    0    0    -1  
$EndComp
Connection ~ 2450 4000
$Comp
L power:GND #PWR0114
U 1 1 5E418DC2
P 2950 4800
F 0 "#PWR0114" H 2950 4550 50  0001 C CNN
F 1 "GND" H 2955 4627 50  0000 C CNN
F 2 "" H 2950 4800 50  0001 C CNN
F 3 "" H 2950 4800 50  0001 C CNN
	1    2950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4400 3450 4250
$Comp
L Battery_Management:MCP73831-2-OT U5
U 1 1 5E47DD92
P 5600 1300
F 0 "U5" H 5600 1781 50  0000 C CNN
F 1 "MCP73831-2-OT" H 5600 1690 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5_HandSoldering" H 5650 1050 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 5450 1250 50  0001 C CNN
	1    5600 1300
	0    -1   1    0   
$EndComp
$Comp
L Power_Management:RT9701 U3
U 1 1 5E485EE5
P 3900 1400
F 0 "U3" H 3900 1767 50  0000 C CNN
F 1 "RT9701" H 3900 1676 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5_HandSoldering" H 3900 1400 50  0001 C CNN
F 3 "https://www.richtek.com/assets/product_file/RT9701/DS9701-16.pdf" H 3900 1400 50  0001 C CNN
	1    3900 1400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5E48D738
P 7850 4800
F 0 "SW1" H 7850 5085 50  0000 C CNN
F 1 "SW_Push" H 7850 4994 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 7850 5000 50  0001 C CNN
F 3 "~" H 7850 5000 50  0001 C CNN
	1    7850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5300 4850 5300
$Comp
L power:GND #PWR07
U 1 1 5E4AD5BE
P 3900 1600
F 0 "#PWR07" H 3900 1350 50  0001 C CNN
F 1 "GND" H 3905 1427 50  0000 C CNN
F 2 "" H 3900 1600 50  0001 C CNN
F 3 "" H 3900 1600 50  0001 C CNN
	1    3900 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E4B83C2
P 5000 1450
F 0 "R5" H 5070 1496 50  0000 L CNN
F 1 "1k" H 5070 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 1450 50  0001 C CNN
F 3 "~" H 5000 1450 50  0001 C CNN
	1    5000 1450
	1    0    0    -1  
$EndComp
Connection ~ 5000 1300
Wire Wire Line
	5000 1300 5300 1300
Wire Wire Line
	5000 1600 5000 2050
Wire Wire Line
	5000 2050 5700 2050
Wire Wire Line
	5700 2050 5700 1700
$Comp
L Device:R R6
U 1 1 5E4BB990
P 6200 800
F 0 "R6" V 5993 800 50  0000 C CNN
F 1 "10K" V 6084 800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 800 50  0001 C CNN
F 3 "~" H 6200 800 50  0001 C CNN
	1    6200 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E4BC7D3
P 6400 1000
F 0 "#PWR012" H 6400 750 50  0001 C CNN
F 1 "GND" H 6405 827 50  0000 C CNN
F 2 "" H 6400 1000 50  0001 C CNN
F 3 "" H 6400 1000 50  0001 C CNN
	1    6400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 900  5700 800 
$Comp
L Device:C C13
U 1 1 5E4CCEBB
P 6050 1450
F 0 "C13" H 5935 1404 50  0000 R CNN
F 1 "100n" H 5935 1495 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6088 1300 50  0001 C CNN
F 3 "~" H 6050 1450 50  0001 C CNN
	1    6050 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 1300 6050 1300
Wire Wire Line
	6050 1700 6050 1600
$Comp
L Connector:TestPoint TP1
U 1 1 5E4D6568
P 7300 1850
F 0 "TP1" H 7358 1968 50  0000 L CNN
F 1 "TestPoint" H 7358 1877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7500 1850 50  0001 C CNN
F 3 "~" H 7500 1850 50  0001 C CNN
	1    7300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1850 6550 1700
Wire Wire Line
	6550 1700 6050 1700
Wire Wire Line
	3400 1400 3400 1300
Connection ~ 3400 1300
Wire Wire Line
	4400 1400 4400 1300
Connection ~ 4400 1300
$Comp
L power:GND #PWR0115
U 1 1 5E4FA667
P 7350 2250
F 0 "#PWR0115" H 7350 2000 50  0001 C CNN
F 1 "GND" H 7355 2077 50  0000 C CNN
F 2 "" H 7350 2250 50  0001 C CNN
F 3 "" H 7350 2250 50  0001 C CNN
	1    7350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1950 7000 1950
$Comp
L Diode:B140-E3 D1
U 1 1 5E5030B6
P 7550 1600
F 0 "D1" H 7550 1384 50  0000 C CNN
F 1 "B140-E3" H 7550 1475 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 7550 1425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88946/b120.pdf" H 7550 1600 50  0001 C CNN
	1    7550 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 1850 7300 1850
$Comp
L Device:R R8
U 1 1 5E50EB93
P 7200 4800
F 0 "R8" V 6993 4800 50  0000 C CNN
F 1 "1k" V 7084 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 4800 50  0001 C CNN
F 3 "~" H 7200 4800 50  0001 C CNN
	1    7200 4800
	0    1    1    0   
$EndComp
$Comp
L Device:C C16
U 1 1 5E50F6A3
P 7650 4650
F 0 "C16" H 7765 4696 50  0000 L CNN
F 1 "10u" H 7765 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7688 4500 50  0001 C CNN
F 3 "~" H 7650 4650 50  0001 C CNN
	1    7650 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7650 4800 7350 4800
Connection ~ 7650 4800
$Comp
L power:+3.3V #PWR0116
U 1 1 5E513918
P 8200 4550
F 0 "#PWR0116" H 8200 4400 50  0001 C CNN
F 1 "+3.3V" H 8215 4723 50  0000 C CNN
F 2 "" H 8200 4550 50  0001 C CNN
F 3 "" H 8200 4550 50  0001 C CNN
	1    8200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4550 8200 4800
Wire Wire Line
	8200 4800 8050 4800
$Comp
L power:GND #PWR0117
U 1 1 5E517BDF
P 7650 4500
F 0 "#PWR0117" H 7650 4250 50  0001 C CNN
F 1 "GND" H 7655 4327 50  0000 C CNN
F 2 "" H 7650 4500 50  0001 C CNN
F 3 "" H 7650 4500 50  0001 C CNN
	1    7650 4500
	-1   0    0    1   
$EndComp
Connection ~ 7300 1850
Wire Wire Line
	4850 1300 4850 700 
Connection ~ 4850 1300
Wire Wire Line
	4850 1300 5000 1300
$Comp
L Connector:Conn_01x09_Male J4
U 1 1 5E534275
P 850 6250
F 0 "J4" H 958 6831 50  0000 C CNN
F 1 "Connection For GPS Module" H 958 6740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 850 6250 50  0001 C CNN
F 3 "~" H 850 6250 50  0001 C CNN
	1    850  6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0119
U 1 1 5E56C9B0
P 1200 6550
F 0 "#PWR0119" H 1200 6400 50  0001 C CNN
F 1 "+3.3V" H 1215 6723 50  0000 C CNN
F 2 "" H 1200 6550 50  0001 C CNN
F 3 "" H 1200 6550 50  0001 C CNN
	1    1200 6550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5E57243E
P 1200 6450
F 0 "#PWR0120" H 1200 6200 50  0001 C CNN
F 1 "GND" H 1205 6277 50  0000 C CNN
F 2 "" H 1200 6450 50  0001 C CNN
F 3 "" H 1200 6450 50  0001 C CNN
	1    1200 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C14
U 1 1 5E57BD10
P 1550 6500
F 0 "C14" V 1298 6500 50  0000 C CNN
F 1 "100n" V 1389 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1588 6350 50  0001 C CNN
F 3 "~" H 1550 6500 50  0001 C CNN
	1    1550 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 6450 1150 6450
Wire Wire Line
	1150 6450 1150 6350
Wire Wire Line
	1150 6350 1550 6350
Connection ~ 1150 6450
Wire Wire Line
	1150 6450 1200 6450
Wire Wire Line
	1050 6550 1150 6550
Wire Wire Line
	1150 6550 1150 6650
Wire Wire Line
	1150 6650 1550 6650
Connection ~ 1150 6550
Wire Wire Line
	1150 6550 1200 6550
$Comp
L Device:R R7
U 1 1 5E5CF002
P 1400 5950
F 0 "R7" V 1193 5950 50  0000 C CNN
F 1 "10k" V 1284 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1330 5950 50  0001 C CNN
F 3 "~" H 1400 5950 50  0001 C CNN
	1    1400 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 5950 1250 5950
$Comp
L power:+3.3V #PWR0121
U 1 1 5E5D8D4A
P 1650 5900
F 0 "#PWR0121" H 1650 5750 50  0001 C CNN
F 1 "+3.3V" H 1665 6073 50  0000 C CNN
F 2 "" H 1650 5900 50  0001 C CNN
F 3 "" H 1650 5900 50  0001 C CNN
	1    1650 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5950 1650 5950
Wire Wire Line
	1650 5950 1650 5900
Wire Wire Line
	1800 5700 1800 6250
Wire Wire Line
	1800 6250 1050 6250
Wire Wire Line
	4400 5600 4400 5950
Wire Wire Line
	4400 5950 1850 5950
Wire Wire Line
	1850 5950 1850 6300
Wire Wire Line
	1850 6300 1050 6300
Wire Wire Line
	1050 6300 1050 6350
$Comp
L Connector:Conn_01x07_Male J5
U 1 1 5E5FAEEF
P 10900 4000
F 0 "J5" H 10872 3932 50  0000 R CNN
F 1 "Connection for OLED Display" H 10872 4023 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 10900 4000 50  0001 C CNN
F 3 "~" H 10900 4000 50  0001 C CNN
	1    10900 4000
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 5E42AA96
P 10500 3500
F 0 "#PWR0122" H 10500 3350 50  0001 C CNN
F 1 "+3.3V" H 10515 3673 50  0000 C CNN
F 2 "" H 10500 3500 50  0001 C CNN
F 3 "" H 10500 3500 50  0001 C CNN
	1    10500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5E42D9E7
P 10650 3500
F 0 "#PWR0123" H 10650 3250 50  0001 C CNN
F 1 "GND" H 10655 3327 50  0000 C CNN
F 2 "" H 10650 3500 50  0001 C CNN
F 3 "" H 10650 3500 50  0001 C CNN
	1    10650 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	10700 3700 10700 3500
Wire Wire Line
	10700 3500 10650 3500
Wire Wire Line
	10700 3800 10500 3800
Wire Wire Line
	10500 3800 10500 3500
$Comp
L Device:C C17
U 1 1 5E439E05
P 10550 3150
F 0 "C17" V 10298 3150 50  0000 C CNN
F 1 "10u" V 10389 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10588 3000 50  0001 C CNN
F 3 "~" H 10550 3150 50  0001 C CNN
	1    10550 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 3500 10850 3500
Wire Wire Line
	10850 3500 10850 3150
Wire Wire Line
	10850 3150 10700 3150
Connection ~ 10700 3500
Wire Wire Line
	10500 3500 10350 3500
Wire Wire Line
	10350 3500 10350 3150
Wire Wire Line
	10350 3150 10400 3150
Wire Wire Line
	10700 3900 8450 3900
Wire Wire Line
	8450 3900 8450 5700
Wire Wire Line
	3450 4250 4850 4250
$Comp
L Sensor_Temperature:TMP36xS TempSensor1
U 1 1 5E413D3D
P 2950 4400
F 0 "TempSensor1" H 3494 4446 50  0000 L CNN
F 1 "TMP36xS" H 3494 4355 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2950 3950 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/TMP35_36_37.pdf" H 2950 4400 50  0001 C CNN
	1    2950 4400
	1    0    0    -1  
$EndComp
NoConn ~ 1050 5850
NoConn ~ 1050 6050
Wire Wire Line
	4950 5500 4900 5500
Wire Wire Line
	4350 5200 4350 4600
Wire Wire Line
	4350 4600 3600 4600
Wire Wire Line
	3600 4600 3600 6700
Wire Wire Line
	3600 6700 1050 6700
Wire Wire Line
	1050 6700 1050 6650
Wire Wire Line
	1950 5400 1950 6150
Wire Wire Line
	1950 6150 1050 6150
Wire Wire Line
	8600 5900 8600 4000
Wire Wire Line
	8600 4000 10700 4000
Wire Wire Line
	10700 5600 10700 4300
Wire Wire Line
	1550 1300 1750 1300
Connection ~ 1550 1300
$Comp
L power:+5V #PWR03
U 1 1 5E3877A5
P 1550 1300
F 0 "#PWR03" H 1550 1150 50  0001 C CNN
F 1 "+5V" H 1565 1473 50  0000 C CNN
F 2 "" H 1550 1300 50  0001 C CNN
F 3 "" H 1550 1300 50  0001 C CNN
	1    1550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1700 5500 1800
Wire Wire Line
	5500 1800 6050 1800
Wire Wire Line
	6050 1800 6050 1700
Connection ~ 6050 1700
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5E4D549B
P 6800 1950
F 0 "J2" H 6908 2131 50  0000 C CNN
F 1 "Conn_01x02_Male" H 6908 2040 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 6800 1950 50  0001 C CNN
F 3 "~" H 6800 1950 50  0001 C CNN
	1    6800 1950
	1    0    0    1   
$EndComp
Wire Wire Line
	7000 1850 7300 1850
Wire Wire Line
	5700 800  6050 800 
Wire Wire Line
	6050 1300 6050 900 
Wire Wire Line
	6050 900  6400 900 
Wire Wire Line
	6400 900  6400 800 
Wire Wire Line
	6400 800  6350 800 
Connection ~ 6050 1300
Wire Wire Line
	6400 900  6400 1000
Connection ~ 6400 900 
$Comp
L Connector:Conn_Coaxial J6
U 1 1 5E43A3D5
P 8350 7200
F 0 "J6" H 8450 7175 50  0000 L CNN
F 1 "Conn_Coaxial" H 8450 7084 50  0000 L CNN
F 2 "Connector_Coaxial:U.FL_Molex_MCRF_73412-0110_Vertical" H 8350 7200 50  0001 C CNN
F 3 " ~" H 8350 7200 50  0001 C CNN
	1    8350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 7400 8600 7400
Wire Wire Line
	8600 7400 8600 7050
$Comp
L power:GND #PWR0125
U 1 1 5E4B3102
P 6950 7500
F 0 "#PWR0125" H 6950 7250 50  0001 C CNN
F 1 "GND" H 6955 7327 50  0000 C CNN
F 2 "" H 6950 7500 50  0001 C CNN
F 3 "" H 6950 7500 50  0001 C CNN
	1    6950 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5E4B438E
P 6950 7350
F 0 "C18" H 7065 7396 50  0000 L CNN
F 1 "100n" H 7065 7305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6988 7200 50  0001 C CNN
F 3 "~" H 6950 7350 50  0001 C CNN
	1    6950 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5E479557
P 8600 7050
F 0 "#PWR0118" H 8600 6800 50  0001 C CNN
F 1 "GND" H 8605 6877 50  0000 C CNN
F 2 "" H 8600 7050 50  0001 C CNN
F 3 "" H 8600 7050 50  0001 C CNN
	1    8600 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 4800 7050 4800
Wire Wire Line
	6750 5900 8600 5900
Wire Wire Line
	6750 7200 6950 7200
$Comp
L Device:C C19
U 1 1 5E4D55DF
P 7350 7200
F 0 "C19" V 7098 7200 50  0000 C CNN
F 1 "100p" V 7189 7200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7388 7050 50  0001 C CNN
F 3 "~" H 7350 7200 50  0001 C CNN
	1    7350 7200
	0    1    1    0   
$EndComp
$Comp
L Device:C C20
U 1 1 5E4D61A2
P 7700 7350
F 0 "C20" H 7585 7304 50  0000 R CNN
F 1 "100n" H 7585 7395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7738 7200 50  0001 C CNN
F 3 "~" H 7700 7350 50  0001 C CNN
	1    7700 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 7500 6950 7500
Connection ~ 6950 7500
Wire Wire Line
	6950 7200 7200 7200
Connection ~ 6950 7200
Wire Wire Line
	7500 7200 7700 7200
Wire Wire Line
	7700 7200 8150 7200
Connection ~ 7700 7200
$Comp
L Regulator_Linear:SPX3819M5-L-3-3 U4
U 1 1 5E523974
P 8850 1600
F 0 "U4" H 8850 1942 50  0000 C CNN
F 1 "SPX3819M5-L-3-3" H 8850 1851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8850 1925 50  0001 C CNN
F 3 "https://www.exar.com/content/document.ashx?id=22106&languageid=1033&type=Datasheet&partnumber=SPX3819&filename=SPX3819.pdf&part=SPX3819" H 8850 1600 50  0001 C CNN
	1    8850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1600 8400 1600
Wire Wire Line
	8400 1600 8400 1500
Wire Wire Line
	9150 1500 9900 1500
Connection ~ 9900 1500
$Comp
L Device:C C21
U 1 1 5E548D0D
P 9250 1800
F 0 "C21" H 9365 1846 50  0000 L CNN
F 1 "C" H 9365 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9288 1650 50  0001 C CNN
F 3 "~" H 9250 1800 50  0001 C CNN
	1    9250 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5E5499DE
P 9250 1950
F 0 "#PWR0126" H 9250 1700 50  0001 C CNN
F 1 "GND" H 9255 1777 50  0000 C CNN
F 2 "" H 9250 1950 50  0001 C CNN
F 3 "" H 9250 1950 50  0001 C CNN
	1    9250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1600 9250 1600
Wire Wire Line
	9250 1600 9250 1650
$Comp
L power:GND #PWR0127
U 1 1 5E553CEE
P 8850 1900
F 0 "#PWR0127" H 8850 1650 50  0001 C CNN
F 1 "GND" H 8855 1727 50  0000 C CNN
F 2 "" H 8850 1900 50  0001 C CNN
F 3 "" H 8850 1900 50  0001 C CNN
	1    8850 1900
	1    0    0    -1  
$EndComp
NoConn ~ 6750 5800
Wire Wire Line
	10500 4100 10700 4100
Wire Wire Line
	6750 5500 7500 5500
Wire Wire Line
	7500 5500 7500 5550
Wire Wire Line
	10600 5550 10600 4200
Wire Wire Line
	10600 4200 10700 4200
Wire Wire Line
	8550 1500 8400 1500
$Comp
L Device:R R3
U 1 1 5E68D6B7
P 7150 5400
F 0 "R3" V 6943 5400 50  0000 C CNN
F 1 "1k" V 7034 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 5400 50  0001 C CNN
F 3 "~" H 7150 5400 50  0001 C CNN
	1    7150 5400
	0    1    1    0   
$EndComp
$Comp
L Device:C C22
U 1 1 5E68D6BD
P 7450 5250
F 0 "C22" H 7565 5296 50  0000 L CNN
F 1 "10u" H 7565 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7488 5100 50  0001 C CNN
F 3 "~" H 7450 5250 50  0001 C CNN
	1    7450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5400 7450 5400
$Comp
L power:+3.3V #PWR0109
U 1 1 5E68D6C5
P 8150 5150
F 0 "#PWR0109" H 8150 5000 50  0001 C CNN
F 1 "+3.3V" H 8165 5323 50  0000 C CNN
F 2 "" H 8150 5150 50  0001 C CNN
F 3 "" H 8150 5150 50  0001 C CNN
	1    8150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5150 8150 5400
Wire Wire Line
	8150 5400 8000 5400
$Comp
L power:GND #PWR0128
U 1 1 5E68D6CD
P 7450 5100
F 0 "#PWR0128" H 7450 4850 50  0001 C CNN
F 1 "GND" H 7455 4927 50  0000 C CNN
F 2 "" H 7450 5100 50  0001 C CNN
F 3 "" H 7450 5100 50  0001 C CNN
	1    7450 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 5400 7000 5400
Wire Wire Line
	4850 5100 4950 5100
Wire Wire Line
	4850 6000 4950 6000
Wire Wire Line
	4900 5200 4900 5500
Wire Wire Line
	4800 7200 4950 7200
Wire Wire Line
	4800 6100 4950 6100
Wire Wire Line
	1800 5700 4950 5700
Wire Wire Line
	4400 5600 4950 5600
Wire Wire Line
	1950 5400 4950 5400
Wire Wire Line
	4350 5200 4900 5200
Wire Wire Line
	4850 4250 4850 5100
Wire Wire Line
	4850 5300 4850 6000
$Comp
L RF_Module:CMWX1ZZABZ-078 U1
U 1 1 5E28D8E8
P 5850 5900
F 0 "U1" H 5850 4311 50  0000 C CNN
F 1 "CMWX1ZZABZ-078" H 6000 4150 50  0000 C CNN
F 2 "Lab_1_footprint_lib:CMWX1ZZABZ_longer_padz" H 5850 5900 50  0001 C CNN
F 3 "https://wireless.murata.com/RFM/data/type_abz.pdf" H 8300 4400 50  0001 C CNN
	1    5850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6300 4950 6300
NoConn ~ 8000 1400
$Comp
L Device:LED D2
U 1 1 5E4DA1DB
P 3550 3800
F 0 "D2" H 3543 3545 50  0000 C CNN
F 1 "LED" H 3543 3636 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3550 3800 50  0001 C CNN
F 3 "~" H 3550 3800 50  0001 C CNN
	1    3550 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5E4DD82B
P 3150 3700
F 0 "D3" H 3143 3445 50  0000 C CNN
F 1 "LED" H 3143 3536 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3150 3700 50  0001 C CNN
F 3 "~" H 3150 3700 50  0001 C CNN
	1    3150 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5E4E6A9C
P 3000 3700
F 0 "#PWR0129" H 3000 3450 50  0001 C CNN
F 1 "GND" H 3005 3527 50  0000 C CNN
F 2 "" H 3000 3700 50  0001 C CNN
F 3 "" H 3000 3700 50  0001 C CNN
	1    3000 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5E4F13AD
P 3400 3800
F 0 "#PWR0130" H 3400 3550 50  0001 C CNN
F 1 "GND" H 3405 3627 50  0000 C CNN
F 2 "" H 3400 3800 50  0001 C CNN
F 3 "" H 3400 3800 50  0001 C CNN
	1    3400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4800 6800 5000
Wire Wire Line
	6800 5000 6750 5000
Wire Wire Line
	6750 5600 10700 5600
$Comp
L Switch:SW_Push SW3
U 1 1 5E68D6B1
P 7800 5400
F 0 "SW3" H 7800 5685 50  0000 C CNN
F 1 "SW_Push" H 7800 5594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 7800 5600 50  0001 C CNN
F 3 "~" H 7800 5600 50  0001 C CNN
	1    7800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5550 10600 5550
Connection ~ 7450 5400
Wire Wire Line
	7450 5400 7300 5400
Wire Wire Line
	6750 5700 8450 5700
Connection ~ 8400 1500
$Comp
L Switch:SW_SPDT SW2
U 1 1 5E46CB70
P 8200 1500
F 0 "SW2" H 8200 1785 50  0000 C CNN
F 1 "SW_SPDT" H 8200 1694 50  0000 C CNN
F 2 "Lab_1_footprint_lib:Power_Switch_cuuul" H 8200 1500 50  0001 C CNN
F 3 "~" H 8200 1500 50  0001 C CNN
	1    8200 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 700  7800 700 
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E5DFA05
P 8400 1500
F 0 "#FLG0101" H 8400 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 8400 1673 50  0000 C CNN
F 2 "" H 8400 1500 50  0001 C CNN
F 3 "~" H 8400 1500 50  0001 C CNN
	1    8400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1600 7800 1600
Wire Wire Line
	2650 1300 3150 1300
Wire Wire Line
	4400 1300 4600 1300
$Comp
L Device:R R4
U 1 1 5E497BDF
P 3850 3800
F 0 "R4" V 3643 3800 50  0000 C CNN
F 1 "680" V 3734 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 3800 50  0001 C CNN
F 3 "~" H 3850 3800 50  0001 C CNN
	1    3850 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 3700 3300 3700
Connection ~ 4600 1300
Wire Wire Line
	4600 1300 4850 1300
Wire Wire Line
	4600 1350 4600 1300
$Comp
L power:GND #PWR0131
U 1 1 5E4721DB
P 4600 1650
F 0 "#PWR0131" H 4600 1400 50  0001 C CNN
F 1 "GND" H 4605 1477 50  0000 C CNN
F 2 "" H 4600 1650 50  0001 C CNN
F 3 "" H 4600 1650 50  0001 C CNN
	1    4600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5E4721D5
P 4600 1500
F 0 "C23" H 4715 1546 50  0000 L CNN
F 1 "100nF" H 4715 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4638 1350 50  0001 C CNN
F 3 "~" H 4600 1500 50  0001 C CNN
	1    4600 1500
	1    0    0    -1  
$EndComp
Connection ~ 10500 3500
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E5930A5
P 3150 1300
F 0 "#FLG0102" H 3150 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 3150 1473 50  0000 C CNN
F 2 "" H 3150 1300 50  0001 C CNN
F 3 "~" H 3150 1300 50  0001 C CNN
	1    3150 1300
	1    0    0    -1  
$EndComp
Connection ~ 3150 1300
Wire Wire Line
	3150 1300 3400 1300
Wire Wire Line
	6400 3750 6450 3750
Wire Wire Line
	6450 3750 6450 3650
Wire Wire Line
	4100 5000 4100 5100
Wire Wire Line
	2200 1600 2200 1650
Wire Wire Line
	1200 1300 1550 1300
$Comp
L Device:R R10
U 1 1 5E49851B
P 3850 3700
F 0 "R10" V 3643 3700 50  0000 C CNN
F 1 "680" V 3734 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 3700 50  0001 C CNN
F 3 "~" H 3850 3700 50  0001 C CNN
	1    3850 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E65CFA8
P 1400 1900
F 0 "#FLG0103" H 1400 1975 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 2073 50  0000 C CNN
F 2 "" H 1400 1900 50  0001 C CNN
F 3 "~" H 1400 1900 50  0001 C CNN
	1    1400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1900 900  1900
Connection ~ 900  1900
Wire Wire Line
	6550 1850 7000 1850
Connection ~ 7000 1850
Wire Wire Line
	7400 1600 7400 1850
Wire Wire Line
	7800 700  7800 1600
Connection ~ 7800 1600
Wire Wire Line
	7800 1600 8000 1600
Wire Wire Line
	7350 2250 7350 1950
$Comp
L Device:C C15
U 1 1 5E623E31
P 4550 6450
F 0 "C15" V 4298 6450 50  0000 C CNN
F 1 "100nF" V 4389 6450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 6300 50  0001 C CNN
F 3 "~" H 4550 6450 50  0001 C CNN
	1    4550 6450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5E63B051
P 4100 6600
F 0 "SW4" H 4100 6885 50  0000 C CNN
F 1 "SW_Push" H 4100 6794 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 4100 6800 50  0001 C CNN
F 3 "~" H 4100 6800 50  0001 C CNN
	1    4100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6600 3900 6600
Wire Wire Line
	3750 6650 3750 6600
$Comp
L power:GND #PWR0132
U 1 1 5E64474A
P 3750 6650
F 0 "#PWR0132" H 3750 6400 50  0001 C CNN
F 1 "GND" H 3755 6477 50  0000 C CNN
F 2 "" H 3750 6650 50  0001 C CNN
F 3 "" H 3750 6650 50  0001 C CNN
	1    3750 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6600 4550 6600
NoConn ~ 4950 6800
Wire Wire Line
	4950 6500 4950 6700
Wire Wire Line
	4000 6050 4800 6050
Wire Wire Line
	4000 5450 4000 6050
Wire Wire Line
	4950 5900 4800 5900
Wire Wire Line
	4800 5900 4800 4350
Wire Wire Line
	4800 4350 6050 4350
Wire Wire Line
	6050 4350 6050 4400
Wire Wire Line
	4000 3800 4100 3800
Wire Wire Line
	4100 3800 4100 4650
Wire Wire Line
	4100 4650 4300 4650
Wire Wire Line
	4300 4650 4300 5250
Wire Wire Line
	4300 5250 4950 5250
Wire Wire Line
	4950 5250 4950 5300
Wire Wire Line
	4950 5200 4950 5150
Wire Wire Line
	4950 5150 4400 5150
Wire Wire Line
	4400 5150 4400 3850
Wire Wire Line
	4400 3850 4150 3850
Wire Wire Line
	4150 3850 4150 3700
Wire Wire Line
	4150 3700 4000 3700
Text Label 4300 5450 0    50   ~ 0
Reset
Text Label 10500 4100 0    50   ~ 0
Reset
NoConn ~ 6750 6500
NoConn ~ 6750 6600
$EndSCHEMATC