# **02114 - Design of a RISC-V Microprocessor**

# **Full Diagram of Processor**
***Please open image in new tab to get a better view***
<img src="images/RiscV-CPU-Restructured.svg" alt="Processor Diagram" width="100%;">

**This diagram does omit the alu result and memory data signals, that get routed back to the EX stage.**<br>
The long rectangles between stages should not be thought of as pipeline registers, but rather as the interfaces for Input/Output between them.<br>
Pipeline registers are included at the start of each stage.
## Detailed Diagram of Data Memory Logic
<img src="images/DataMemory-Diagram.svg" alt="Data Memory Diagram" width="100%;">

# **How to write to peripherals**
The peripherals are implemented as memory-mapped I/O (MMIO), meaning that loading/storing to specific addresses will interact with the I/O. These addresses will normally be just outside of the address range of the data memory (DM). In this project, we initially had a 1 KiB DM, meaning that the addresses of I/O are 1024 and up. We increased the size of the memory at some point (32 KiB) to force Chisel/Vivado to synthesize this memory to BRAM on our board, but we still kept on using 1024 as the base address of our I/O, since the extra DM was not even going to be used.Thus, to access I/O, one will have to use a load/store instruction at address '1024 + I/O address'. The I/O address can be seen in the table below.

| display   | LEDs  | LEDs_pwm  | switches |
|:---------:|:-----:|:---------:|:--------:|
| 0x10-0x1F |0x30   | 0x40-0x4F | 0x90 |

This address bias can also be found in the MemoryMappedIO module. 

The display is composed of 16 byte registers, each containing one ASCII character worth of data. This 16 character string is cycled through on the display automatically, with a frequency of about 4 shifts/sec at 100 MHz. The first character register has address 0x10, second one 0x11, and so forth.

The LEDs have PWM. The first address (0x30) points to a 16-bit register, which acts as a master switch for each of the 16 LEDs of the Basys3 board. The second address (0x40-0x4F) points to 16 byte registers, which stores the PWM width. If this value is at the maximum = 255, the corresponding LED will be on all of the time. If the LED has a low value (e.g. 30), the LED will only be on some of the time. Beware that perceptual brightness is not a linear function of the PWM width.

The state of the switches can be loaded as 16-bit wide integer on address 0x90.

# **Vivado Settings**



