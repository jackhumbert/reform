EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:DF40C-100DS-0.4V_51_
LIBS:5622-4100-ML
LIBS:mpcie
LIBS:TPS54616PWPR
LIBS:conn_hdmi
LIBS:J0G-0003NL
LIBS:TUSB4041IPAPR
LIBS:TPS61235RWLR
LIBS:AP1501A-33K5G-13
LIBS:TPS74801DRCR
LIBS:MCP73123T-22SI_MF
LIBS:SGTL5000XNAA3
LIBS:CM2020-00TR
LIBS:INA260AIPW
LIBS:SN74LVC1G14DBVR
LIBS:SN74LVC1G08DCKR
LIBS:reform-motherboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title "MNT Reform Power / Charging"
Date "2017-11-21"
Rev "1"
Comp "MNT Media and Technology UG (hb)"
Comment1 ""
Comment2 ""
Comment3 "Copyright 2017 Lukas F. Hartmann / @mntmn"
Comment4 "License: CC BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/"
$EndDescr
$Comp
L TPS61235RWLR U3
U 1 1 5A0DDA3B
P 5350 4350
F 0 "U3" H 4949 4781 50  0000 L BNN
F 1 "TPS61235RWLR" H 4939 3869 50  0000 L BNN
F 2 "TPS61235RWLR:CONV_TPS61235RWLR" H 5350 4350 50  0001 L BNN
F 3 "None" H 5350 4350 50  0001 L BNN
F 4 "TPS61235RWLR" H 5350 4350 50  0001 L BNN "MP"
F 5 "Unavailable" H 5350 4350 50  0001 L BNN "Availability"
F 6 "TPS6123x 8-A Valley Current Synchronous Boost Converters with Constant Current Output Feature 9-VQFN-HR -40 to 85" H 5350 4350 50  0001 L BNN "Description"
F 7 "Texas Instruments" H 5350 4350 50  0001 L BNN "MF"
F 8 "VQFN-9 Texas Instruments" H 5350 4350 50  0001 L BNN "Package"
	1    5350 4350
	1    0    0    -1  
$EndComp
$Comp
L AP1501A-33K5G-13 U4
U 1 1 5A0DDFC2
P 3050 6500
F 0 "U4" H 2649 6826 50  0000 L BNN
F 1 "AP1501A-33K5G-13" H 2649 6099 50  0000 L BNN
F 2 "AP1501A-33K5G-13:DPAK171P1524X485-6N" H 3050 6500 50  0001 L BNN
F 3 "2.50 USD" H 3050 6500 50  0001 L BNN
F 4 "AP1501A-33K5G-13" H 3050 6500 50  0001 L BNN "MP"
F 5 "Good" H 3050 6500 50  0001 L BNN "Availability"
F 6 "Voltage stabiliser; PMIC; 5A; TO263-5; SMD; buck; -20÷85°C; 800pcs." H 3050 6500 50  0001 L BNN "Description"
F 7 "Diodes Inc." H 3050 6500 50  0001 L BNN "MF"
F 8 "TO-263-5 Diodes Inc." H 3050 6500 50  0001 L BNN "Package"
	1    3050 6500
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 5A0DE5C2
P 1100 5150
F 0 "BT1" H 1200 5250 50  0000 L CNN
F 1 "Battery_Cell" H 1200 5150 50  0000 L CNN
F 2 "Connectors_Phoenix:PhoenixContact_GMSTBA-G_02x7.50mm_Angled" V 1100 5210 50  0001 C CNN
F 3 "" V 1100 5210 50  0001 C CNN
	1    1100 5150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR070
U 1 1 5A0DECAD
P 5350 6300
F 0 "#PWR070" H 5350 6150 50  0001 C CNN
F 1 "+3V3" H 5350 6440 50  0000 C CNN
F 2 "" H 5350 6300 50  0001 C CNN
F 3 "" H 5350 6300 50  0001 C CNN
	1    5350 6300
	0    1    1    0   
$EndComp
$Comp
L TPS74801DRCR U6
U 1 1 5A0DF235
P 8700 2000
F 0 "U6" H 8489 2774 50  0000 L BNN
F 1 "TPS74801DRCR" H 8513 989 50  0000 L BNN
F 2 "TPS74801DRCR:SON50P300X300X100-11N" H 8700 2000 50  0001 L BNN
F 3 "TPS74801DRCR" H 8700 2000 50  0001 L BNN
F 4 "Good" H 8700 2000 50  0001 L BNN "Availability"
F 5 "1.25 USD" H 8700 2000 50  0001 L BNN "Price"
F 6 "Single Output LDO, 1.5A, Adj. (0.8 to 3.6V), Programmable Soft-Start 10-VSON -40 to 125" H 8700 2000 50  0001 L BNN "Description"
F 7 "Texas Instruments" H 8700 2000 50  0001 L BNN "MF"
F 8 "VSON-10 Texas Instruments" H 8700 2000 50  0001 L BNN "Package"
	1    8700 2000
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5A0EF1C2
P 5350 3650
F 0 "L1" V 5300 3650 50  0000 C CNN
F 1 "1 uH" V 5425 3650 50  0000 C CNN
F 2 "Inductors:Inductor_Taiyo-Yuden_MD-4040" H 5350 3650 50  0001 C CNN
F 3 "" H 5350 3650 50  0001 C CNN
	1    5350 3650
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 5A0EF84A
P 4400 4550
F 0 "C3" H 4425 4650 50  0000 L CNN
F 1 "10uF" H 4425 4450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4438 4400 50  0001 C CNN
F 3 "" H 4400 4550 50  0001 C CNN
	1    4400 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR071
U 1 1 5A0EF8D9
P 4750 4850
F 0 "#PWR071" H 4750 4600 50  0001 C CNN
F 1 "GND" H 4750 4700 50  0000 C CNN
F 2 "" H 4750 4850 50  0001 C CNN
F 3 "" H 4750 4850 50  0001 C CNN
	1    4750 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR072
U 1 1 5A0EF920
P 5950 4850
F 0 "#PWR072" H 5950 4600 50  0001 C CNN
F 1 "GND" H 5950 4700 50  0000 C CNN
F 2 "" H 5950 4850 50  0001 C CNN
F 3 "" H 5950 4850 50  0001 C CNN
	1    5950 4850
	1    0    0    -1  
$EndComp
$Comp
L C_Small C18
U 1 1 5A0EF983
P 6150 4250
F 0 "C18" H 6160 4320 50  0000 L CNN
F 1 "22uF" H 6160 4170 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.8" H 6150 4250 50  0001 C CNN
F 3 "" H 6150 4250 50  0001 C CNN
	1    6150 4250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C19
U 1 1 5A0EFB93
P 6400 4250
F 0 "C19" H 6410 4320 50  0000 L CNN
F 1 "22uF" H 6410 4170 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.8" H 6400 4250 50  0001 C CNN
F 3 "" H 6400 4250 50  0001 C CNN
	1    6400 4250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C20
U 1 1 5A0EFBCC
P 6650 4250
F 0 "C20" H 6660 4320 50  0000 L CNN
F 1 "22uF" H 6660 4170 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.8" H 6650 4250 50  0001 C CNN
F 3 "" H 6650 4250 50  0001 C CNN
	1    6650 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR073
U 1 1 5A0EFC7D
P 6650 4400
F 0 "#PWR073" H 6650 4150 50  0001 C CNN
F 1 "GND" H 6650 4250 50  0000 C CNN
F 2 "" H 6650 4400 50  0001 C CNN
F 3 "" H 6650 4400 50  0001 C CNN
	1    6650 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR074
U 1 1 5A0F05D2
P 3800 7100
F 0 "#PWR074" H 3800 6850 50  0001 C CNN
F 1 "GND" H 3800 6950 50  0000 C CNN
F 2 "" H 3800 7100 50  0001 C CNN
F 3 "" H 3800 7100 50  0001 C CNN
	1    3800 7100
	1    0    0    -1  
$EndComp
$Comp
L MCP73123T-22SI/MF U2
U 1 1 5A0F0D03
P 2950 2400
F 0 "U2" H 2549 2927 50  0000 L BNN
F 1 "MCP73123T-22SI/MF" H 2549 1899 50  0000 L BNN
F 2 "MCP73123T-22SI_MF:SON50P300X300X100-11N" H 2950 2400 50  0001 L BNN
F 3 "https://www.digikey.de/product-detail/en/microchip-technology/MCP73123T-22SI-MF/MCP73123T-22SI-MF-ND/2126111?WT.z_cid=ref_snapeda&utm_source=snapeda&utm_medium=aggregator&utm_campaign=buynow" H 2950 2400 50  0001 L BNN
F 4 "Microchip" H 2950 2400 50  0001 L BNN "MF"
F 5 "Single cell, 6.5V OVP LiFePO4 battery charger, 3.6V regulation10 DFN 3x3x0.9mm T/R" H 2950 2400 50  0001 L BNN "Description"
F 6 "MCP73123T-22SI/MF-ND" H 2950 2400 50  0001 L BNN "Digi-Key_Part_Number"
F 7 "DFN-10 Microchip" H 2950 2400 50  0001 L BNN "Package"
F 8 "MCP73123T-22SI/MF" H 2950 2400 50  0001 L BNN "MP"
	1    2950 2400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5A0F125F
P 1850 2150
F 0 "C2" H 1860 2220 50  0000 L CNN
F 1 "4.7uF" H 1860 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1850 2150 50  0001 C CNN
F 3 "" H 1850 2150 50  0001 C CNN
	1    1850 2150
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D3
U 1 1 5A0F12FF
P 3850 2300
F 0 "D3" H 3800 2425 50  0000 L CNN
F 1 "LED_CHRG" H 3675 2200 50  0000 L CNN
F 2 "LEDs:LED_0805_HandSoldering" V 3850 2300 50  0001 C CNN
F 3 "" V 3850 2300 50  0001 C CNN
	1    3850 2300
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A0F1421
P 3600 2300
F 0 "R3" V 3680 2300 50  0000 C CNN
F 1 "1k" V 3600 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3530 2300 50  0001 C CNN
F 3 "" H 3600 2300 50  0001 C CNN
	1    3600 2300
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5A0F1A6F
P 2200 2350
F 0 "R2" V 2280 2350 50  0000 C CNN
F 1 "1.15k" V 2200 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2130 2350 50  0001 C CNN
F 3 "" H 2200 2350 50  0001 C CNN
	1    2200 2350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR075
U 1 1 5A0F1C0A
P 3850 2950
F 0 "#PWR075" H 3850 2700 50  0001 C CNN
F 1 "GND" H 3850 2800 50  0000 C CNN
F 2 "" H 3850 2950 50  0001 C CNN
F 3 "" H 3850 2950 50  0001 C CNN
	1    3850 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR076
U 1 1 5A0F1C49
P 3550 2700
F 0 "#PWR076" H 3550 2450 50  0001 C CNN
F 1 "GND" H 3550 2550 50  0000 C CNN
F 2 "" H 3550 2700 50  0001 C CNN
F 3 "" H 3550 2700 50  0001 C CNN
	1    3550 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR077
U 1 1 5A0F1D2C
P 4150 2350
F 0 "#PWR077" H 4150 2100 50  0001 C CNN
F 1 "GND" H 4150 2200 50  0000 C CNN
F 2 "" H 4150 2350 50  0001 C CNN
F 3 "" H 4150 2350 50  0001 C CNN
	1    4150 2350
	1    0    0    -1  
$EndComp
$Comp
L Barrel_Jack J6
U 1 1 5A0F40D9
P 900 1400
F 0 "J6" H 900 1610 50  0000 C CNN
F 1 "Barrel_Jack" H 900 1225 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 950 1360 50  0001 C CNN
F 3 "" H 950 1360 50  0001 C CNN
	1    900  1400
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 5A0F4762
P 1450 4250
F 0 "D1" H 1450 4350 50  0000 C CNN
F 1 "D_Schottky" H 1450 4150 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 1450 4250 50  0001 C CNN
F 3 "" H 1450 4250 50  0001 C CNN
	1    1450 4250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR078
U 1 1 5A0F4AEF
P 1200 1700
F 0 "#PWR078" H 1200 1450 50  0001 C CNN
F 1 "GND" H 1200 1550 50  0000 C CNN
F 2 "" H 1200 1700 50  0001 C CNN
F 3 "" H 1200 1700 50  0001 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
Text GLabel 5000 3150 2    60   BiDi ~ 0
PWRON
Text GLabel 1300 1400 2    60   BiDi ~ 0
JACK_SENSE
$Comp
L CP1_Small C21
U 1 1 5A0F7642
P 2200 6750
F 0 "C21" H 2210 6820 50  0000 L CNN
F 1 "22uF" H 2210 6670 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.8" H 2200 6750 50  0001 C CNN
F 3 "" H 2200 6750 50  0001 C CNN
	1    2200 6750
	1    0    0    -1  
$EndComp
$Comp
L L L2
U 1 1 5A0F844F
P 4250 6300
F 0 "L2" V 4200 6300 50  0000 C CNN
F 1 "18 uH" V 4325 6300 50  0000 C CNN
F 2 "Inductors:Inductor_1212" H 4250 6300 50  0001 C CNN
F 3 "" H 4250 6300 50  0001 C CNN
	1    4250 6300
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky D4
U 1 1 5A0F86C2
P 4050 6750
F 0 "D4" H 4050 6850 50  0000 C CNN
F 1 "D_Schottky" H 4050 6650 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 4050 6750 50  0001 C CNN
F 3 "" H 4050 6750 50  0001 C CNN
	1    4050 6750
	0    1    1    0   
$EndComp
$Comp
L CP1_Small C22
U 1 1 5A0F8A00
P 4450 6750
F 0 "C22" H 4460 6820 50  0000 L CNN
F 1 "22uF" H 4460 6670 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.8" H 4450 6750 50  0001 C CNN
F 3 "" H 4450 6750 50  0001 C CNN
	1    4450 6750
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C23
U 1 1 5A0FB0AF
P 4700 6750
F 0 "C23" H 4710 6820 50  0000 L CNN
F 1 "47uF" H 4710 6670 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.8" H 4700 6750 50  0001 C CNN
F 3 "" H 4700 6750 50  0001 C CNN
	1    4700 6750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR079
U 1 1 5A0FBA8A
P 7450 1500
F 0 "#PWR079" H 7450 1350 50  0001 C CNN
F 1 "+5V" H 7450 1640 50  0000 C CNN
F 2 "" H 7450 1500 50  0001 C CNN
F 3 "" H 7450 1500 50  0001 C CNN
	1    7450 1500
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR080
U 1 1 5A0FBC84
P 9650 1500
F 0 "#PWR080" H 9650 1350 50  0001 C CNN
F 1 "+2V5" H 9650 1640 50  0000 C CNN
F 2 "" H 9650 1500 50  0001 C CNN
F 3 "" H 9650 1500 50  0001 C CNN
	1    9650 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR081
U 1 1 5A0FBDB5
P 7900 2800
F 0 "#PWR081" H 7900 2550 50  0001 C CNN
F 1 "GND" H 7900 2650 50  0000 C CNN
F 2 "" H 7900 2800 50  0001 C CNN
F 3 "" H 7900 2800 50  0001 C CNN
	1    7900 2800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C27
U 1 1 5A0FBF06
P 7450 2400
F 0 "C27" H 7460 2470 50  0000 L CNN
F 1 "4.7uF" H 7460 2320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7450 2400 50  0001 C CNN
F 3 "" H 7450 2400 50  0001 C CNN
	1    7450 2400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C26
U 1 1 5A0FC0C9
P 7450 1700
F 0 "C26" H 7460 1770 50  0000 L CNN
F 1 "1uF" H 7460 1620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7450 1700 50  0001 C CNN
F 3 "" H 7450 1700 50  0001 C CNN
	1    7450 1700
	1    0    0    -1  
$EndComp
Text GLabel 7700 1100 0    60   Input ~ 0
POK_1V5_MODULE
$Comp
L R_Small R9
U 1 1 5A0FC40C
P 7900 1800
F 0 "R9" H 7930 1820 50  0000 L CNN
F 1 "0" H 7930 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7900 1800 50  0001 C CNN
F 3 "" H 7900 1800 50  0001 C CNN
	1    7900 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR082
U 1 1 5A0FC59D
P 7450 1800
F 0 "#PWR082" H 7450 1550 50  0001 C CNN
F 1 "GND" H 7450 1650 50  0000 C CNN
F 2 "" H 7450 1800 50  0001 C CNN
F 3 "" H 7450 1800 50  0001 C CNN
	1    7450 1800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 5A0FD4FD
P 6950 2300
F 0 "R5" H 6980 2320 50  0000 L CNN
F 1 "2.4k" H 6980 2260 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6950 2300 50  0001 C CNN
F 3 "" H 6950 2300 50  0001 C CNN
	1    6950 2300
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR083
U 1 1 5A0FD58A
P 6950 2000
F 0 "#PWR083" H 6950 1850 50  0001 C CNN
F 1 "+2V5" H 6950 2140 50  0000 C CNN
F 2 "" H 6950 2000 50  0001 C CNN
F 3 "" H 6950 2000 50  0001 C CNN
	1    6950 2000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 5A0FD67E
P 6950 2100
F 0 "R4" H 6980 2120 50  0000 L CNN
F 1 "5.1k" H 6980 2060 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6950 2100 50  0001 C CNN
F 3 "" H 6950 2100 50  0001 C CNN
	1    6950 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR084
U 1 1 5A0FD898
P 6950 2400
F 0 "#PWR084" H 6950 2150 50  0001 C CNN
F 1 "GND" H 6950 2250 50  0000 C CNN
F 2 "" H 6950 2400 50  0001 C CNN
F 3 "" H 6950 2400 50  0001 C CNN
	1    6950 2400
	1    0    0    -1  
$EndComp
Text GLabel 9850 1900 2    60   Output ~ 0
POK_2V5
$Comp
L R_Small R11
U 1 1 5A0FE847
P 9650 1750
F 0 "R11" H 9680 1770 50  0000 L CNN
F 1 "10k" H 9680 1710 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 9650 1750 50  0001 C CNN
F 3 "" H 9650 1750 50  0001 C CNN
	1    9650 1750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C28
U 1 1 5A100120
P 9450 2200
F 0 "C28" H 9460 2270 50  0000 L CNN
F 1 "10uF" H 9460 2120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9450 2200 50  0001 C CNN
F 3 "" H 9450 2200 50  0001 C CNN
	1    9450 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR085
U 1 1 5A100304
P 9450 2300
F 0 "#PWR085" H 9450 2050 50  0001 C CNN
F 1 "GND" H 9450 2150 50  0000 C CNN
F 2 "" H 9450 2300 50  0001 C CNN
F 3 "" H 9450 2300 50  0001 C CNN
	1    9450 2300
	1    0    0    -1  
$EndComp
$Comp
L TEST TP5
U 1 1 5A112711
P 7250 2750
F 0 "TP5" H 7250 3050 50  0000 C BNN
F 1 "TEST_2V5" H 7250 3000 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 7250 2750 50  0001 C CNN
F 3 "" H 7250 2750 50  0001 C CNN
	1    7250 2750
	-1   0    0    1   
$EndComp
$Comp
L TEST TP2
U 1 1 5A1134F7
P 7050 4150
F 0 "TP2" H 7050 4450 50  0000 C BNN
F 1 "TEST_5V" H 7050 4400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 7050 4150 50  0001 C CNN
F 3 "" H 7050 4150 50  0001 C CNN
	1    7050 4150
	-1   0    0    1   
$EndComp
$Comp
L TEST TP1
U 1 1 5A113F6A
P 1100 2800
F 0 "TP1" H 1100 3100 50  0000 C BNN
F 1 "TEST_BAT" H 1100 3050 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 1100 2800 50  0001 C CNN
F 3 "" H 1100 2800 50  0001 C CNN
	1    1100 2800
	0    1    1    0   
$EndComp
$Comp
L TEST TP3
U 1 1 5A114A14
P 4950 6300
F 0 "TP3" H 4950 6600 50  0000 C BNN
F 1 "TEST_3V3" H 4950 6550 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 4950 6300 50  0001 C CNN
F 3 "" H 4950 6300 50  0001 C CNN
	1    4950 6300
	-1   0    0    1   
$EndComp
$Comp
L C C25
U 1 1 5A14388F
P 3600 1450
F 0 "C25" H 3625 1550 50  0000 L CNN
F 1 "10uF" H 3625 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3638 1300 50  0001 C CNN
F 3 "" H 3600 1450 50  0001 C CNN
	1    3600 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR086
U 1 1 5A1439A1
P 3600 1600
F 0 "#PWR086" H 3600 1350 50  0001 C CNN
F 1 "GND" H 3600 1450 50  0000 C CNN
F 2 "" H 3600 1600 50  0001 C CNN
F 3 "" H 3600 1600 50  0001 C CNN
	1    3600 1600
	1    0    0    -1  
$EndComp
$Comp
L INA260AIPW U7
U 1 1 5A14472F
P 3250 4450
F 0 "U7" H 2549 5191 50  0000 L BNN
F 1 "INA260AIPW" H 2549 3591 50  0000 L BNN
F 2 "INA260AIPW:SOP65P640X120-16N" H 3250 4450 50  0001 L BNN
F 3 "INA260AIPW" H 3250 4450 50  0001 L BNN
F 4 "Good" H 3250 4450 50  0001 L BNN "Availability"
F 5 "High/Low-Side Digital Current/Power Monitor with Integrated 2mΩ Shunt Resistor 16-TSSOP -40 to 125" H 3250 4450 50  0001 L BNN "Description"
F 6 "Texas Instruments" H 3250 4450 50  0001 L BNN "MF"
F 7 "TSSOP-16 Texas Instruments" H 3250 4450 50  0001 L BNN "Package"
F 8 "3.76 USD" H 3250 4450 50  0001 L BNN "Price"
	1    3250 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR087
U 1 1 5A14664B
P 3850 5050
F 0 "#PWR087" H 3850 4800 50  0001 C CNN
F 1 "GND" H 3850 4900 50  0000 C CNN
F 2 "" H 3850 5050 50  0001 C CNN
F 3 "" H 3850 5050 50  0001 C CNN
	1    3850 5050
	1    0    0    -1  
$EndComp
$Comp
L TEST TP11
U 1 1 5A147218
P 3600 4050
F 0 "TP11" H 3600 4350 50  0000 C BNN
F 1 "PWRMON_ALERT" H 3600 4300 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 3600 4050 50  0001 C CNN
F 3 "" H 3600 4050 50  0001 C CNN
	1    3600 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 5900 2200 6650
Wire Wire Line
	5950 4050 5950 3650
Wire Wire Line
	5950 3650 5500 3650
Wire Wire Line
	4550 3650 5200 3650
Wire Wire Line
	4550 4350 4550 3650
Connection ~ 4550 4350
Wire Wire Line
	5950 4350 5950 4850
Wire Wire Line
	4750 4150 4650 4150
Wire Wire Line
	4650 4150 4650 3850
Wire Wire Line
	4650 3850 6050 3850
Wire Wire Line
	6050 3850 6050 4150
Connection ~ 6050 4150
Connection ~ 6650 4150
Connection ~ 6400 4150
Connection ~ 6150 4150
Wire Wire Line
	6650 4400 6650 4350
Wire Wire Line
	6150 4400 6650 4400
Wire Wire Line
	6400 4400 6400 4350
Wire Wire Line
	6150 4400 6150 4350
Connection ~ 6400 4400
Wire Wire Line
	3650 6300 4100 6300
Wire Wire Line
	3650 6600 3800 6600
Wire Wire Line
	3800 6600 3800 7100
Wire Wire Line
	1100 2000 1100 4950
Wire Wire Line
	1100 2000 2450 2000
Wire Wire Line
	2450 2100 2250 2100
Wire Wire Line
	2250 2100 2250 2000
Connection ~ 2250 2000
Wire Wire Line
	2200 2200 2450 2200
Wire Wire Line
	2200 2500 2200 2950
Wire Wire Line
	3850 2950 1850 2950
Wire Wire Line
	3450 2500 3850 2500
Wire Wire Line
	3850 2500 3850 2950
Wire Wire Line
	3450 2600 3850 2600
Connection ~ 3850 2600
Wire Wire Line
	3450 2700 3550 2700
Wire Wire Line
	3950 2300 4150 2300
Wire Wire Line
	4150 2300 4150 2350
Wire Wire Line
	1850 2950 1850 2250
Connection ~ 2200 2950
Wire Wire Line
	1850 2050 1850 2000
Connection ~ 1850 2000
Connection ~ 5950 4550
Connection ~ 5950 4650
Wire Wire Line
	4750 4550 4750 4850
Connection ~ 4750 4800
Wire Wire Line
	1200 1300 4400 1300
Connection ~ 3450 2000
Connection ~ 3450 1300
Wire Wire Line
	3450 1300 3450 2100
Wire Wire Line
	4400 1300 4400 3200
Wire Wire Line
	4400 3200 1800 3200
Wire Wire Line
	4250 4350 4750 4350
Wire Wire Line
	1200 1700 1200 1500
Wire Wire Line
	1300 1400 1200 1400
Wire Wire Line
	3650 6700 3800 6700
Connection ~ 3800 6700
Wire Wire Line
	2200 7050 4700 7050
Connection ~ 3800 7050
Wire Wire Line
	2200 7050 2200 6850
Wire Wire Line
	2200 6300 2450 6300
Connection ~ 2200 6300
Wire Wire Line
	2100 6500 2450 6500
Wire Wire Line
	4050 6600 4050 6300
Connection ~ 4050 6300
Wire Wire Line
	4050 7050 4050 6900
Wire Wire Line
	4450 6050 4450 6650
Wire Wire Line
	4400 6300 5350 6300
Wire Wire Line
	4450 7050 4450 6850
Connection ~ 4050 7050
Connection ~ 4450 6300
Wire Wire Line
	2450 6600 2450 6050
Wire Wire Line
	2450 6050 4450 6050
Wire Wire Line
	4700 6650 4700 6300
Connection ~ 4700 6300
Wire Wire Line
	4700 7050 4700 6850
Connection ~ 4450 7050
Wire Wire Line
	7450 1500 8000 1500
Wire Wire Line
	8000 1600 7450 1600
Wire Wire Line
	7450 1600 7450 1500
Wire Wire Line
	9400 1500 9650 1500
Wire Wire Line
	9400 1600 9650 1600
Wire Wire Line
	9650 1500 9650 1650
Wire Wire Line
	7900 2100 7900 2800
Wire Wire Line
	7450 2700 8000 2700
Wire Wire Line
	8000 2500 7900 2500
Connection ~ 7900 2700
Wire Wire Line
	8000 2300 7450 2300
Wire Wire Line
	7450 2500 7450 2700
Wire Wire Line
	7700 1100 7750 1100
Wire Wire Line
	7750 1100 7750 1800
Wire Wire Line
	7750 1800 7800 1800
Wire Wire Line
	8000 2100 7900 2100
Connection ~ 7900 2500
Wire Wire Line
	6950 2200 8000 2200
Wire Wire Line
	8000 1900 9850 1900
Wire Wire Line
	8000 1900 8000 2000
Wire Wire Line
	9650 1900 9650 1850
Connection ~ 9650 1900
Connection ~ 9650 1600
Wire Wire Line
	9450 2100 9450 1600
Connection ~ 9450 1600
Wire Wire Line
	7250 2750 7250 2200
Connection ~ 7250 2200
Connection ~ 1100 2800
Wire Wire Line
	3600 4950 3850 4950
Wire Wire Line
	3850 4950 3850 5050
Wire Wire Line
	3850 5050 3600 5050
Wire Wire Line
	2250 3400 2250 4350
Wire Wire Line
	2250 4350 2350 4350
Wire Wire Line
	1800 3200 1800 4750
Connection ~ 1800 4250
Wire Wire Line
	4400 4400 4400 4350
Connection ~ 4400 4350
Wire Wire Line
	4400 4700 4400 4800
Wire Wire Line
	5950 4150 7050 4150
Wire Wire Line
	2250 3400 4250 3400
Wire Wire Line
	4250 3400 4250 4350
Wire Wire Line
	1600 4250 2350 4250
Wire Wire Line
	1300 4250 1100 4250
Connection ~ 1100 4250
Wire Wire Line
	3600 3850 3600 3550
Wire Wire Line
	3600 3550 1800 3550
Connection ~ 1800 3550
Wire Wire Line
	4400 4800 4750 4800
$Comp
L +5V #PWR088
U 1 1 5A14C03F
P 7050 4150
F 0 "#PWR088" H 7050 4000 50  0001 C CNN
F 1 "+5V" H 7050 4290 50  0000 C CNN
F 2 "" H 7050 4150 50  0001 C CNN
F 3 "" H 7050 4150 50  0001 C CNN
	1    7050 4150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR089
U 1 1 5A14CB58
P 2200 5900
F 0 "#PWR089" H 2200 5750 50  0001 C CNN
F 1 "+5V" H 2200 6040 50  0000 C CNN
F 2 "" H 2200 5900 50  0001 C CNN
F 3 "" H 2200 5900 50  0001 C CNN
	1    2200 5900
	1    0    0    -1  
$EndComp
Connection ~ 3600 1300
Wire Wire Line
	4750 2800 4750 4050
Wire Wire Line
	4750 3150 5000 3150
Text GLabel 1700 4650 0    60   BiDi ~ 0
I2C3_SDA
Text GLabel 1700 4450 0    60   Input ~ 0
I2C3_SCL
$Comp
L GND #PWR090
U 1 1 5A151BA1
P 1950 4000
F 0 "#PWR090" H 1950 3750 50  0001 C CNN
F 1 "GND" H 1950 3850 50  0000 C CNN
F 2 "" H 1950 4000 50  0001 C CNN
F 3 "" H 1950 4000 50  0001 C CNN
	1    1950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4000 2100 4000
Wire Wire Line
	2100 4000 2100 4150
Wire Wire Line
	2100 4150 2350 4150
Wire Wire Line
	2350 4050 2350 3850
$Comp
L GND #PWR091
U 1 1 5A152283
P 1100 5250
F 0 "#PWR091" H 1100 5000 50  0001 C CNN
F 1 "GND" H 1100 5100 50  0000 C CNN
F 2 "" H 1100 5250 50  0001 C CNN
F 3 "" H 1100 5250 50  0001 C CNN
	1    1100 5250
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 5A1526FB
P 2150 5050
F 0 "C24" H 2175 5150 50  0000 L CNN
F 1 "0.1uF" H 2175 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2188 4900 50  0001 C CNN
F 3 "" H 2150 5050 50  0001 C CNN
	1    2150 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR092
U 1 1 5A1529D5
P 2150 5200
F 0 "#PWR092" H 2150 4950 50  0001 C CNN
F 1 "GND" H 2150 5050 50  0000 C CNN
F 2 "" H 2150 5200 50  0001 C CNN
F 3 "" H 2150 5200 50  0001 C CNN
	1    2150 5200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 5A152FEA
P 1900 4750
F 0 "R7" H 1930 4770 50  0000 L CNN
F 1 "0" H 1930 4710 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1900 4750 50  0001 C CNN
F 3 "" H 1900 4750 50  0001 C CNN
	1    1900 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4750 2350 4750
Wire Wire Line
	2350 3850 2150 3850
Wire Wire Line
	2150 3850 2150 4900
Connection ~ 2150 4750
Wire Wire Line
	1700 4450 2350 4450
Wire Wire Line
	2350 4650 1700 4650
$Comp
L Conn_01x02 J22
U 1 1 5A156135
P 4650 2600
F 0 "J22" H 4650 2700 50  0000 C CNN
F 1 "Conn_PWRON" H 4650 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4650 2600 50  0001 C CNN
F 3 "" H 4650 2600 50  0001 C CNN
	1    4650 2600
	0    -1   -1   0   
$EndComp
Connection ~ 4750 3150
Wire Wire Line
	4650 3650 4650 2800
Connection ~ 4650 3650
$Comp
L TPS74801DRCR U11
U 1 1 5A15BB2E
P 9450 4700
AR Path="/59F39178/5A15BB2E" Ref="U11"  Part="1" 
AR Path="/59F3D3B4/5A15BB2E" Ref="U?"  Part="1" 
F 0 "U11" H 9239 5474 50  0000 L BNN
F 1 "TPS74801DRCR" H 9263 3689 50  0000 L BNN
F 2 "TPS74801DRCR:SON50P300X300X100-11N" H 9450 4700 50  0001 L BNN
F 3 "TPS74801DRCR" H 9450 4700 50  0001 L BNN
F 4 "Good" H 9450 4700 50  0001 L BNN "Availability"
F 5 "1.25 USD" H 9450 4700 50  0001 L BNN "Price"
F 6 "Single Output LDO, 1.5A, Adj. (0.8 to 3.6V), Programmable Soft-Start 10-VSON -40 to 125" H 9450 4700 50  0001 L BNN "Description"
F 7 "Texas Instruments" H 9450 4700 50  0001 L BNN "MF"
F 8 "VSON-10 Texas Instruments" H 9450 4700 50  0001 L BNN "Package"
	1    9450 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR093
U 1 1 5A15BB35
P 8200 4200
F 0 "#PWR093" H 8200 4050 50  0001 C CNN
F 1 "+5V" H 8200 4340 50  0000 C CNN
F 2 "" H 8200 4200 50  0001 C CNN
F 3 "" H 8200 4200 50  0001 C CNN
	1    8200 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR094
U 1 1 5A15BB3B
P 8650 5500
F 0 "#PWR094" H 8650 5250 50  0001 C CNN
F 1 "GND" H 8650 5350 50  0000 C CNN
F 2 "" H 8650 5500 50  0001 C CNN
F 3 "" H 8650 5500 50  0001 C CNN
	1    8650 5500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C33
U 1 1 5A15BB41
P 8200 5100
F 0 "C33" H 8210 5170 50  0000 L CNN
F 1 "4.7uF" H 8210 5020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8200 5100 50  0001 C CNN
F 3 "" H 8200 5100 50  0001 C CNN
	1    8200 5100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C29
U 1 1 5A15BB48
P 8200 4400
F 0 "C29" H 8210 4470 50  0000 L CNN
F 1 "1uF" H 8210 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8200 4400 50  0001 C CNN
F 3 "" H 8200 4400 50  0001 C CNN
	1    8200 4400
	1    0    0    -1  
$EndComp
Text GLabel 8450 3800 0    60   Input ~ 0
POK_3V3
$Comp
L R_Small R15
U 1 1 5A15BB50
P 8650 4500
F 0 "R15" H 8680 4520 50  0000 L CNN
F 1 "0" H 8680 4460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8650 4500 50  0001 C CNN
F 3 "" H 8650 4500 50  0001 C CNN
	1    8650 4500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR095
U 1 1 5A15BB57
P 8200 4500
F 0 "#PWR095" H 8200 4250 50  0001 C CNN
F 1 "GND" H 8200 4350 50  0000 C CNN
F 2 "" H 8200 4500 50  0001 C CNN
F 3 "" H 8200 4500 50  0001 C CNN
	1    8200 4500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R14
U 1 1 5A15BB5D
P 7700 5000
F 0 "R14" H 7730 5020 50  0000 L CNN
F 1 "2.4k" H 7730 4960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7700 5000 50  0001 C CNN
F 3 "" H 7700 5000 50  0001 C CNN
	1    7700 5000
	1    0    0    -1  
$EndComp
$Comp
L +1V5 #PWR096
U 1 1 5A15BB64
P 7700 4700
F 0 "#PWR096" H 7700 4550 50  0001 C CNN
F 1 "+1V5" H 7700 4840 50  0000 C CNN
F 2 "" H 7700 4700 50  0001 C CNN
F 3 "" H 7700 4700 50  0001 C CNN
	1    7700 4700
	1    0    0    -1  
$EndComp
$Comp
L R_Small R13
U 1 1 5A15BB6A
P 7700 4800
F 0 "R13" H 7730 4820 50  0000 L CNN
F 1 "2.1k" H 7730 4760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7700 4800 50  0001 C CNN
F 3 "" H 7700 4800 50  0001 C CNN
	1    7700 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR097
U 1 1 5A15BB71
P 7700 5100
F 0 "#PWR097" H 7700 4850 50  0001 C CNN
F 1 "GND" H 7700 4950 50  0000 C CNN
F 2 "" H 7700 5100 50  0001 C CNN
F 3 "" H 7700 5100 50  0001 C CNN
	1    7700 5100
	1    0    0    -1  
$EndComp
Text GLabel 10600 4600 2    60   Output ~ 0
POK_1V5
$Comp
L C_Small C34
U 1 1 5A15BB78
P 10200 4900
F 0 "C34" H 10210 4970 50  0000 L CNN
F 1 "10uF" H 10210 4820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10200 4900 50  0001 C CNN
F 3 "" H 10200 4900 50  0001 C CNN
	1    10200 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR098
U 1 1 5A15BB7F
P 10200 5000
F 0 "#PWR098" H 10200 4750 50  0001 C CNN
F 1 "GND" H 10200 4850 50  0000 C CNN
F 2 "" H 10200 5000 50  0001 C CNN
F 3 "" H 10200 5000 50  0001 C CNN
	1    10200 5000
	1    0    0    -1  
$EndComp
$Comp
L +1V5 #PWR099
U 1 1 5A15BB85
P 10400 4200
F 0 "#PWR099" H 10400 4050 50  0001 C CNN
F 1 "+1V5" H 10400 4340 50  0000 C CNN
F 2 "" H 10400 4200 50  0001 C CNN
F 3 "" H 10400 4200 50  0001 C CNN
	1    10400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4200 8750 4200
Wire Wire Line
	8750 4300 8200 4300
Wire Wire Line
	8200 4300 8200 4200
Wire Wire Line
	10150 4200 10400 4200
Wire Wire Line
	10150 4300 10400 4300
Wire Wire Line
	10400 4300 10400 4200
Wire Wire Line
	8650 4800 8650 5500
Wire Wire Line
	8200 5400 8750 5400
Wire Wire Line
	8750 5200 8650 5200
Connection ~ 8650 5400
Wire Wire Line
	8750 5000 8200 5000
Wire Wire Line
	8200 5200 8200 5400
Wire Wire Line
	8450 3800 8500 3800
Wire Wire Line
	8500 3800 8500 4500
Wire Wire Line
	8500 4500 8550 4500
Wire Wire Line
	8750 4800 8650 4800
Connection ~ 8650 5200
Wire Wire Line
	7700 4900 8750 4900
Wire Wire Line
	8750 4600 10600 4600
Wire Wire Line
	8750 4600 8750 4700
Wire Wire Line
	10200 4800 10200 4300
Connection ~ 10200 4300
$Comp
L TEST TP12
U 1 1 5A15BBA1
P 7950 5800
F 0 "TP12" H 7950 6100 50  0000 C BNN
F 1 "TEST_1V5" H 7950 6050 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 7950 5800 50  0001 C CNN
F 3 "" H 7950 5800 50  0001 C CNN
	1    7950 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	7950 4900 7950 5800
Connection ~ 7950 4900
Text GLabel 5500 6050 2    60   Output ~ 0
POK_3V3
Connection ~ 4950 6300
Wire Wire Line
	4950 6050 4950 6300
$Comp
L R_Small R8
U 1 1 5A15E92A
P 5200 6050
F 0 "R8" H 5230 6070 50  0000 L CNN
F 1 "0" H 5230 6010 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5200 6050 50  0001 C CNN
F 3 "" H 5200 6050 50  0001 C CNN
	1    5200 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 6050 5100 6050
Wire Wire Line
	5300 6050 5500 6050
Text GLabel 7000 3650 2    60   Output ~ 0
POK_5V
$Comp
L R_Small R10
U 1 1 5A160721
P 6850 3650
F 0 "R10" H 6880 3670 50  0000 L CNN
F 1 "0" H 6880 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6850 3650 50  0001 C CNN
F 3 "" H 6850 3650 50  0001 C CNN
	1    6850 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3650 7000 3650
Wire Wire Line
	6650 4150 6650 3650
Wire Wire Line
	6650 3650 6750 3650
Text GLabel 1050 6700 0    60   Input ~ 0
POK_2V5
$Comp
L SN74LVC1G14DBVR U5
U 1 1 5A162254
P 1950 6700
F 0 "U5" H 1720 7195 50  0000 L BNN
F 1 "SN74LVC1G14DBVR" H 1450 6000 50  0000 L BNN
F 2 "SN74LVC1G14DBVR:SOT95P280X145-5N" H 1950 6700 50  0001 L BNN
F 3 "SN74LVC1G14DBVR" H 1950 6700 50  0001 L BNN
F 4 "Good" H 1950 6700 50  0001 L BNN "Availability"
F 5 "Inverter Schmitt Trigger 1-Element CMOS 5-Pin SOT-23 T/R" H 1950 6700 50  0001 L BNN "Description"
F 6 "Texas Instruments" H 1950 6700 50  0001 L BNN "MF"
F 7 "SOT-23-5 Texas Instruments" H 1950 6700 50  0001 L BNN "Package"
F 8 "0.12 USD" H 1950 6700 50  0001 L BNN "Price"
	1    1950 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6700 1250 6700
$Comp
L GND #PWR0100
U 1 1 5A163058
P 1250 7200
F 0 "#PWR0100" H 1250 6950 50  0001 C CNN
F 1 "GND" H 1250 7050 50  0000 C CNN
F 2 "" H 1250 7200 50  0001 C CNN
F 3 "" H 1250 7200 50  0001 C CNN
	1    1250 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7200 1250 7100
Wire Wire Line
	2200 6050 1250 6050
Wire Wire Line
	1250 6050 1250 6500
Connection ~ 2200 6050
$EndSCHEMATC
