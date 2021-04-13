EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 12
Title "Reform 2 LPC"
Date "2021-01-26"
Rev "2.0R-2D"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
$Comp
L Device:Crystal_GND24_Small Y?
U 1 1 618841FF
P 7450 5250
AR Path="/618841FF" Ref="Y?"  Part="1" 
AR Path="/5D06A2FD/618841FF" Ref="Y?"  Part="1" 
AR Path="/5CC81028/618841FF" Ref="Y?"  Part="1" 
AR Path="/5CC81028/616517A7/618841FF" Ref="Y2"  Part="1" 
F 0 "Y2" H 7350 5500 50  0000 C CNN
F 1 "12MHz" H 7600 5500 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM8G-4Pin_3.2x2.5mm" H 7450 5250 50  0001 C CNN
F 3 "https://www.mouser.de/datasheet/2/3/ABM8AIG-783590.pdf" H 7450 5250 50  0001 C CNN
F 4 "Abracon" H 7450 5250 50  0001 C CNN "Manufacturer"
F 5 "ABM8AIG-12.000MHz-2-T" H 7450 5250 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7450 5250 50  0001 C CNN "Checked"
F 7 "Mouser" H 7450 5250 50  0001 C CNN "Distributor"
	1    7450 5250
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C?
U 1 1 61884209
P 7750 5350
AR Path="/61884209" Ref="C?"  Part="1" 
AR Path="/5D06A2FD/61884209" Ref="C?"  Part="1" 
AR Path="/5CC81028/61884209" Ref="C?"  Part="1" 
AR Path="/5CC81028/616517A7/61884209" Ref="C51"  Part="1" 
F 0 "C51" H 7800 5400 50  0000 L CNN
F 1 "18pF" H 7800 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7750 5350 50  0001 C CNN
F 3 "" H 7750 5350 50  0001 C CNN
F 4 "Yageo" H 7750 5350 50  0001 C CNN "Manufacturer"
F 5 "CC0603JRNPO9BN180" H 7750 5350 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7750 5350 50  0001 C CNN "Checked"
F 7 "Mouser" H 7750 5350 50  0001 C CNN "Distributor"
	1    7750 5350
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR?
U 1 1 6188420F
P 7750 5450
AR Path="/6188420F" Ref="#PWR?"  Part="1" 
AR Path="/5D06A2FD/6188420F" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/6188420F" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/6188420F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 5200 50  0001 C CNN
F 1 "GND" H 7750 5300 50  0000 C CNN
F 2 "" H 7750 5450 50  0001 C CNN
F 3 "" H 7750 5450 50  0001 C CNN
	1    7750 5450
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C?
U 1 1 61884219
P 7150 5350
AR Path="/61884219" Ref="C?"  Part="1" 
AR Path="/5D06A2FD/61884219" Ref="C?"  Part="1" 
AR Path="/5CC81028/61884219" Ref="C?"  Part="1" 
AR Path="/5CC81028/616517A7/61884219" Ref="C48"  Part="1" 
F 0 "C48" H 7200 5400 50  0000 L CNN
F 1 "18pF" H 7200 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7150 5350 50  0001 C CNN
F 3 "" H 7150 5350 50  0001 C CNN
F 4 "Yageo" H 7150 5350 50  0001 C CNN "Manufacturer"
F 5 "CC0603JRNPO9BN180" H 7150 5350 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7150 5350 50  0001 C CNN "Checked"
F 7 "Mouser" H 7150 5350 50  0001 C CNN "Distributor"
	1    7150 5350
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR?
U 1 1 6188421F
P 7150 5450
AR Path="/6188421F" Ref="#PWR?"  Part="1" 
AR Path="/5D06A2FD/6188421F" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/6188421F" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/6188421F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 5200 50  0001 C CNN
F 1 "GND" H 7150 5300 50  0000 C CNN
F 2 "" H 7150 5450 50  0001 C CNN
F 3 "" H 7150 5450 50  0001 C CNN
	1    7150 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5250 7750 5250
Wire Wire Line
	7150 5250 7350 5250
$Comp
L Switch:SW_Push SW?
U 1 1 6188422B
P 4600 2600
AR Path="/5CC81028/6188422B" Ref="SW?"  Part="1" 
AR Path="/5CC81028/616517A7/6188422B" Ref="SW2"  Part="1" 
F 0 "SW2" H 4600 2885 50  0000 C CNN
F 1 "SW_Push" H 4600 2794 50  0000 C CNN
F 2 "footprints:UK-B0206-G3.8-250-JZ" H 4600 2800 50  0001 C CNN
F 3 "~" H 4600 2800 50  0001 C CNN
F 4 "USAKRO" H 4600 2600 50  0001 C CNN "Manufacturer"
F 5 "UK-B0206-G3.8-250-JZ" H 4600 2600 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4600 2600 50  0001 C CNN "Checked"
F 7 "Mouser" H 4600 2600 50  0001 C CNN "Distributor"
	1    4600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61884231
P 3750 2650
AR Path="/5CC81028/61884231" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/61884231" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3750 2400 50  0001 C CNN
F 1 "GND" H 3755 2477 50  0000 C CNN
F 2 "" H 3750 2650 50  0001 C CNN
F 3 "" H 3750 2650 50  0001 C CNN
	1    3750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2650 3750 2600
Wire Wire Line
	3750 2600 4400 2600
Text GLabel 8800 3100 2    50   Output ~ 0
BMON_SCK
Text GLabel 8800 3300 2    50   Output ~ 0
BMON_SDI
Text GLabel 8800 3200 2    50   Input ~ 0
BMON_SDO
Text GLabel 8800 3400 2    50   Output ~ 0
BMON_CS
$Comp
L reform2-motherboard-rescue:USB_B_Micro-Connector J?
U 1 1 6188424B
P 8450 4400
AR Path="/5CC81028/6188424B" Ref="J?"  Part="1" 
AR Path="/5CC81028/616517A7/6188424B" Ref="J8"  Part="1" 
F 0 "J8" H 8220 4389 50  0000 R CNN
F 1 "USB_B_Micro" H 8220 4298 50  0000 R CNN
F 2 "footprints:WE_629105136821" H 8600 4350 50  0001 C CNN
F 3 "~" H 8600 4350 50  0001 C CNN
F 4 "Wurth" H 8450 4400 50  0001 C CNN "Manufacturer"
F 5 "629105136821" H 8450 4400 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 8450 4400 50  0001 C CNN "Checked"
F 7 "Mouser" H 8450 4400 50  0001 C CNN "Distributor"
	1    8450 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8100 4200 8150 4200
$Comp
L power:GND #PWR?
U 1 1 61884252
P 8450 4850
AR Path="/5CC81028/61884252" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/61884252" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 4600 50  0001 C CNN
F 1 "GND" H 8455 4677 50  0000 C CNN
F 2 "" H 8450 4850 50  0001 C CNN
F 3 "" H 8450 4850 50  0001 C CNN
	1    8450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4800 8550 4800
Wire Wire Line
	8450 4800 8450 4850
Connection ~ 8450 4800
Wire Wire Line
	7150 5250 7150 4900
Wire Wire Line
	7150 4900 7100 4900
Connection ~ 7150 5250
Wire Wire Line
	7100 4800 7750 4800
Wire Wire Line
	7750 4800 7750 5250
Connection ~ 7750 5250
$Comp
L power:GND #PWR?
U 1 1 61884261
P 6300 5450
AR Path="/5CC81028/61884261" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/61884261" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6300 5200 50  0001 C CNN
F 1 "GND" H 6305 5277 50  0000 C CNN
F 2 "" H 6300 5450 50  0001 C CNN
F 3 "" H 6300 5450 50  0001 C CNN
	1    6300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5450 6300 5300
Wire Wire Line
	6300 5300 6400 5300
$Comp
L Device:R_Small R?
U 1 1 6188426E
P 7550 4400
AR Path="/5CC81028/6188426E" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/6188426E" Ref="R70"  Part="1" 
F 0 "R70" V 7354 4400 50  0000 C CNN
F 1 "33" V 7445 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7550 4400 50  0001 C CNN
F 3 "~" H 7550 4400 50  0001 C CNN
F 4 "Vishay Dale" H 7550 4400 50  0001 C CNN "Manufacturer"
F 5 "CRCW060333R0FKEAC" H 7550 4400 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 7550 4400 50  0001 C CNN "Distributor"
F 7 "y" H 7550 4400 50  0001 C CNN "Checked"
	1    7550 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61884278
P 7800 4500
AR Path="/5CC81028/61884278" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/61884278" Ref="R72"  Part="1" 
F 0 "R72" V 7900 4400 50  0000 C CNN
F 1 "33" V 7900 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7800 4500 50  0001 C CNN
F 3 "~" H 7800 4500 50  0001 C CNN
F 4 "Vishay Dale" H 7800 4500 50  0001 C CNN "Manufacturer"
F 5 "CRCW060333R0FKEAC" H 7800 4500 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 7800 4500 50  0001 C CNN "Distributor"
F 7 "y" H 7800 4500 50  0001 C CNN "Checked"
	1    7800 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 4500 8150 4500
Wire Wire Line
	7450 4400 7100 4400
Wire Wire Line
	7100 4500 7700 4500
Wire Wire Line
	6400 2300 6400 2200
Wire Wire Line
	6400 2200 6300 2200
Connection ~ 6300 2200
Wire Wire Line
	6300 2200 6300 2300
Wire Wire Line
	4800 2600 5700 2600
Text Label 5200 2600 0    50   ~ 0
LPC_~RESET
Text Label 5200 3100 0    50   ~ 0
LPC_SDA
Wire Wire Line
	5700 3100 5200 3100
$Comp
L Device:C_Small C?
U 1 1 6188428D
P 6600 1950
AR Path="/5CC81028/6188428D" Ref="C?"  Part="1" 
AR Path="/5CC81028/616517A7/6188428D" Ref="C46"  Part="1" 
F 0 "C46" H 6692 1996 50  0000 L CNN
F 1 "10uF" H 6692 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 1950 50  0001 C CNN
F 3 "~" H 6600 1950 50  0001 C CNN
F 4 "Murata" H 6600 1950 50  0001 C CNN "Manufacturer"
F 5 "GRM188R6YA106MA73D" H 6600 1950 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6600 1950 50  0001 C CNN "Checked"
F 7 "Mouser" H 6600 1950 50  0001 C CNN "Distributor"
	1    6600 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61884297
P 7000 1950
AR Path="/5CC81028/61884297" Ref="C?"  Part="1" 
AR Path="/5CC81028/616517A7/61884297" Ref="C47"  Part="1" 
F 0 "C47" H 7092 1996 50  0000 L CNN
F 1 "10uF" H 7092 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7000 1950 50  0001 C CNN
F 3 "~" H 7000 1950 50  0001 C CNN
F 4 "Murata" H 7000 1950 50  0001 C CNN "Manufacturer"
F 5 "GRM188R6YA106MA73D" H 7000 1950 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7000 1950 50  0001 C CNN "Checked"
F 7 "Mouser" H 7000 1950 50  0001 C CNN "Distributor"
	1    7000 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 618842A1
P 7400 1950
AR Path="/5CC81028/618842A1" Ref="C?"  Part="1" 
AR Path="/5CC81028/616517A7/618842A1" Ref="C49"  Part="1" 
F 0 "C49" H 7492 1996 50  0000 L CNN
F 1 "0.1uF" H 7492 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7400 1950 50  0001 C CNN
F 3 "~" H 7400 1950 50  0001 C CNN
F 4 "Yageo" H 7400 1950 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 7400 1950 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7400 1950 50  0001 C CNN "Checked"
F 7 "Mouser" H 7400 1950 50  0001 C CNN "Distributor"
	1    7400 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 618842AB
P 7800 1950
AR Path="/5CC81028/618842AB" Ref="C?"  Part="1" 
AR Path="/5CC81028/616517A7/618842AB" Ref="C50"  Part="1" 
F 0 "C50" H 7892 1996 50  0000 L CNN
F 1 "0.1uF" H 7892 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7800 1950 50  0001 C CNN
F 3 "~" H 7800 1950 50  0001 C CNN
F 4 "Yageo" H 7800 1950 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 7800 1950 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7800 1950 50  0001 C CNN "Checked"
F 7 "Mouser" H 7800 1950 50  0001 C CNN "Distributor"
	1    7800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1850 7800 1850
Connection ~ 7800 1850
Wire Wire Line
	7400 1850 7000 1850
Connection ~ 7400 1850
Wire Wire Line
	7000 1850 6600 1850
Connection ~ 7000 1850
Wire Wire Line
	6600 1850 6300 1850
Wire Wire Line
	6300 1850 6300 2200
Connection ~ 6600 1850
$Comp
L power:GND #PWR?
U 1 1 618842BA
P 7800 2150
AR Path="/5CC81028/618842BA" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/618842BA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7800 1900 50  0001 C CNN
F 1 "GND" H 7805 1977 50  0000 C CNN
F 2 "" H 7800 2150 50  0001 C CNN
F 3 "" H 7800 2150 50  0001 C CNN
	1    7800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2150 7800 2100
Wire Wire Line
	7800 2100 7400 2100
Wire Wire Line
	7400 2100 7400 2050
Connection ~ 7800 2100
Wire Wire Line
	7800 2100 7800 2050
Wire Wire Line
	7400 2100 7000 2100
Wire Wire Line
	7000 2100 7000 2050
Connection ~ 7400 2100
Wire Wire Line
	7000 2100 6600 2100
Wire Wire Line
	6600 2100 6600 2050
Connection ~ 7000 2100
Text Label 5200 3000 0    50   ~ 0
LPC_SCL
Wire Wire Line
	5200 3000 5700 3000
Text Label 5200 2900 0    50   ~ 0
LPC_UVBUS
Wire Wire Line
	7200 3000 7100 3000
Wire Wire Line
	5700 2900 5200 2900
Text Label 5200 4300 0    50   ~ 0
LPC_SCLKa
Text Label 7200 2800 0    50   ~ 0
LPC_SCK1a
Text Label 7200 3300 0    50   ~ 0
LPC_MOSI1b
Text Label 7200 2700 0    50   ~ 0
LPC_RXDb
Text Label 7200 2600 0    50   ~ 0
LPC_TXDb
Wire Wire Line
	7200 2800 7100 2800
Text Label 7200 3400 0    50   ~ 0
LPC_SSEL1
Text Label 7200 3500 0    50   ~ 0
LPC_PIO1_24
Text Label 5200 4700 0    50   ~ 0
LPC_MOSI1a
Text Label 7200 3100 0    50   ~ 0
LPC_SCK1b
Text Label 7200 3200 0    50   ~ 0
LPC_MISO1b
$Comp
L Device:R_Small R?
U 1 1 618842DF
P 8250 3100
AR Path="/5CC81028/618842DF" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/618842DF" Ref="R73"  Part="1" 
F 0 "R73" V 8200 3250 50  0000 C CNN
F 1 "0" V 8250 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8250 3100 50  0001 C CNN
F 3 "~" H 8250 3100 50  0001 C CNN
F 4 "Vishay Dale" H 8250 3100 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 8250 3100 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 8250 3100 50  0001 C CNN "Distributor"
F 7 "y" H 8250 3100 50  0001 C CNN "Checked"
	1    8250 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 618842E9
P 8250 3200
AR Path="/5CC81028/618842E9" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/618842E9" Ref="R74"  Part="1" 
F 0 "R74" V 8300 3350 50  0000 C CNN
F 1 "0" V 8250 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8250 3200 50  0001 C CNN
F 3 "~" H 8250 3200 50  0001 C CNN
F 4 "Vishay Dale" H 8250 3200 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 8250 3200 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 8250 3200 50  0001 C CNN "Distributor"
F 7 "y" H 8250 3200 50  0001 C CNN "Checked"
	1    8250 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 618842F3
P 8250 3300
AR Path="/5CC81028/618842F3" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/618842F3" Ref="R75"  Part="1" 
F 0 "R75" V 8300 3450 50  0000 C CNN
F 1 "0" V 8250 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8250 3300 50  0001 C CNN
F 3 "~" H 8250 3300 50  0001 C CNN
F 4 "Vishay Dale" H 8250 3300 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 8250 3300 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 8250 3300 50  0001 C CNN "Distributor"
F 7 "y" H 8250 3300 50  0001 C CNN "Checked"
	1    8250 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 618842FD
P 8250 3400
AR Path="/5CC81028/618842FD" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/618842FD" Ref="R76"  Part="1" 
F 0 "R76" V 8300 3550 50  0000 C CNN
F 1 "0" V 8250 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8250 3400 50  0001 C CNN
F 3 "~" H 8250 3400 50  0001 C CNN
F 4 "Vishay Dale" H 8250 3400 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 8250 3400 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 8250 3400 50  0001 C CNN "Distributor"
F 7 "y" H 8250 3400 50  0001 C CNN "Checked"
	1    8250 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 3100 8800 3100
Wire Wire Line
	8350 3200 8550 3200
Wire Wire Line
	8350 3400 8800 3400
Wire Wire Line
	7100 3400 8150 3400
Wire Wire Line
	7100 3300 8150 3300
Wire Wire Line
	7100 3200 8150 3200
Wire Wire Line
	7100 3100 8150 3100
Text Label 5200 3700 0    50   ~ 0
LPC_TDI
Text Label 5200 3800 0    50   ~ 0
LPC_TMS
Text Label 5200 3900 0    50   ~ 0
LPC_TDO
Text Label 5200 4000 0    50   ~ 0
LPC_~TRST
Text Label 5200 3600 0    50   ~ 0
LPC_SCK0a
Text Label 4250 4150 0    50   ~ 0
LPC_MISO1a
Text Label 5200 4900 0    50   ~ 0
LPC_AD7
Text Label 5200 4200 0    50   ~ 0
LPC_AD5
Text Label 5200 4100 0    50   ~ 0
LPC_SWDIO
Text Label 5200 3500 0    50   ~ 0
LPC_MOSI0
Text Label 5200 3400 0    50   ~ 0
LPC_MISO0
Wire Wire Line
	5700 3200 5200 3200
Text Label 5200 2800 0    50   ~ 0
LPC_SSEL0
Text Label 5200 2700 0    50   ~ 0
LPC_UFTOGG
Text Label 5200 4500 0    50   ~ 0
LPC_TXDa
Text Label 5200 4400 0    50   ~ 0
LPC_RXDa
Text Label 7200 3800 0    50   ~ 0
LPC_TXDc
Text Label 7200 3700 0    50   ~ 0
LPC_RXDc
Wire Wire Line
	7200 3700 7100 3700
Wire Wire Line
	7100 3800 7200 3800
Text Label 7200 3900 0    50   ~ 0
LPC_SCLKc
Text Label 7200 4000 0    50   ~ 0
LPC_SCK0b
Wire Wire Line
	7200 4000 7100 4000
Text Label 3700 1850 0    50   ~ 0
LPC_SDA
Text Label 3700 1750 0    50   ~ 0
LPC_SCL
Wire Wire Line
	3700 1750 4350 1750
Wire Wire Line
	4400 1850 4100 1850
Text GLabel 4400 1850 2    50   BiDi ~ 0
INA_SDA
Text GLabel 4400 1750 2    50   BiDi ~ 0
INA_SCL
$Comp
L Device:R_Small R?
U 1 1 6188432B
P 4350 1400
AR Path="/5CC81028/6188432B" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/6188432B" Ref="R69"  Part="1" 
F 0 "R69" H 4409 1446 50  0000 L CNN
F 1 "4.7k" H 4409 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4350 1400 50  0001 C CNN
F 3 "~" H 4350 1400 50  0001 C CNN
F 4 "Yageo" H 4350 1400 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 4350 1400 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4350 1400 50  0001 C CNN "Checked"
F 7 "Mouser" H 4350 1400 50  0001 C CNN "Distributor"
	1    4350 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61884335
P 4100 1550
AR Path="/5CC81028/61884335" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/61884335" Ref="R68"  Part="1" 
F 0 "R68" H 4159 1596 50  0000 L CNN
F 1 "4.7k" H 4159 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4100 1550 50  0001 C CNN
F 3 "~" H 4100 1550 50  0001 C CNN
F 4 "Yageo" H 4100 1550 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 4100 1550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4100 1550 50  0001 C CNN "Checked"
F 7 "Mouser" H 4100 1550 50  0001 C CNN "Distributor"
	1    4100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1650 4100 1850
Connection ~ 4100 1850
Wire Wire Line
	4100 1850 3700 1850
Wire Wire Line
	4350 1500 4350 1750
Connection ~ 4350 1750
Wire Wire Line
	4350 1750 4400 1750
Wire Wire Line
	4100 1450 4100 1250
Wire Wire Line
	4100 1250 4350 1250
Connection ~ 4350 1250
Wire Wire Line
	4350 1250 4350 1300
Wire Wire Line
	4500 3000 4500 2700
Wire Wire Line
	4500 2700 5700 2700
$Comp
L power:GND #PWR?
U 1 1 61884347
P 3750 3050
AR Path="/5CC81028/61884347" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/61884347" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3750 2800 50  0001 C CNN
F 1 "GND" H 3755 2877 50  0000 C CNN
F 2 "" H 3750 3050 50  0001 C CNN
F 3 "" H 3750 3050 50  0001 C CNN
	1    3750 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3050 3750 3000
Wire Wire Line
	3750 3000 3900 3000
Wire Wire Line
	7800 4400 7650 4400
Connection ~ 7800 4400
Wire Wire Line
	7800 4300 7800 4400
$Comp
L Device:R_Small R?
U 1 1 61884356
P 7800 4200
AR Path="/5CC81028/61884356" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/61884356" Ref="R71"  Part="1" 
F 0 "R71" H 7859 4246 50  0000 L CNN
F 1 "1.5k" H 7859 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7800 4200 50  0001 C CNN
F 3 "~" H 7800 4200 50  0001 C CNN
F 4 "Yageo" H 7800 4200 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-071K5L" H 7800 4200 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7800 4200 50  0001 C CNN "Checked"
F 7 "Mouser" H 7800 4200 50  0001 C CNN "Distributor"
	1    7800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4400 7800 4400
Text GLabel 4650 3400 0    50   Input ~ 0
LPC_MISO
Text GLabel 4650 3500 0    50   Input ~ 0
LPC_MOSI
Text GLabel 4650 3600 0    50   Input ~ 0
LPC_SCK
$Comp
L Device:R_Small R?
U 1 1 61884364
P 8550 2850
AR Path="/5CC81028/61884364" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/61884364" Ref="R128"  Part="1" 
F 0 "R128" V 8650 2850 50  0000 C CNN
F 1 "10k" V 8450 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8550 2850 50  0001 C CNN
F 3 "~" H 8550 2850 50  0001 C CNN
F 4 "Yageo" H 8550 2850 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0710KL" H 8550 2850 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 8550 2850 50  0001 C CNN "Checked"
F 7 "Mouser" H 8550 2850 50  0001 C CNN "Distributor"
	1    8550 2850
	-1   0    0    1   
$EndComp
Connection ~ 8550 3200
$Comp
L Device:R_Small R?
U 1 1 6188436F
P 4800 3400
AR Path="/5CC81028/6188436F" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/6188436F" Ref="R124"  Part="1" 
F 0 "R124" V 4850 3600 50  0000 C CNN
F 1 "0" V 4800 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4800 3400 50  0001 C CNN
F 3 "~" H 4800 3400 50  0001 C CNN
F 4 "Vishay Dale" H 4800 3400 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4800 3400 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4800 3400 50  0001 C CNN "Distributor"
F 7 "y" H 4800 3400 50  0001 C CNN "Checked"
	1    4800 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61884379
P 4800 3500
AR Path="/5CC81028/61884379" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/61884379" Ref="R125"  Part="1" 
F 0 "R125" V 4850 3700 50  0000 C CNN
F 1 "0" V 4800 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4800 3500 50  0001 C CNN
F 3 "~" H 4800 3500 50  0001 C CNN
F 4 "Vishay Dale" H 4800 3500 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4800 3500 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4800 3500 50  0001 C CNN "Distributor"
F 7 "y" H 4800 3500 50  0001 C CNN "Checked"
	1    4800 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61884383
P 4800 3600
AR Path="/5CC81028/61884383" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/61884383" Ref="R126"  Part="1" 
F 0 "R126" V 4850 3800 50  0000 C CNN
F 1 "0" V 4800 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4800 3600 50  0001 C CNN
F 3 "~" H 4800 3600 50  0001 C CNN
F 4 "Vishay Dale" H 4800 3600 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4800 3600 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4800 3600 50  0001 C CNN "Distributor"
F 7 "y" H 4800 3600 50  0001 C CNN "Checked"
	1    4800 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3400 4650 3400
Wire Wire Line
	4650 3500 4700 3500
Wire Wire Line
	4700 3600 4650 3600
Wire Wire Line
	4900 3400 5700 3400
Wire Wire Line
	4900 3500 5700 3500
Wire Wire Line
	4900 3600 5700 3600
$Comp
L Device:R_Small R?
U 1 1 61884394
P 8150 4700
AR Path="/5CC81028/61884394" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/61884394" Ref="R127"  Part="1" 
F 0 "R127" V 8250 4700 50  0000 C CNN
F 1 "0" V 8150 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8150 4700 50  0001 C CNN
F 3 "~" H 8150 4700 50  0001 C CNN
F 4 "Vishay Dale" H 8150 4700 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 8150 4700 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 8150 4700 50  0001 C CNN "Distributor"
F 7 "y" H 8150 4700 50  0001 C CNN "Checked"
F 8 "y" H 8150 4700 50  0001 C CNN "DNP"
	1    8150 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6188439A
P 8150 4850
AR Path="/5CC81028/6188439A" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/6188439A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8150 4600 50  0001 C CNN
F 1 "GND" H 8155 4677 50  0000 C CNN
F 2 "" H 8150 4850 50  0001 C CNN
F 3 "" H 8150 4850 50  0001 C CNN
	1    8150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4850 8150 4800
Text Notes 8150 4850 1    50   ~ 0
NOSTUFF
NoConn ~ 8100 4200
Text GLabel 4950 2800 0    50   Input ~ 0
LPC_SS0
$Comp
L Device:R_Small R?
U 1 1 618843A8
P 5050 2800
AR Path="/5CC81028/618843A8" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/618843A8" Ref="R157"  Part="1" 
F 0 "R157" V 5150 2800 50  0000 C CNN
F 1 "0" V 5050 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5050 2800 50  0001 C CNN
F 3 "~" H 5050 2800 50  0001 C CNN
F 4 "Vishay Dale" H 5050 2800 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 5050 2800 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 5050 2800 50  0001 C CNN "Distributor"
F 7 "y" H 5050 2800 50  0001 C CNN "Checked"
	1    5050 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 2800 5700 2800
Text GLabel 7850 2700 2    50   Input ~ 0
LPC_UART2_RX
Text GLabel 7850 2600 2    50   Output ~ 0
LPC_UART2_TX
Wire Wire Line
	7200 2900 7100 2900
Text Label 7200 3600 0    50   ~ 0
LPC_PIO1_25
Text Label 7200 4100 0    50   ~ 0
LPC_PIO1_31
Wire Wire Line
	7200 4100 7100 4100
$Comp
L power:GND #PWR?
U 1 1 618843B5
P 4350 4900
AR Path="/5CC81028/618843B5" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/618843B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 4650 50  0001 C CNN
F 1 "GND" H 4355 4727 50  0000 C CNN
F 2 "" H 4350 4900 50  0001 C CNN
F 3 "" H 4350 4900 50  0001 C CNN
	1    4350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4300 5700 4300
Wire Wire Line
	5700 4400 5200 4400
Wire Wire Line
	5200 4500 5700 4500
Text Label 2850 1700 0    50   ~ 0
LPC_RXDc
Text Label 2850 1600 0    50   ~ 0
LPC_TXDc
Text Label 3750 4150 2    50   ~ 0
LPC_SCK0b
Wire Wire Line
	5200 4900 5700 4900
Text Label 4250 4550 0    50   ~ 0
LPC_AD7
Wire Wire Line
	5200 4700 5700 4700
Wire Wire Line
	4250 4850 4350 4850
Wire Wire Line
	4350 4850 4350 4900
Text Label 2250 3150 0    50   ~ 0
LPC_PIO1_31
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 618843CB
P 2450 1600
AR Path="/5CC81028/618843CB" Ref="J?"  Part="1" 
AR Path="/5CC81028/616517A7/618843CB" Ref="J23"  Part="1" 
F 0 "J23" H 2558 1881 50  0000 C CNN
F 1 "KDBSYSCTL" H 2558 1790 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 2450 1600 50  0001 C CNN
F 3 "~" H 2450 1600 50  0001 C CNN
F 4 "y" H 2450 1600 50  0001 C CNN "Checked"
F 5 "Digikey" H 2450 1600 50  0001 C CNN "Distributor"
F 6 "JST" H 2450 1600 50  0001 C CNN "Manufacturer"
F 7 "B4B-PH-K-S(LF)(SN)" H 2450 1600 50  0001 C CNN "Manufacturer_No"
	1    2450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1700 2650 1700
$Comp
L power:GND #PWR?
U 1 1 618843D2
P 2800 1850
AR Path="/5CC81028/618843D2" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/618843D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2800 1600 50  0001 C CNN
F 1 "GND" H 2805 1677 50  0000 C CNN
F 2 "" H 2800 1850 50  0001 C CNN
F 3 "" H 2800 1850 50  0001 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1850 2800 1800
Wire Wire Line
	2800 1800 2650 1800
Wire Wire Line
	8550 3200 8550 2950
Wire Wire Line
	8550 3200 8800 3200
Wire Wire Line
	8350 3300 8800 3300
Wire Wire Line
	7450 5350 7450 5450
Wire Wire Line
	7450 5450 7600 5450
Connection ~ 7750 5450
Wire Wire Line
	7450 5150 7450 5100
Wire Wire Line
	7450 5100 7600 5100
Wire Wire Line
	7600 5100 7600 5450
Connection ~ 7600 5450
Wire Wire Line
	7600 5450 7750 5450
$Comp
L Switch:SW_DIP_x01 SW?
U 1 1 618843E9
P 4200 3000
AR Path="/618843E9" Ref="SW?"  Part="1" 
AR Path="/5CC81028/618843E9" Ref="SW?"  Part="1" 
AR Path="/5CC81028/616517A7/618843E9" Ref="SW1"  Part="1" 
F 0 "SW1" H 4200 3267 50  0000 C CNN
F 1 "SW_DIP_x01" H 4200 3176 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx01_Slide_Omron_A6S-110x_W8.9mm_P2.54mm" H 4200 3000 50  0001 C CNN
F 3 "~" H 4200 3000 50  0001 C CNN
F 4 "Apem" H 4200 3000 50  0001 C CNN "Manufacturer"
F 5 "DM01" H 4200 3000 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4200 3000 50  0001 C CNN "Checked"
F 7 "Mouser" H 4200 3000 50  0001 C CNN "Distributor"
	1    4200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1750 8550 1850
Text Label 7200 2900 0    50   ~ 0
LPC_PIO1_16
Text GLabel 8800 3500 2    50   Output ~ 0
IMX_WAKE
Wire Wire Line
	7100 3500 8800 3500
Text Label 7200 3000 0    50   ~ 0
LPC_~DTR
Wire Wire Line
	7100 2700 7850 2700
Wire Wire Line
	7100 2600 7850 2600
Text Label 7100 4400 0    50   ~ 0
LPCUD_P
Text Label 7100 4500 0    50   ~ 0
LPCUD_N
Text GLabel 2800 3550 2    50   Output ~ 0
PCIE1_PWR_EN
Text Label 5200 4600 0    50   ~ 0
LPC_PIO0_20
Text Label 5200 3300 0    50   ~ 0
LPC_~CTS
Connection ~ 8550 1850
Wire Wire Line
	8550 1850 8550 2750
Wire Wire Line
	2800 1500 2650 1500
Wire Wire Line
	2650 1600 2850 1600
Text Notes 2250 1200 0    50   ~ 0
Keyboard System Control Port\n(SYSCTL)
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 6188440E
P 3950 4450
AR Path="/5CC81028/6188440E" Ref="J?"  Part="1" 
AR Path="/5CC81028/616517A7/6188440E" Ref="J22"  Part="1" 
F 0 "J22" H 4000 3800 50  0000 C CNN
F 1 "LPC_IO" H 4000 3900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 3950 4450 50  0001 C CNN
F 3 "~" H 3950 4450 50  0001 C CNN
F 4 "Molex" H 3950 4450 50  0001 C CNN "Manufacturer"
F 5 "87914-1616" H 3950 4450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 3950 4450 50  0001 C CNN "Checked"
F 7 "Mouser" H 3950 4450 50  0001 C CNN "Distributor"
	1    3950 4450
	1    0    0    -1  
$EndComp
Text Label 4250 4650 0    50   ~ 0
LPC_RXDa
Text Label 3750 4650 2    50   ~ 0
LPC_TXDa
Text Label 4250 4750 0    50   ~ 0
LPC_MOSI1a
Text Label 5200 1700 0    50   ~ 0
LPC_UVBUS
$Comp
L Device:R_Small R?
U 1 1 6188441F
P 5200 1450
AR Path="/5CC81028/6188441F" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/6188441F" Ref="R195"  Part="1" 
F 0 "R195" H 5259 1496 50  0000 L CNN
F 1 "1.5k" H 5259 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5200 1450 50  0001 C CNN
F 3 "~" H 5200 1450 50  0001 C CNN
F 4 "Yageo" H 5200 1450 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-071K5L" H 5200 1450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5200 1450 50  0001 C CNN "Checked"
F 7 "Mouser" H 5200 1450 50  0001 C CNN "Distributor"
	1    5200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1700 5200 1550
Text GLabel 8800 3600 2    50   Output ~ 0
CHG_RNG
Wire Wire Line
	7100 3600 8800 3600
Text Label 3750 4550 2    50   ~ 0
LPC_SCLKa
$Comp
L Device:R_Small R?
U 1 1 6188442F
P 8250 3900
AR Path="/5CC81028/6188442F" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/6188442F" Ref="R194"  Part="1" 
F 0 "R194" V 8300 4100 50  0000 C CNN
F 1 "0" V 8250 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8250 3900 50  0001 C CNN
F 3 "~" H 8250 3900 50  0001 C CNN
F 4 "Vishay Dale" H 8250 3900 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 8250 3900 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 8250 3900 50  0001 C CNN "Distributor"
F 7 "y" H 8250 3900 50  0001 C CNN "Checked"
	1    8250 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 3900 8150 3900
Wire Wire Line
	8800 3900 8350 3900
Text GLabel 8800 3900 2    50   Output ~ 0
IMX_RESETn
Text GLabel 2800 3150 2    50   Output ~ 0
USB_PWR_EN
Wire Wire Line
	5700 3300 5200 3300
Text Label 2250 3350 0    50   ~ 0
LPC_~CTS
Text GLabel 2800 3350 2    50   Output ~ 0
AUX_PWR_EN
Wire Wire Line
	7800 1850 8550 1850
Text Label 5200 3200 0    50   ~ 0
LPC_~USBCON
Text Label 3750 4750 2    50   ~ 0
LPC_~USBCON
Wire Wire Line
	5700 4100 5200 4100
Wire Wire Line
	5200 4000 5700 4000
Wire Wire Line
	5700 3900 5200 3900
Wire Wire Line
	5200 3800 5700 3800
Wire Wire Line
	5700 3700 5200 3700
Wire Wire Line
	5200 4200 5700 4200
Wire Wire Line
	5700 4800 5200 4800
Text Label 3750 4250 2    50   ~ 0
LPC_TMS
Text Label 4250 4250 0    50   ~ 0
LPC_TDI
Text Label 3750 4350 2    50   ~ 0
LPC_~TRST
Text Label 4250 4350 0    50   ~ 0
LPC_TDO
Text Label 3750 4450 2    50   ~ 0
LPC_AD5
Text Label 4250 4450 0    50   ~ 0
LPC_SWDIO
Text Label 5200 4800 0    50   ~ 0
LPC_MISO1a
Text Label 2250 2950 0    50   ~ 0
LPC_~DTR
Text GLabel 2800 2950 2    50   Output ~ 0
1V2_PWR_EN
Wire Wire Line
	2800 2950 2250 2950
Text Label 2250 2750 0    50   ~ 0
LPC_PIO1_16
Text GLabel 2800 2750 2    50   Output ~ 0
3V3_PWR_EN
Wire Wire Line
	2800 2750 2250 2750
Text Label 2250 2550 0    50   ~ 0
LPC_SCK1a
Text GLabel 2800 2550 2    50   Output ~ 0
5V_PWR_EN
Wire Wire Line
	2800 2550 2250 2550
Wire Wire Line
	2250 3350 2800 3350
Wire Wire Line
	2250 3150 2800 3150
Text Label 2250 3550 0    50   ~ 0
LPC_PIO0_20
Wire Wire Line
	2250 3550 2800 3550
Connection ~ 6300 5300
$Comp
L MCU_NXP_LPC:LPC11U24FBD48-301 U?
U 1 1 61884241
P 6400 3800
AR Path="/5CC81028/61884241" Ref="U?"  Part="1" 
AR Path="/5CC81028/616517A7/61884241" Ref="U18"  Part="1" 
F 0 "U18" H 6850 5250 50  0000 C CNN
F 1 "LPC11U24FBD48-301" H 5700 5250 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 7250 5300 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/LPC11U2X.pdf" H 6400 2325 50  0001 C CNN
F 4 "NXP" H 6400 3800 50  0001 C CNN "Manufacturer"
F 5 "LPC11U24FBD48-301" H 6400 3800 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6400 3800 50  0001 C CNN "Checked"
F 7 "Mouser" H 6400 3800 50  0001 C CNN "Distributor"
	1    6400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4600 5700 4600
Text GLabel 4400 1150 2    50   Input ~ 0
LPC_VCC
Wire Wire Line
	4400 1150 4350 1150
Wire Wire Line
	4350 1150 4350 1250
Text GLabel 8600 1750 2    50   Input ~ 0
LPC_VCC
Wire Wire Line
	8600 1750 8550 1750
Text GLabel 7850 3750 2    50   Input ~ 0
LPC_VCC
Wire Wire Line
	7800 3750 7850 3750
Wire Wire Line
	7800 3750 7800 4100
Text GLabel 5250 1150 2    50   Input ~ 0
LPC_VCC
Wire Wire Line
	5250 1150 5200 1150
Wire Wire Line
	5200 1150 5200 1350
Text GLabel 3750 4850 0    50   Input ~ 0
LPC_VCC
Text GLabel 2850 1400 2    50   Input ~ 0
LPC_VCC
Wire Wire Line
	2850 1400 2800 1400
Wire Wire Line
	2800 1400 2800 1500
$Comp
L Device:Battery_Cell BT?
U 1 1 66AE38D8
P 4600 6100
AR Path="/5CC81028/66AE38D8" Ref="BT?"  Part="1" 
AR Path="/66AE38D8" Ref="BT?"  Part="1" 
AR Path="/5CC81028/616517A7/66AE38D8" Ref="BT1"  Part="1" 
F 0 "BT1" V 4855 6150 50  0000 C CNN
F 1 "CR1220" V 4764 6150 50  0000 C CNN
F 2 "Battery:BatteryHolder_Keystone_3000_1x12mm" V 4600 6160 50  0001 C CNN
F 3 "~" V 4600 6160 50  0001 C CNN
F 4 "y" H 4600 6100 50  0001 C CNN "Checked"
F 5 "Keystone" H 4600 6100 50  0001 C CNN "Manufacturer"
F 6 "3000" H 4600 6100 50  0001 C CNN "Manufacturer_No"
F 7 "Mouser" H 4600 6100 50  0001 C CNN "Distributor"
	1    4600 6100
	0    -1   -1   0   
$EndComp
$Comp
L Timer_RTC:PCF8523T U?
U 1 1 66AE38E2
P 3950 6650
AR Path="/5CC81028/66AE38E2" Ref="U?"  Part="1" 
AR Path="/66AE38E2" Ref="U?"  Part="1" 
AR Path="/5CC81028/616517A7/66AE38E2" Ref="U5"  Part="1" 
F 0 "U5" H 3750 6250 50  0000 L CNN
F 1 "PCF8523T" H 4000 6250 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4750 6300 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCF8523.pdf" H 3950 6650 50  0001 C CNN
F 4 "y" H 3950 6650 50  0001 C CNN "Checked"
F 5 "Mouser" H 3950 6650 50  0001 C CNN "Distributor"
F 6 "NXP" H 3950 6650 50  0001 C CNN "Manufacturer"
F 7 "PCF8523T/1,118" H 3950 6650 50  0001 C CNN "Manufacturer_No"
	1    3950 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66AE38E8
P 4800 6150
AR Path="/5CC81028/66AE38E8" Ref="#PWR?"  Part="1" 
AR Path="/66AE38E8" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/66AE38E8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4800 5900 50  0001 C CNN
F 1 "GND" H 4805 5977 50  0000 C CNN
F 2 "" H 4800 6150 50  0001 C CNN
F 3 "" H 4800 6150 50  0001 C CNN
	1    4800 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6150 4800 6100
Wire Wire Line
	4800 6100 4700 6100
Text GLabel 3350 6550 0    50   BiDi ~ 0
DAC_SDA
Text GLabel 3350 6450 0    50   Output ~ 0
DAC_SCL
Wire Wire Line
	3350 6450 3450 6450
Wire Wire Line
	3450 6550 3350 6550
Text Notes 2300 5550 0    50   ~ 0
Realtime Clock
$Comp
L Device:C_Small C?
U 1 1 66AE38F9
P 2750 6250
AR Path="/5CC81028/66AE38F9" Ref="C?"  Part="1" 
AR Path="/5CC81028/616517A7/66AE38F9" Ref="C140"  Part="1" 
F 0 "C140" H 2700 6150 50  0000 R CNN
F 1 "0.1uF" H 2750 6350 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2750 6250 50  0001 C CNN
F 3 "~" H 2750 6250 50  0001 C CNN
F 4 "Yageo" H 2750 6250 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 2750 6250 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2750 6250 50  0001 C CNN "Checked"
F 7 "Mouser" H 2750 6250 50  0001 C CNN "Distributor"
	1    2750 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 6100 2750 6100
Wire Wire Line
	3850 6100 3850 6250
Wire Wire Line
	2750 6150 2750 6100
Connection ~ 2750 6100
Wire Wire Line
	2750 6100 3850 6100
$Comp
L power:GND #PWR?
U 1 1 66AE3904
P 2750 6400
AR Path="/5CC81028/66AE3904" Ref="#PWR?"  Part="1" 
AR Path="/66AE3904" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/66AE3904" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2750 6150 50  0001 C CNN
F 1 "GND" H 2755 6227 50  0000 C CNN
F 2 "" H 2750 6400 50  0001 C CNN
F 3 "" H 2750 6400 50  0001 C CNN
	1    2750 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6400 2750 6350
Wire Wire Line
	4050 6250 4050 6100
Wire Wire Line
	4050 6100 4400 6100
$Comp
L power:GND #PWR?
U 1 1 66AE390D
P 3950 7200
AR Path="/5CC81028/66AE390D" Ref="#PWR?"  Part="1" 
AR Path="/5CC81028/616517A7/66AE390D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 6950 50  0001 C CNN
F 1 "GND" H 3955 7027 50  0000 C CNN
F 2 "" H 3950 7200 50  0001 C CNN
F 3 "" H 3950 7200 50  0001 C CNN
	1    3950 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 7200 3950 7050
$Comp
L Device:R_Small R?
U 1 1 66AE3918
P 4600 6650
AR Path="/5CC81028/66AE3918" Ref="R?"  Part="1" 
AR Path="/5CC81028/616517A7/66AE3918" Ref="R137"  Part="1" 
F 0 "R137" V 4500 6650 50  0000 C CNN
F 1 "0" V 4600 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 6650 50  0001 C CNN
F 3 "~" H 4600 6650 50  0001 C CNN
F 4 "Vishay Dale" H 4600 6650 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4600 6650 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4600 6650 50  0001 C CNN "Distributor"
F 7 "y" H 4600 6650 50  0001 C CNN "Checked"
	1    4600 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 6650 4450 6650
Text GLabel 4750 6650 2    50   Output ~ 0
IMX_RTC_IRQ
Wire Wire Line
	4750 6650 4700 6650
$Comp
L Device:Crystal_Small Y?
U 1 1 66AE3925
P 2850 6950
AR Path="/5CC81028/66AE3925" Ref="Y?"  Part="1" 
AR Path="/5CC81028/616517A7/66AE3925" Ref="Y4"  Part="1" 
F 0 "Y4" V 2804 7038 50  0000 L CNN
F 1 "32.768 kHz" V 2895 7038 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 2850 6950 50  0001 C CNN
F 3 "~" H 2850 6950 50  0001 C CNN
F 4 "ECS-.327-7-34B-TR" V 2850 6950 50  0001 C CNN "Manufacturer_No"
F 5 "ECS" V 2850 6950 50  0001 C CNN "Manufacturer"
F 6 "y" H 2850 6950 50  0001 C CNN "Checked"
F 7 "Mouser" H 2850 6950 50  0001 C CNN "Distributor"
	1    2850 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 6850 2850 6750
Wire Wire Line
	2850 6750 3450 6750
Wire Wire Line
	2850 7050 2850 7200
Wire Wire Line
	2850 7200 3400 7200
Wire Wire Line
	3400 7200 3400 6850
Wire Wire Line
	3400 6850 3450 6850
Text Notes 3050 5950 0    50   ~ 0
I2C lines pulled up\nby SYS 3v3 power\nnear DAC
Text Notes 2300 5950 0    50   ~ 0
Powered by \nmain batteries\nin standby
Text Notes 4200 5750 0    50   ~ 0
Powered by coin\ncell when batteries\nremoved
$Comp
L power:PWR_FLAG #FLG?
U 1 1 66AE3934
P 4050 6100
AR Path="/5CC81028/66AE3934" Ref="#FLG?"  Part="1" 
AR Path="/5CC81028/616517A7/66AE3934" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 4050 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 4050 6273 50  0000 C CNN
F 2 "" H 4050 6100 50  0001 C CNN
F 3 "~" H 4050 6100 50  0001 C CNN
	1    4050 6100
	1    0    0    -1  
$EndComp
Connection ~ 4050 6100
Text GLabel 2650 6100 0    50   Input ~ 0
LPC_VCC
Text Notes 2250 2350 0    50   ~ 0
Power Switches
Text Notes 6050 1700 0    50   ~ 0
System Controller
Text Notes 3700 4000 0    50   ~ 0
Expansion Port
$EndSCHEMATC
