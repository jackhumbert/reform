EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
Title "Reform 2 Audio"
Date "2020-02-07"
Rev "2.0D-3"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: GPL v3+"
Comment4 ""
$EndDescr
$Comp
L reform2:SJ-43516-SMT J7
U 1 1 5DC02AC6
P 8400 2850
F 0 "J7" H 8022 2737 50  0000 R CNN
F 1 "SJ-43516-SMT" H 8022 2828 50  0000 R CNN
F 2 "footprints:SJ-43516-SMT" H 8400 2850 50  0001 L BNN
F 3 "" H 8400 2850 50  0001 L BNN
F 4 "CUI" H 8400 2850 50  0001 C CNN "Manufacturer"
F 5 "SJ-43516-SMT-TR" H 8400 2850 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 8400 2850 50  0001 C CNN "Checked"
F 7 "Mouser" H 8400 2850 50  0001 C CNN "Distributor"
	1    8400 2850
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR088
U 1 1 5F0973D8
P 4350 1700
F 0 "#PWR088" H 4350 1550 50  0001 C CNN
F 1 "+3V3" H 4365 1873 50  0000 C CNN
F 2 "" H 4350 1700 50  0001 C CNN
F 3 "" H 4350 1700 50  0001 C CNN
	1    4350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1700 4350 1900
Wire Wire Line
	4350 1900 4650 1900
$Comp
L Device:C_Small C143
U 1 1 5F0981F2
P 4650 2000
F 0 "C143" H 4742 2046 50  0000 L CNN
F 1 "0.1uF" H 4742 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4650 2000 50  0001 C CNN
F 3 "~" H 4650 2000 50  0001 C CNN
F 4 "Yageo" H 4650 2000 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4650 2000 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4650 2000 50  0001 C CNN "Checked"
F 7 "Mouser" H 4650 2000 50  0001 C CNN "Distributor"
	1    4650 2000
	1    0    0    -1  
$EndComp
Connection ~ 4650 1900
Wire Wire Line
	4650 1900 5250 1900
Wire Wire Line
	5250 2150 4650 2150
Wire Wire Line
	4650 2150 4650 2100
Connection ~ 4650 2150
$Comp
L power:GND #PWR087
U 1 1 5F09C621
P 4300 2150
F 0 "#PWR087" H 4300 1900 50  0001 C CNN
F 1 "GND" H 4305 1977 50  0000 C CNN
F 2 "" H 4300 2150 50  0001 C CNN
F 3 "" H 4300 2150 50  0001 C CNN
	1    4300 2150
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C144
U 1 1 5F09CD07
P 4650 2250
F 0 "C144" H 4742 2296 50  0000 L CNN
F 1 "0.1uF" H 4742 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4650 2250 50  0001 C CNN
F 3 "~" H 4650 2250 50  0001 C CNN
F 4 "Yageo" H 4650 2250 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4650 2250 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4650 2250 50  0001 C CNN "Checked"
F 7 "Mouser" H 4650 2250 50  0001 C CNN "Distributor"
	1    4650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2400 4650 2400
Wire Wire Line
	4650 2400 4650 2350
Connection ~ 4650 2400
$Comp
L Device:C_Small C150
U 1 1 5F0A8C9F
P 7250 5100
F 0 "C150" H 7342 5146 50  0000 L CNN
F 1 "10uF" H 7342 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7250 5100 50  0001 C CNN
F 3 "~" H 7250 5100 50  0001 C CNN
F 4 "Murata" H 7250 5100 50  0001 C CNN "Manufacturer"
F 5 "GRM188R6YA106MA73D" H 7250 5100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7250 5100 50  0001 C CNN "Checked"
F 7 "Mouser" H 7250 5100 50  0001 C CNN "Distributor"
	1    7250 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C154
U 1 1 5F0A8CA9
P 7700 5100
F 0 "C154" H 7792 5146 50  0000 L CNN
F 1 "0.1uF" H 7792 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7700 5100 50  0001 C CNN
F 3 "~" H 7700 5100 50  0001 C CNN
F 4 "Yageo" H 7700 5100 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 7700 5100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7700 5100 50  0001 C CNN "Checked"
F 7 "Mouser" H 7700 5100 50  0001 C CNN "Distributor"
	1    7700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5250 7700 5200
Wire Wire Line
	7700 5250 7250 5250
Wire Wire Line
	7250 5250 7250 5200
Connection ~ 7700 5250
Wire Wire Line
	6450 5000 7250 5000
Wire Wire Line
	7250 5000 7700 5000
Connection ~ 7250 5000
$Comp
L power:GND #PWR093
U 1 1 5F0AA705
P 7700 5250
F 0 "#PWR093" H 7700 5000 50  0001 C CNN
F 1 "GND" H 7705 5077 50  0000 C CNN
F 2 "" H 7700 5250 50  0001 C CNN
F 3 "" H 7700 5250 50  0001 C CNN
	1    7700 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C151
U 1 1 5F0B76E4
P 4900 5400
F 0 "C151" H 4992 5446 50  0000 L CNN
F 1 "4.7uF" H 4992 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4900 5400 50  0001 C CNN
F 3 "~" H 4900 5400 50  0001 C CNN
F 4 "TDK" H 4900 5400 50  0001 C CNN "Manufacturer"
F 5 "C1608X5R1V475K080AC" H 4900 5400 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4900 5400 50  0001 C CNN "Checked"
F 7 "Mouser" H 4900 5400 50  0001 C CNN "Distributor"
	1    4900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5550 4900 5500
$Comp
L power:GND #PWR091
U 1 1 5F0B7700
P 4900 5600
F 0 "#PWR091" H 4900 5350 50  0001 C CNN
F 1 "GND" H 4905 5427 50  0000 C CNN
F 2 "" H 4900 5600 50  0001 C CNN
F 3 "" H 4900 5600 50  0001 C CNN
	1    4900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5600 4900 5550
Connection ~ 4900 5550
Wire Wire Line
	6700 3150 6450 3150
Wire Wire Line
	6900 3150 7150 3150
Wire Wire Line
	7100 2850 7450 2850
Wire Wire Line
	6900 2850 6450 2850
$Comp
L Device:R_Small R143
U 1 1 5F0DB197
P 7450 3000
F 0 "R143" H 7509 3046 50  0000 L CNN
F 1 "47k" H 7509 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7450 3000 50  0001 C CNN
F 3 "~" H 7450 3000 50  0001 C CNN
F 4 "Vishay Dale" H 7450 3000 50  0001 C CNN "Manufacturer"
F 5 "CRCW060347K0FKEAC" H 7450 3000 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 7450 3000 50  0001 C CNN "Distributor"
F 7 "y" H 7450 3000 50  0001 C CNN "Checked"
	1    7450 3000
	1    0    0    -1  
$EndComp
Connection ~ 7450 2850
Wire Wire Line
	7450 2850 8200 2850
$Comp
L Device:R_Small R142
U 1 1 5F0DB521
P 7150 3250
F 0 "R142" H 7209 3296 50  0000 L CNN
F 1 "47k" H 7209 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7150 3250 50  0001 C CNN
F 3 "~" H 7150 3250 50  0001 C CNN
F 4 "Vishay Dale" H 7150 3250 50  0001 C CNN "Manufacturer"
F 5 "CRCW060347K0FKEAC" H 7150 3250 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 7150 3250 50  0001 C CNN "Distributor"
F 7 "y" H 7150 3250 50  0001 C CNN "Checked"
	1    7150 3250
	1    0    0    -1  
$EndComp
Connection ~ 7150 3150
Wire Wire Line
	7150 3150 8200 3150
$Comp
L power:GND #PWR097
U 1 1 5F0DB8EF
P 8100 3350
F 0 "#PWR097" H 8100 3100 50  0001 C CNN
F 1 "GND" H 8105 3177 50  0000 C CNN
F 2 "" H 8100 3350 50  0001 C CNN
F 3 "" H 8100 3350 50  0001 C CNN
	1    8100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3350 7750 3350
Connection ~ 7450 3350
Wire Wire Line
	7450 3350 7150 3350
Wire Wire Line
	6550 2650 6450 2650
$Comp
L Device:R_Small R145
U 1 1 5F0FC2FD
P 7750 3000
F 0 "R145" H 7809 3046 50  0000 L CNN
F 1 "0" H 7809 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 3000 50  0001 C CNN
F 3 "~" H 7750 3000 50  0001 C CNN
F 4 "Vishay Dale" H 7750 3000 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 7750 3000 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 7750 3000 50  0001 C CNN "Distributor"
F 7 "y" H 7750 3000 50  0001 C CNN "Checked"
	1    7750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2900 7750 2750
Wire Wire Line
	7750 2750 8200 2750
Wire Wire Line
	7750 3100 7750 3350
Connection ~ 7750 3350
Wire Wire Line
	7750 3350 7450 3350
Text GLabel 2100 3650 0    50   BiDi ~ 0
DAC_SDA
Text GLabel 2100 3550 0    50   Input ~ 0
DAC_SCL
Text GLabel 3850 2850 0    50   Input ~ 0
DAC_TXFS
Text GLabel 3850 2750 0    50   Input ~ 0
DAC_DOUT
Text GLabel 3850 2950 0    50   Output ~ 0
DAC_DIN
Text GLabel 3850 3150 0    50   Input ~ 0
DAC_BCLK
Text GLabel 3850 3050 0    50   Input ~ 0
DAC_RXFS
Text GLabel 4750 3250 0    50   Input ~ 0
DAC_MCLK
Wire Wire Line
	7450 3100 7450 3350
Wire Wire Line
	7450 2900 7450 2850
$Comp
L Device:R_Small R138
U 1 1 5F25ADF7
P 5000 3250
F 0 "R138" V 4900 3250 50  0000 C CNN
F 1 "33" V 5000 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5000 3250 50  0001 C CNN
F 3 "~" H 5000 3250 50  0001 C CNN
F 4 "Vishay Dale" H 5000 3250 50  0001 C CNN "Manufacturer"
F 5 "CRCW060333R0FKEAC" H 5000 3250 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 5000 3250 50  0001 C CNN "Distributor"
F 7 "y" H 5000 3250 50  0001 C CNN "Checked"
	1    5000 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3250 5100 3250
Wire Wire Line
	4750 3250 4900 3250
$Comp
L Device:R_Small R135
U 1 1 5DA87421
P 2750 3300
F 0 "R135" H 2809 3346 50  0000 L CNN
F 1 "4.7k" H 2809 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2750 3300 50  0001 C CNN
F 3 "~" H 2750 3300 50  0001 C CNN
F 4 "Yageo" H 2750 3300 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 2750 3300 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2750 3300 50  0001 C CNN "Checked"
F 7 "Mouser" H 2750 3300 50  0001 C CNN "Distributor"
	1    2750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3400 2750 3550
Connection ~ 2750 3550
Wire Wire Line
	2750 3550 5250 3550
$Comp
L power:+3V3 #PWR083
U 1 1 5DA8B5AF
P 2750 3200
F 0 "#PWR083" H 2750 3050 50  0001 C CNN
F 1 "+3V3" H 2765 3373 50  0000 C CNN
F 2 "" H 2750 3200 50  0001 C CNN
F 3 "" H 2750 3200 50  0001 C CNN
	1    2750 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R136
U 1 1 5DA8B9C3
P 3050 3400
F 0 "R136" H 3109 3446 50  0000 L CNN
F 1 "4.7k" H 3109 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3050 3400 50  0001 C CNN
F 3 "~" H 3050 3400 50  0001 C CNN
F 4 "Yageo" H 3050 3400 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 3050 3400 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 3050 3400 50  0001 C CNN "Checked"
F 7 "Mouser" H 3050 3400 50  0001 C CNN "Distributor"
	1    3050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3500 3050 3650
$Comp
L power:+3V3 #PWR084
U 1 1 5DA8B9CE
P 3050 3300
F 0 "#PWR084" H 3050 3150 50  0001 C CNN
F 1 "+3V3" H 3065 3473 50  0000 C CNN
F 2 "" H 3050 3300 50  0001 C CNN
F 3 "" H 3050 3300 50  0001 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
Connection ~ 3050 3650
Wire Wire Line
	3050 3650 5250 3650
$Comp
L Device:C_Small C147
U 1 1 5F2211CD
P 7000 2850
F 0 "C147" V 7050 2700 50  0000 C CNN
F 1 "47uF" V 7100 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7000 2850 50  0001 C CNN
F 3 "~" H 7000 2850 50  0001 C CNN
F 4 "Murata" H 7000 2850 50  0001 C CNN "Manufacturer"
F 5 "GRM188R60J476ME15D" H 7000 2850 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7000 2850 50  0001 C CNN "Checked"
F 7 "Mouser" H 7000 2850 50  0001 C CNN "Distributor"
	1    7000 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C127
U 1 1 5F2217E7
P 6800 3150
F 0 "C127" V 6850 3000 50  0000 C CNN
F 1 "47uF" V 6900 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6800 3150 50  0001 C CNN
F 3 "~" H 6800 3150 50  0001 C CNN
F 4 "Murata" H 6800 3150 50  0001 C CNN "Manufacturer"
F 5 "GRM188R60J476ME15D" H 6800 3150 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6800 3150 50  0001 C CNN "Checked"
F 7 "Mouser" H 6800 3150 50  0001 C CNN "Distributor"
	1    6800 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R114
U 1 1 6187A8E2
P 3950 3150
F 0 "R114" V 3850 3150 50  0000 C CNN
F 1 "33" V 3950 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3950 3150 50  0001 C CNN
F 3 "~" H 3950 3150 50  0001 C CNN
F 4 "Vishay Dale" H 3950 3150 50  0001 C CNN "Manufacturer"
F 5 "CRCW060333R0FKEAC" H 3950 3150 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 3950 3150 50  0001 C CNN "Distributor"
F 7 "y" H 3950 3150 50  0001 C CNN "Checked"
	1    3950 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 3150 5250 3150
$Comp
L Device:R_Small R139
U 1 1 6187EFD7
P 4150 3050
F 0 "R139" V 4050 3050 50  0000 C CNN
F 1 "33" V 4150 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4150 3050 50  0001 C CNN
F 3 "~" H 4150 3050 50  0001 C CNN
F 4 "Vishay Dale" H 4150 3050 50  0001 C CNN "Manufacturer"
F 5 "CRCW060333R0FKEAC" H 4150 3050 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4150 3050 50  0001 C CNN "Distributor"
F 7 "y" H 4150 3050 50  0001 C CNN "Checked"
	1    4150 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 3050 3850 3050
Wire Wire Line
	4250 3050 5250 3050
$Comp
L Device:R_Small R150
U 1 1 6188C0BD
P 4350 2950
F 0 "R150" V 4250 2950 50  0000 C CNN
F 1 "33" V 4350 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4350 2950 50  0001 C CNN
F 3 "~" H 4350 2950 50  0001 C CNN
F 4 "Vishay Dale" H 4350 2950 50  0001 C CNN "Manufacturer"
F 5 "CRCW060333R0FKEAC" H 4350 2950 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4350 2950 50  0001 C CNN "Distributor"
F 7 "y" H 4350 2950 50  0001 C CNN "Checked"
	1    4350 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R151
U 1 1 6188C251
P 4550 2850
F 0 "R151" V 4450 2850 50  0000 C CNN
F 1 "33" V 4550 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4550 2850 50  0001 C CNN
F 3 "~" H 4550 2850 50  0001 C CNN
F 4 "Vishay Dale" H 4550 2850 50  0001 C CNN "Manufacturer"
F 5 "CRCW060333R0FKEAC" H 4550 2850 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4550 2850 50  0001 C CNN "Distributor"
F 7 "y" H 4550 2850 50  0001 C CNN "Checked"
	1    4550 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R121
U 1 1 6188C4A7
P 4150 2750
F 0 "R121" V 4250 2750 50  0000 C CNN
F 1 "33" V 4150 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4150 2750 50  0001 C CNN
F 3 "~" H 4150 2750 50  0001 C CNN
F 4 "Vishay Dale" H 4150 2750 50  0001 C CNN "Manufacturer"
F 5 "CRCW060333R0FKEAC" H 4150 2750 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4150 2750 50  0001 C CNN "Distributor"
F 7 "y" H 4150 2750 50  0001 C CNN "Checked"
	1    4150 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2750 5250 2750
Wire Wire Line
	4650 2850 5250 2850
Wire Wire Line
	4450 2950 5250 2950
Wire Wire Line
	4250 2950 3850 2950
Wire Wire Line
	3850 2850 4450 2850
Wire Wire Line
	4050 2750 3850 2750
$Comp
L Device:R_Small R66
U 1 1 618CAF93
P 2300 3550
F 0 "R66" V 2400 3550 50  0000 C CNN
F 1 "220" V 2300 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2300 3550 50  0001 C CNN
F 3 "~" H 2300 3550 50  0001 C CNN
F 4 "Yageo" H 2300 3550 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-07220RL" H 2300 3550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2300 3550 50  0001 C CNN "Checked"
F 7 "Mouser" H 2300 3550 50  0001 C CNN "Distributor"
	1    2300 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R112
U 1 1 618CB2D9
P 2300 3650
F 0 "R112" V 2200 3650 50  0000 C CNN
F 1 "220" V 2300 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2300 3650 50  0001 C CNN
F 3 "~" H 2300 3650 50  0001 C CNN
F 4 "Yageo" H 2300 3650 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-07220RL" H 2300 3650 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2300 3650 50  0001 C CNN "Checked"
F 7 "Mouser" H 2300 3650 50  0001 C CNN "Distributor"
	1    2300 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 3550 2750 3550
Wire Wire Line
	2400 3650 3050 3650
Wire Wire Line
	2200 3650 2100 3650
Wire Wire Line
	2100 3550 2200 3550
$Comp
L Connector:Conn_01x03_Male J16
U 1 1 61932C31
P 6250 1150
F 0 "J16" H 6350 1500 50  0000 C CNN
F 1 "LINE_IN" H 6350 1400 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x03_P2.00mm_Vertical" H 6250 1150 50  0001 C CNN
F 3 "~" H 6250 1150 50  0001 C CNN
	1    6250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1150 6450 1150
Wire Wire Line
	6800 1250 6450 1250
$Comp
L power:GND #PWR041
U 1 1 6193F11B
P 6750 1050
F 0 "#PWR041" H 6750 800 50  0001 C CNN
F 1 "GND" V 6755 922 50  0000 R CNN
F 2 "" H 6750 1050 50  0001 C CNN
F 3 "" H 6750 1050 50  0001 C CNN
	1    6750 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 1050 6450 1050
NoConn ~ 8200 3050
Text Notes 8850 2700 0    50   ~ 0
CTIA standard TRRS
$Comp
L power:+3V3 #PWR0222
U 1 1 645B5EF6
P 4500 2400
F 0 "#PWR0222" H 4500 2250 50  0001 C CNN
F 1 "+3V3" H 4515 2573 50  0000 C CNN
F 2 "" H 4500 2400 50  0001 C CNN
F 3 "" H 4500 2400 50  0001 C CNN
	1    4500 2400
	0    -1   -1   0   
$EndComp
$Bitmap
Pos 10600 6850
Scale 1.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 01 2C 00 00 00 70 08 06 00 00 00 A4 46 4D 
4D 00 00 00 04 73 42 49 54 08 08 08 08 7C 08 64 88 00 00 06 2D 49 44 41 54 78 9C ED DD BB 8B 1D 
65 1C 87 F1 67 77 45 B1 08 82 26 F1 D2 6A 5A FF 00 0B B5 16 4C 36 12 5D 2F 9D 69 BC 04 0D 5E 62 
A3 A4 B1 D0 CE 4B C4 24 42 2A 05 03 21 85 FA 07 68 B4 8A 60 67 21 12 6D 04 0D 1A 90 04 4C 97 B5 
98 19 CE 64 F7 9C 39 B7 77 DE DF 7B F6 3C 1F 38 EC 16 CB EC 97 2D 1E 66 66 77 CF 80 24 49 92 24 
49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 52 42 8F 00 7B A2 47 
B4 1C 8A 1E D0 F2 10 70 5F F4 08 49 03 C7 81 B3 94 13 AD 3F 80 67 A2 47 D4 8E 02 DF 60 B4 A4 62 
1C 07 36 29 27 5A D7 81 7F 28 23 5A 47 A9 7E 36 5F 63 B4 A4 22 34 C1 2A 25 5A D7 EB 2D 25 44 AB 
09 96 D1 92 0A D1 0E 56 09 D1 6A 82 55 42 B4 DA C1 32 5A 52 01 B6 06 AB 89 D6 EE A0 3D ED 60 45 
47 6B 6B B0 8C 96 14 6C 58 B0 22 A3 B5 35 58 91 D1 1A 16 2C A3 25 05 1A 15 AC A8 68 0D 0B 56 54 
B4 46 05 AB 89 D6 BD 99 F7 48 4B AF 2B 58 11 D1 1A 15 AC 88 68 75 05 6B 13 F8 0A A3 25 65 35 2E 
58 B9 A3 D5 15 AC 4D E0 6F F2 45 6B 5C B0 8C 96 94 D9 24 C1 DA 04 BE 24 4F B4 C6 05 2B 67 B4 26 
09 96 D1 92 32 9A 34 58 B9 A2 35 49 B0 9A 68 3D DD F3 96 49 83 65 B4 34 97 5B A2 07 EC 50 1B F5 
C7 23 54 F7 93 22 ED 06 3E 66 70 C9 1A ED 71 AA 2D 2F 00 7F F6 F4 3D 1E 05 6E ED E9 D8 7D B8 54 
BF 34 86 C1 EA 4F 69 D1 3A 51 7F 5E 42 B4 F6 D7 1F FB 8A D6 67 C4 FF 27 C2 34 DE AB 5F 1A C3 60 
F5 CB 68 8D D6 67 B4 76 01 77 24 3E 66 9F 6E 8B 1E B0 28 56 A3 07 2C 81 0D AA 50 44 FD 45 7C 5B 
13 AD 8D 71 5F 98 C9 7E E0 24 DE D3 D2 84 0C 56 1E 1B 54 F7 91 EE 8A 1E C2 E0 9E 96 D1 D2 C2 31 
58 F9 94 14 AD 3D 18 2D 2D 20 83 95 CF 0A D5 9F 17 18 AD E1 8C 96 C6 32 58 79 95 1A AD A7 A2 87 
D4 8C 96 3A 19 AC FC 4A 8C D6 09 8C 96 16 80 C1 8A 61 B4 BA ED 07 3E 05 EE 89 1E A2 B2 18 AC 38 
46 AB DB 01 E0 14 46 4B 2D 06 2B 96 D1 EA D6 5C 1E 1A 2D 01 06 AB 04 4D B4 3E C2 68 0D 73 80 EA 
F2 F0 EE E8 21 8A 67 B0 CA B0 42 F5 36 30 46 6B B8 75 AA 33 2D A3 B5 E4 0C 56 39 8C 56 37 A3 25 
83 55 98 52 A3 F5 64 F4 90 9A D1 5A 72 06 AB 3C A5 46 EB 50 F4 90 DA 3A DE D3 5A 5A 06 AB 4C A5 
45 6B 2F F0 09 E5 44 EB 20 46 6B 29 F9 7E 58 E5 6A A2 05 F0 0A 70 25 70 0B 0C A2 05 70 2E 72 48 
ED 60 FD F1 45 E0 72 0F C7 FF 17 F8 BC 87 E3 0E 73 31 D3 F7 D1 12 99 E6 3D DD 53 BE 6E 00 5F 00 
77 6E D9 33 E9 7B BA A7 7E 5D 66 FB 99 D6 34 EF E9 9E FA 75 9E ED 67 5A 7F 25 38 EE 2F A8 38 5E 
12 96 AF 7D 79 B8 35 5A 11 BC 3C 54 18 83 B5 18 56 80 67 81 0F 31 5A C3 18 AD 25 E1 3D AC C5 B1 
02 3C 57 7F FE 6A E4 90 5A FB 9E 56 09 DA F7 B4 B4 43 19 AC C5 D2 8E 56 09 67 C7 4D B4 7E 8C 1E 
52 6B A2 E5 43 1D 76 28 83 B5 78 DA D1 2A C1 5E E0 B1 E8 11 2D 07 A9 6E 9A 6B 07 32 58 8B 69 25 
7A C0 16 EE 51 16 25 5C 56 48 D2 44 0C 96 A4 85 61 B0 24 2D 0C 83 25 69 61 18 AC FC 4A FA 0D 56 
49 5B A0 BC 3D 2A 8C C1 CA EF 2C F0 5F F4 88 DA EF C0 B7 D1 23 5A CE 01 57 A3 47 A8 5C 06 2B BF 
33 C0 DB 94 11 AD 2B C0 61 CA 89 D6 59 E0 4D 8C 96 46 30 58 F9 DD A0 FA 9F C0 52 A2 F5 1B E5 44 
6B 13 38 8D D1 D2 08 06 2B 86 D1 EA 66 B4 34 94 C1 8A 63 B4 BA 19 2D 6D 63 B0 62 19 AD 6E 46 4B 
37 31 58 F1 8C 56 B7 D3 C0 31 8C 96 30 58 A5 30 5A DD 8C 96 00 83 55 92 52 A3 F5 5D F4 10 06 BF 
3D 3C 06 5C 0B DE A2 40 06 AB 2C 4D B4 DE A1 9C 68 3D 8F D1 52 21 0C 56 79 6E 00 1F 60 B4 86 D9 
04 4E 61 B4 96 96 C1 2A 93 D1 1A AD 89 D6 5B 18 AD A5 63 B0 CA 55 62 B4 0E 03 17 A2 87 50 45 EB 
24 46 6B E9 18 AC B2 95 16 AD 4B 54 67 5A 46 4B 21 7C 4F F7 C9 9D 07 7E 4D 70 9C 9F A7 FC FA 26 
5A 00 EF 02 B7 27 D8 30 8F 26 5A 67 80 87 83 B7 34 D1 02 78 1F D8 15 B8 45 52 CB 2A F0 1A D5 99 
56 AA C7 BC 5F 9C 63 CF FD 54 F7 B4 52 3E 76 FE 89 19 B7 AC 50 3D 8F F0 6A C2 2D 3E AA 5E 9A D3 
2A F0 3A E9 A2 35 4F B0 20 7D B4 66 0D 16 A4 8F 96 C1 92 12 58 05 DE 20 4D B4 E6 0D 16 C0 03 A4 
8B D6 3C C1 82 B4 D1 32 58 52 22 A9 A2 95 22 58 90 2E 5A F3 06 0B D2 45 CB 60 49 09 A5 88 56 AA 
60 41 9A 68 A5 08 16 A4 89 96 C1 92 12 9B 37 5A 29 83 05 55 B4 2E CC B8 25 65 B0 60 FE 68 19 2C 
A9 07 F3 44 2B 75 B0 60 BE 68 A5 0C 16 0C A2 75 6D 86 2D 06 4B EA C9 AC D1 EA 23 58 30 7B B4 52 
07 0B 66 8F 96 C1 92 7A 34 4B B4 FA 0A 16 CC 16 AD 3E 82 05 55 B4 5E 62 BA 68 19 2C A9 67 6B 4C 
17 AD 3E 83 05 D3 47 AB AF 60 C1 F4 D1 32 58 52 06 D3 44 AB EF 60 C1 74 D1 EA 33 58 50 45 EB 65 
26 8B 96 C1 92 32 99 34 5A 39 82 05 93 47 AB EF 60 C1 E4 D1 32 58 52 46 6B 54 4F 9C E9 8A 56 AE 
60 C1 64 D1 CA 11 2C 98 2C 5A 06 4B CA 6C 5C B4 72 06 0B AA 68 7D 3F 62 4B CE 60 C1 F8 68 19 2C 
29 40 57 B4 72 07 0B 60 1F A3 A3 95 33 58 D0 1D 2D 83 25 05 19 15 AD 88 60 C1 E8 68 E5 0E 16 8C 
8E 96 C1 92 02 0D 8B 56 54 B0 A0 8A D6 0F C4 07 0B 86 47 CB 60 49 C1 D6 A8 9E 38 73 9D F8 60 C1 
F6 68 45 05 0B AA 68 1D 61 10 2D 83 25 15 A0 1D AD E8 60 C1 CD D1 8A 0C 16 DC 1C 2D 83 25 15 A2 
89 56 09 0F 93 80 41 B4 A2 83 05 83 68 FD 14 3D 44 D2 C0 1A B0 1E 3D A2 65 1F F0 60 F4 88 DA 0A 
65 C4 53 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 52 41 
FE 07 39 BD 85 89 55 AA C4 B1 00 00 00 00 49 45 4E 44 AE 42 60 82 
EndData
$EndBitmap
$Comp
L reform2:WM8960 U3
U 1 1 68222E02
P 5850 3250
F 0 "U3" H 5850 4865 50  0000 C CNN
F 1 "WM8960" H 5850 4774 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm_ThermalVias" H 5800 5000 50  0001 C CNN
F 3 "" H 5800 5000 50  0001 C CNN
F 4 "y" H 5850 3250 50  0001 C CNN "Checked"
F 5 "Mouser" H 5850 3250 50  0001 C CNN "Distributor"
F 6 "Cirrus Logic" H 5850 3250 50  0001 C CNN "Manufacturer"
F 7 "WM8960CGEFL/V" H 5850 3250 50  0001 C CNN "Manufacturer_No"
	1    5850 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R140
U 1 1 5F0E8F60
P 6650 2650
F 0 "R140" V 6750 2650 50  0000 C CNN
F 1 "680" V 6550 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6650 2650 50  0001 C CNN
F 3 "~" H 6650 2650 50  0001 C CNN
F 4 "Yageo" H 6650 2650 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-07680RL" H 6650 2650 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 6650 2650 50  0001 C CNN "Distributor"
F 7 "y" H 6650 2650 50  0001 C CNN "Checked"
	1    6650 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 2650 7750 2650
Wire Wire Line
	6450 3650 7650 3650
Wire Wire Line
	7650 3650 7650 3950
Wire Wire Line
	7650 3950 7900 3950
Wire Wire Line
	6450 3900 7550 3900
Wire Wire Line
	7550 3900 7550 4050
Wire Wire Line
	7550 4050 7900 4050
Wire Wire Line
	6450 4150 7900 4150
Wire Wire Line
	6450 4400 7550 4400
Wire Wire Line
	7550 4400 7550 4250
Wire Wire Line
	7550 4250 7900 4250
$Comp
L Device:C_Small C139
U 1 1 682D9067
P 4900 4700
F 0 "C139" H 4992 4746 50  0000 L CNN
F 1 "4.7uF" H 4992 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4900 4700 50  0001 C CNN
F 3 "~" H 4900 4700 50  0001 C CNN
F 4 "TDK" H 4900 4700 50  0001 C CNN "Manufacturer"
F 5 "C1608X5R1V475K080AC" H 4900 4700 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4900 4700 50  0001 C CNN "Checked"
F 7 "Mouser" H 4900 4700 50  0001 C CNN "Distributor"
	1    4900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4850 4900 4800
$Comp
L power:GND #PWR0233
U 1 1 682D9085
P 4900 4900
F 0 "#PWR0233" H 4900 4650 50  0001 C CNN
F 1 "GND" H 4905 4727 50  0000 C CNN
F 2 "" H 4900 4900 50  0001 C CNN
F 3 "" H 4900 4900 50  0001 C CNN
	1    4900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4900 4900 4850
Connection ~ 4900 4850
Wire Wire Line
	4300 2150 4650 2150
Wire Wire Line
	4500 2400 4650 2400
Wire Wire Line
	4900 4200 4900 4150
$Comp
L power:GND #PWR086
U 1 1 5F0B29EB
P 4900 4200
F 0 "#PWR086" H 4900 3950 50  0001 C CNN
F 1 "GND" H 4905 4027 50  0000 C CNN
F 2 "" H 4900 4200 50  0001 C CNN
F 3 "" H 4900 4200 50  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
Connection ~ 4900 4150
Wire Wire Line
	4900 4150 4900 4100
Wire Wire Line
	5250 4150 4900 4150
Wire Wire Line
	4900 3900 5250 3900
Connection ~ 4900 3900
$Comp
L Device:C_Small C142
U 1 1 5F0AF334
P 4900 4000
F 0 "C142" H 4992 4046 50  0000 L CNN
F 1 "0.1uF" H 4992 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4900 4000 50  0001 C CNN
F 3 "~" H 4900 4000 50  0001 C CNN
F 4 "Yageo" H 4900 4000 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4900 4000 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4900 4000 50  0001 C CNN "Checked"
F 7 "Mouser" H 4900 4000 50  0001 C CNN "Distributor"
	1    4900 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR085
U 1 1 5F0AF31D
P 4900 3900
F 0 "#PWR085" H 4900 3750 50  0001 C CNN
F 1 "+3V3" H 4915 4073 50  0000 C CNN
F 2 "" H 4900 3900 50  0001 C CNN
F 3 "" H 4900 3900 50  0001 C CNN
	1    4900 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C141
U 1 1 6830926E
P 7300 2100
F 0 "C141" H 7392 2146 50  0000 L CNN
F 1 "1uF" H 7392 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7300 2100 50  0001 C CNN
F 3 "~" H 7300 2100 50  0001 C CNN
F 4 "Taiyo Yuden" H 7300 2100 50  0001 C CNN "Manufacturer"
F 5 "UMK107AB7105KA-T" H 7300 2100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7300 2100 50  0001 C CNN "Checked"
F 7 "Mouser" H 7300 2100 50  0001 C CNN "Distributor"
	1    7300 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 2100 7200 2100
Wire Wire Line
	7400 2100 7750 2100
Wire Wire Line
	7750 2100 7750 2650
Connection ~ 7750 2650
Wire Wire Line
	7750 2650 8200 2650
Text Notes 8150 1950 0    50   ~ 0
Jack Detect
Wire Wire Line
	4900 4600 5250 4600
Wire Wire Line
	4900 5300 5250 5300
Wire Wire Line
	4900 5550 5250 5550
Wire Wire Line
	4900 4850 5250 4850
$Comp
L Connector_Generic:Conn_01x04 J21
U 1 1 6829185C
P 8100 4150
F 0 "J21" H 8018 3725 50  0000 C CNN
F 1 "Conn_01x04" H 8018 3816 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 8100 4150 50  0001 C CNN
F 3 "~" H 8100 4150 50  0001 C CNN
F 4 "y" H 8100 4150 50  0001 C CNN "Checked"
F 5 "Digikey" H 8100 4150 50  0001 C CNN "Distributor"
F 6 "JST" H 8100 4150 50  0001 C CNN "Manufacturer"
F 7 "B4B-PH-K-S(LF)(SN)" H 8100 4150 50  0001 C CNN "Manufacturer_No"
	1    8100 4150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0179
U 1 1 6880B9B0
P 6550 5600
F 0 "#PWR0179" H 6550 5350 50  0001 C CNN
F 1 "GND" H 6555 5427 50  0000 C CNN
F 2 "" H 6550 5600 50  0001 C CNN
F 3 "" H 6550 5600 50  0001 C CNN
	1    6550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5600 6550 5550
Wire Wire Line
	6550 5550 6450 5550
Text Notes 3100 2400 0    50   ~ 0
TODO: DCVDD could be 1.8v
Wire Wire Line
	6900 2300 6900 1150
Wire Wire Line
	6900 2300 6450 2300
Wire Wire Line
	6450 2000 6800 2000
Wire Wire Line
	6800 1250 6800 2000
Wire Wire Line
	8200 2950 8050 2950
Wire Wire Line
	8050 2950 8050 1900
$Comp
L Device:R_Small R141
U 1 1 698B0028
P 7900 1900
F 0 "R141" H 7959 1946 50  0000 L CNN
F 1 "0" H 7959 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7900 1900 50  0001 C CNN
F 3 "~" H 7900 1900 50  0001 C CNN
F 4 "Vishay Dale" H 7900 1900 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 7900 1900 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 7900 1900 50  0001 C CNN "Distributor"
F 7 "y" H 7900 1900 50  0001 C CNN "Checked"
	1    7900 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 1900 6450 1900
$Comp
L Device:R_Small R144
U 1 1 698B3AE8
P 8050 1650
F 0 "R144" H 8109 1696 50  0000 L CNN
F 1 "47k" H 8109 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8050 1650 50  0001 C CNN
F 3 "~" H 8050 1650 50  0001 C CNN
F 4 "Mouser" H 8050 1650 50  0001 C CNN "Distributor"
F 5 "y" H 8050 1650 50  0001 C CNN "Checked"
F 6 "Vishay Dale" H 8050 1650 50  0001 C CNN "Manufacturer"
F 7 "CRCW060347K0FKEAC" H 8050 1650 50  0001 C CNN "Manufacturer_No"
	1    8050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1900 8050 1900
Wire Wire Line
	8050 1900 8050 1750
Connection ~ 8050 1900
$Comp
L power:+3V3 #PWR0244
U 1 1 698BB6A5
P 8050 1500
F 0 "#PWR0244" H 8050 1350 50  0001 C CNN
F 1 "+3V3" H 8065 1673 50  0000 C CNN
F 2 "" H 8050 1500 50  0001 C CNN
F 3 "" H 8050 1500 50  0001 C CNN
	1    8050 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1500 8050 1550
Text Notes 8300 4200 0    50   ~ 0
Speakers: PUI AS01808AO-3-R\n8 Ohm 1 W
$Comp
L Device:R_Small R187
U 1 1 6A0D7F61
P 4200 4350
F 0 "R187" H 4259 4396 50  0000 L CNN
F 1 "0" H 4259 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 4350 50  0001 C CNN
F 3 "~" H 4200 4350 50  0001 C CNN
F 4 "Mouser" H 4200 4350 50  0001 C CNN "Distributor"
F 5 "y" H 4200 4350 50  0001 C CNN "Checked"
F 6 "Vishay Dale" H 4200 4350 50  0001 C CNN "Manufacturer"
F 7 "CRCW06030000Z0EAC" H 4200 4350 50  0001 C CNN "Manufacturer_No"
	1    4200 4350
	1    0    0    -1  
$EndComp
Connection ~ 4900 4600
$Comp
L power:+5V #PWR0231
U 1 1 6A0D0144
P 3850 4250
F 0 "#PWR0231" H 3850 4100 50  0001 C CNN
F 1 "+5V" V 3865 4378 50  0000 L CNN
F 2 "" H 3850 4250 50  0001 C CNN
F 3 "" H 3850 4250 50  0001 C CNN
	1    3850 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0245
U 1 1 6A0E83E9
P 4200 4250
F 0 "#PWR0245" H 4200 4100 50  0001 C CNN
F 1 "+3V3" V 4200 4500 50  0000 C CNN
F 2 "" H 4200 4250 50  0001 C CNN
F 3 "" H 4200 4250 50  0001 C CNN
	1    4200 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R152
U 1 1 6A0EF612
P 3850 4350
F 0 "R152" H 3909 4396 50  0000 L CNN
F 1 "0" H 3909 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3850 4350 50  0001 C CNN
F 3 "~" H 3850 4350 50  0001 C CNN
F 4 "Mouser" H 3850 4350 50  0001 C CNN "Distributor"
F 5 "y" H 3850 4350 50  0001 C CNN "Checked"
F 6 "Vishay Dale" H 3850 4350 50  0001 C CNN "Manufacturer"
F 7 "CRCW06030000Z0EAC" H 3850 4350 50  0001 C CNN "Manufacturer_No"
	1    3850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4600 4600 4600
Wire Wire Line
	4200 4600 4200 4450
Wire Wire Line
	3850 4450 3850 4600
Wire Wire Line
	3850 4600 4200 4600
Connection ~ 4200 4600
Wire Wire Line
	4200 4600 4200 5300
Wire Wire Line
	4200 5300 4900 5300
Connection ~ 4900 5300
Text Notes 3800 4450 1    50   ~ 0
NOSTUFF!
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6A3C71B7
P 4600 4600
F 0 "#FLG0101" H 4600 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 4773 50  0000 C CNN
F 2 "" H 4600 4600 50  0001 C CNN
F 3 "~" H 4600 4600 50  0001 C CNN
	1    4600 4600
	1    0    0    -1  
$EndComp
Connection ~ 4600 4600
Wire Wire Line
	4600 4600 4200 4600
NoConn ~ 6450 2200
NoConn ~ 6450 2400
$EndSCHEMATC
