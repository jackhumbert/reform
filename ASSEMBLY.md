# MNT Reform 2.0R-3 Assembly

**Author**: Lukas F. Hartmann / MNT Research GmbH (https://mntre.com)
**Date**: 2021-07-30
**License**: GPLv3

## Parts Reference

| Reference             | Source/Description/MPN |
| --------------------- | ---------------------- |
| TB Cup                | 3D Printed PLA: https://source.mnt.re/reform/reform/-/blob/master/reform2-3d-printed-parts/trackball/reform2-trackball-support-20201005.stl |
| TB Sensor FPC         | 6-pin 0.5mm pitch flex cable: Würth Elektronik 687606050002 | 
| TB Sensor PCBA        | PCBA: https://source.mnt.re/reform/reform/-/tree/master/reform2-trackball-sensor-pcb |
| TB Controller PCBA    | PCBA: https://source.mnt.re/reform/reform/-/tree/master/reform2-trackball-pcb |
| TB Lid                | 3D Printed PLA: https://source.mnt.re/reform/reform/-/blob/master/reform2-3d-printed-parts/trackball/reform2-trackball-lid-20201005.stl | 
| TB Ball               | 25mm diameter POM sphere, black |
| TB Firmware           | Source: https://source.mnt.re/reform/reform/-/tree/master/reform2-trackball-fw |
| TB M2 Thread Insert   | KVT 300113472 / Tappex HiMOULD 017/117 |
| TB Circular Button    | 3D Printed SLA: https://source.mnt.re/reform/reform/-/blob/master/reform2-3d-printed-parts/trackball/reform2-trackball-button-circular-20200123.stl |
| TB Rectangular Button | 3D Printed SLA: https://source.mnt.re/reform/reform/-/blob/master/reform2-3d-printed-parts/trackball/reform2-trackball-button-rectangular-20200123.stl |
| TP Controller PCBA    | Source: https://source.mnt.re/reform/reform/-/tree/master/reform2-trackpad-pcb |
| TP Sensor PCBA        | Azoteq TPS65-201A-B |
| TP Sensor Cable       | 6-pin 0.5mm pitch flex cable: Würth Elektronik 687606050002 |
| TP Carrier            | 3D Printed PLA: https://source.mnt.re/reform/reform/-/blob/master/reform2-3d-printed-parts/trackpad/reform2-trackpad-support-20201005.stl |
| TP Firmware           | Source: https://source.mnt.re/reform/reform/-/tree/master/reform2-trackpad-fw |
| Keyboard PCBA         | Source: https://source.mnt.re/reform/reform/-/tree/master/reform2-keyboard-pcb |
| Keycaps               | 72x FKcaps MBK 1U or Kailh BSPG1350-06001P2, 10x FKcaps MBK 1.5U or Kailh BSPG1350-06009. Translucent ABS coated with black PU. |
| KB Firmware           | Source: https://source.mnt.re/reform/reform/-/tree/master/reform2-keyboard-fw |
| LPC Firmware          | Source: https://source.mnt.re/reform/reform/-/tree/master/reform2-lpc-fw |
| Display Cable         | eDP DuPont (2mm pitch, 2x15P) to IPEX cable, Spec: https://source.mnt.re/reform/reform/-/blob/master/reform2-cables/mnt-reform2-edp-cable.pdf |
| Display Panel         | Innolux N125HCE-GN1 |
| Left Hinge            | Smooth Technology SMS-ZZ-219-R |
| Right Hinge           | Smooth Technology SMS-ZZ-219-L |
| Speaker               | PUI Audio AS01808AO-3-R |
| Speaker Cable         | MREFCBLS20R01, JST-PH 4P cable, 24AWG, 10-26.5cm length, Spec: https://source.mnt.re/reform/reform/-/blob/master/reform2-cables/mnt-reform2-speakers-cable.png |
| Speaker Holder        | 3D Printed PLA: https://source.mnt.re/reform/reform/-/blob/master/reform2-3d-printed-parts/speakers/reform2-speaker-closer-20201005.stl |
| OLED PCBA             | Source: https://source.mnt.re/reform/reform/-/tree/master/reform2-oled-pcb |
| OLED Cable            | 4P (1mm pitch) FPC, Würth Elektronik 686704050001 |
| USB/SYSCTL Cable      | MREFCBLU20R01, JST-PH 4P cable, 24AWG, 15cm length, Spec: https://source.mnt.re/reform/reform/-/blob/master/reform2-cables/mnt-reform2-serial-cable.png |
| MIPI-DSI Cable        | Würth Elektronik 687733050002 |
| Battery Cable         | Molex 151320502 (PicoLock, 5P) |
| Side Panels           | Lasercut 1mm Acrylic: https://source.mnt.re/reform/reform/-/blob/master/reform2-case-ports/ports-20d3-v2-laser.pdf |
| Magnet                | Neodymium N52, 10x3x2.4mm, Nickel Coating, Thickness Magnetized |
| Rubber Foot           | Modulor 0303782 |
| CPU Module            | Boundary Devices Nit8MQ_SOM_4r16e, or RBZ/MNT LS1028A (https://source.mnt.re/reform/mnt-reform-layerscape-ls1028a-som), or MNT RKX7 (https://source.mnt.re/reform/reform-kintex-som) |
| Heatsink              | CNC milled, anodized Al6061. Source: https://source.mnt.re/reform/reform/-/blob/master/reform2-heatsink/reform2-heatsink.scad |
| Spacer A              | Würth Elektronik 960030021 |
| Spacer B              | Würth Elektronik 960040021 |
| M2x4-7985H            | Screw M2x4 Black Pan Head DIN 7985H |
| M2x5-965H             | Screw M2x5 Black Countersunk DIN 965H |
| M2x6-965H             | Screw M2x6 Silver Countersunk DIN 965H |
| M2x12-965H            | Screw M2x12 Silver Countersunk DIN 965H |
| M4x5-965H             | Screw M4x5 Silver Countersunk DIN 965H |
| Battery Cell          | LiFePO4 18650, JGNE HTCFR18650 |


## Subassembly: Trackball (MREFATB)

![Trackball Subassembly](https://mntre.com/reform2/handbook/_images/7-callouts.png)

1. Mount 2x *TB M2 Thread* in *TB Cup*
2. Plug *TB Sensor FPC* into *TB Sensor PCBA*
3. Mount *TB Sensor PCB* on *Cup* with 2x *M2x5-965H*
4. Mount *Cup* with Sensor on *TB Controller PCB* using 4x *M2x4-7985H*
5. Plug other end of *TB Sensor FPC* into *TB Controller PCBA*
6. Place *TB Ball* in *TB Cup*
7. Mount *TB Lid* on *TB Cup* using 2x *M2x4-7985H*
8. Flash *TB Firmware*. Refer to https://mntre.com/reform2/handbook/parts.html#trackball-firmware

## Subassembly: TP Glass Assembly

1. Source frosted glass surface with black backprint (All edges and corners deburred, max 0.3mm radius) according to https://source.mnt.re/reform/reform/-/blob/master/reform2-trackpad-pcb/trackpad-glass-glue-gasket-20200807.step
2. Attach adhesive tape layer (0.14mm 3M 9495MP) on bottom side according to https://source.mnt.re/reform/reform/-/blob/master/reform2-trackpad-pcb/revised-gasket.dwg
3. Attach gasket layer (0.14mm 3M 9495MP + 0.125mm black mylar) on top side according to https://source.mnt.re/reform/reform/-/blob/master/reform2-trackpad-pcb/revised-gasket.dwg

## Subassembly: Trackpad (MREFATP)

![Trackpad Subassembly](https://mntre.com/reform2/handbook/_images/8-2-callouts.png)

1. Mount *TP Sensor PCBA* on *TP Carrier* and remove foil covering adhesive of *TP Sensor PCBA*
2. Mount *TP Glass Assembly* on *TP Carrier* and *TP Sensor PCBA* using adhesive on bottom side of *TP Glass Assembly*
3. Mount *TP Controller PCBA* on bottom side of *TP Carrier* using 2x M2x4-7985H
4. Connect *TP Controller PCBA* and *TP Sensor PCBA* using *TP Sensor FPC*
5. Flash *TP Firmware*. Refer to https://mntre.com/reform2/handbook/parts.html#trackpad-firmware

## Subassembly: Keyboard (MREFAKB)

![Keyboard Module](https://mntre.com/reform2/handbook/_images/kbd-callouts.png)

1. Install Keycaps on *MREFAKB*
2. Laser engrave Keycaps using desired lettering, i.e.: https://source.mnt.re/reform/reform/-/blob/master/reform2-keyboard-pcb/lettering/reform2-keyboard-v6-lettering-qwerty-medium-paths.svg
3. Flash *KB Firmware*. Refer to https://mntre.com/reform2/handbook/parts.html#keyboard-firmware

## Subassembly: 2x Battery Board

1. On the bottom of each of 2x *Battery PCBA*, isolate through hole pins with 2cm wide Kapton tape.
2. Plug 1x *Battery Cable* into each *Battery PCBA* (2x).
3. Wrap other ends of each *Battery Cable* in tape for isolation during transport.
4. Yield 2x *Battery Board*.
5. Mount 2x *Battery Board* in *Main Box* using 4x pan head M2x6 screws.

## Subassembly: Speaker Assembly

1. Solder *Speaker Cable* leads to 2x *Speaker*, yielding *Speaker Assembly*.

## Subassembly: Screen and Hinges

![Screen Assembly Speakers](https://mntre.com/reform2/handbook/_images/speaker.png)

1. Mount *Left Hinge* and *Right Hinge* in the bottom left and right corners of *Screen Back* with 3x M4x5-965H screws each. Note that the hinge labeled “SMS-ZZ-219-L” goes on the right side, and the hinge labeled “SMS-ZZ-219-R” goes on the left side.
2. Mount 4x *Magnet* in magnet slots of *Main Box*.
3. Mount 4x Matching *Magnet* in magnet slots along the top edge of the Screen Back. These, together with their counterparts in the Main Box, hold the laptop shut when closed.
4. Connect *Display Cable* in back of *Display Panel*.
5. Secure IPEX connector of *Display Cable* with Kapton tape.
6. Insert *Display Panel* in *Screen Back*.
7. Mount *Speaker Assembly* below the *Display Panel* and secure with 2x *Speaker Holder*. Mount each holder with 2x *M2x5-965H* screws.
8. Feed *Speaker Cable* and *Display Cable* through the cutout in the hinge and into the *Main Box*.
9. Mount other half of each hinge to the Main Box with 4x *M2x6-965H* each.
10. Mount *Screen Front* to *Screen Back* with 7x *M2x5-965H*.

## Subassembly: Motherboard with SOM and Heatsink

1. Connect MIPI-DSI port of *CPU Module* to MIPI-DSI socket on *MREFAMB* using *MIPI-DSI Cable*.
2. Plug *CPU Module* into CPU slot of Motherboard *MREFAMB*.
3. Apply thermal paste on CPU die.
4. Mount *Heatsink* on *CPU Module* and *MREFAMB* using 4x *M2x12-965H* screws and 2x 3mm *Spacer A* and 2x 4mm *Spacer B*.
5. Power *MREFAMB* via 24V DC jack and flash *MREFAMB* with *LPC Firmware* using a MicroUSB cable. Refer to procedure: https://mntre.com/reform2/handbook/parts.html#flashing-the-firmware

## Final Device Assembly

![OLED Module](https://mntre.com/reform2/handbook/_images/21-callouts.png)

![Final Device Assembly Top 2](https://mntre.com/reform2/handbook/_images/23.png)

![Final Device Assembly Bottom](https://mntre.com/reform2/handbook/_images/30.png)

![Final Device Assembly Bottom 2](https://mntre.com/reform2/handbook/_images/33.png)

1. Mount the *Motherboard with SOM and Heatsink* with 4x *M2x4-7985H* screws to the main box.
2. Plug the *Display Cable* into the DISPLAY header. The *Display Cable* has a white dot marking pin 1. The white dot must point in the direction of the hinges (off the motherboard).
3. Plug the speaker cable into the SPEAKERS header on the motherboard.
4. Mount the assembled trackball (*MREFATP*) with 4x *M2x4-7985H*. Or mount the assembled trackpad (*MREFATB*) with 2x *M2x4-7985H*.
5. Connect *MREFATB*/*MREFATP* to motherboard header UI2 with one *USB/SYSCTL Cable*.
6. Flip and open the laptop so that the opening for the trackball/trackpad faces you.
7. Connect *OLED PCBA* to the Keyboard (*MREFAKB*) with *OLED Cable* (blue side up).
8. Connect one *USB/SYSCTL Cable* to the keyboard's internal USB port. Bend the cable downward close to the connector.
9. Connect another *USB/SYSCTL Cable* to the keyboard internal UART/SYSCTL port. Bend the cable downward close to the connector.
10. Feed both cables through the hole in the main box that is closest to each port of the keyboard.
11. Mount the keyboard with 6x *M2x4-7985H* screws. Pull the keyboard towards you while tightening the screws, or keycaps could later conflict with the hinges if the keyboard is mounted a millimeter too far up.
12. Mount the *OLED PCBA* with 2x *M2x4-7985H*. Remove protection film.
13. If it is not straight, very gently un-warp the keyboard frame, section by section with both hands close together. Don’t bend it with both hands on opposite ends of the frame–you’ll likely twist it, especially the thinnest parts around the display!
14. Plug the keyboard frame into the main box and mount it with 6x *M2x5-965H* screws.
15. Flip the laptop on the back, so that the *Battery Boards* are close to you.
16. Connect the *USB Cable* coming through the top left hole in the main box to the motherboard’s UI1 header. Bend the cable down near the plug.
17. Connect the *SYSCTL Cable* cable coming through the top right hole in the main box to the motherboard’s SYSCTL header. Bend the cable down near the plug.
18. Remove protective film from the left and right acrylic *Side Panels* and mount with 2x M2x5-965H screws each. 
19. Plug the 8x *Battery Cell* into the holders. Carefully pay attention to the polarity (+/-)!
20. Put the *Bottom Plate* on the bottom of the *Main Box* and mount it with 10x *M2x6-965H* screws. Don't overtighten screws, don't squeeze cables.
21. Stick 4x *Rubber Foot* in the corners of the acrylic plate (their center approximately 1cm distance from each edge).
