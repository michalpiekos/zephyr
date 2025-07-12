.. zephyr:board:: blackpill_u585ci

Overview
********

The WeAct Black Pill STM32U585CI Core Board is an extremely low cost and bare-bone
development board featuring the STM32U585CI, see `STM32U585CI website`_.
This is the 48-pin variant of the STM32U585C series,
see `STM32U5 reference manual`_. More info about the board available
on `WeAct Github`_.

Key Features

- STM32U585CI microcontroller in UFQFPN48 package
- ARM |reg| 32-bit Cortex |reg| -M33 with TrustZone |reg|, MPU, DSP and FPU
- 160 MHz max CPU frequency
- 2 MB Flash with ECC and 2 banks
- 784 KB SRAM
- GPIO with external interrupt capability
- 1x14-bit 2.5 MSPS ADC, 1x12-bit 2.5 MSPS ADC
- 2x12-bit DAC
- USB OTG 2.0 full-speed controller
- 1 user LED
- User, boot, and reset push-buttons
- 32.768 kHz and 8MHz HSE crystal oscillators
- Board connectors:

   - USB Type-C |reg| Connector
   - SWD header for external debugger
   - 2x 20-pin GPIO connector

Hardware
********

The STM32U585xx devices are an ultra-low-power microcontrollers family (STM32U5
Series) based on the high-performance Arm|reg| Cortex|reg|-M33 32-bit RISC core.
They operate at a frequency of up to 160 MHz.

- Ultra-low-power with FlexPowerControl (down to 210 nA Standby mode and 19.5 uA/MHz run mode)
- Core: ARM |reg| 32-bit Cortex |reg| -M33 CPU with TrustZone |reg| and FPU.
- Performance benchmark:

  - 1.5 DMPIS/MHz (Drystone 2.1)
  - 651 CoreMark |reg| (4.07 CoreMark |reg| /MHZ)

- Security

  - Arm |reg|  TrustZone |reg| and securable I/Os memories and peripherals
  - Flexible life cycle scheme with RDP (readout protection) and password protected debug
  - Root of trust thanks to unique boot entry and secure hide protection area (HDP)
  - Secure Firmware Installation thanks to embedded Root Secure Services
  - Secure Firmware Update support with TF-M
  - HASH hardware accelerator
  - True Random Number Generator NIST SP800-90B compliant
  - 96-bit unique ID
  - 512-byte One-Time Programmable for user data
  - Active tampers

- Clock management:

  - 4 to 50 MHz crystal oscillator
  - 32 kHz crystal oscillator for RTC (LSE)
  - Internal 16 MHz factory-trimmed RC ( |plusminus| 1%)
  - Internal low-power 32 kHz RC ( |plusminus| 5%)
  - 2 internal multispeed 100 kHz to 48 MHz oscillators, including one auto-trimmed by
    LSE (better than  |plusminus| 0.25 % accuracy)
  - 3 PLLs for system clock, USB, audio, ADC
  - Internal 48 MHz with clock recovery

- Power management

  - Embedded regulator (LDO) and SMPS step-down converter supporting switch
    on-the-fly and voltage scaling

- Up to 136 fast I/Os, most 5 V-tolerant, up to 14 I/Os with independent supply down to 1.08 V
- Up to 22 capacitive sensing channels: support touchkey, linear and rotary touch sensors
- Up to 17 timers and 2 watchdogs

  - 2x 16-bit advanced motor-control
  - 4x 32-bit and 5 x 16-bit general purpose
  - 4x low-power 16-bit timers (available in Stop mode)
  - 2x watchdogs
  - 2x SysTick timer
  - RTC with HW calendar and calibration

- ART accelerator

  - 8-Kbyte instruction cache allowing 0-wait-state execution from Flash and
    external memories: up to 160 MHz, MPU, 240 DMIPS
  - 4-Kbyte data cache for external memories

- Memories

  - 2-Mbyte Flash memory with ECC, 2 banks read-while-write, including 512 Kbytes with 100 kcycles
  - 786-Kbyte SRAM with ECC OFF or 722-Kbyte SRAM including up to 322-Kbyte SRAM with ECC ON
  - External memory interface supporting SRAM, PSRAM, NOR, NAND and FRAM memories
  - 2 Octo-SPI memory interfaces

- Rich analog peripherals (independent supply)

  - 14-bit ADC 2.5-Msps, with hardware oversampling
  - 12-bit ADC 2.5-Msps, with hardware oversampling, autonomous in Stop 2 mode
  - 2x 12-bit DAC, low-power sample and hold
  - 2x operational amplifiers with built-in PGA
  - 2x ultra-low-power comparators

- Up to 22 communication interfaces

  - USB Type-C |reg| / USB power delivery controller
  - USB OTG 2.0 full-speed controller
  - 2x SAIs (serial audio interface)
  - 4x I2C FM+(1 Mbit/s), SMBus/PMBus
  - 6x USARTs (SPI, ISO 7816, LIN, IrDA, modem)
  - 3x SPIs (+2 SPIs with dual OCTOSPI, +3 with USART)
  - 1x FDCAN
  - 2x SDMMC interface
  - 16- and 4-channel DMA controllers, functional in Stop mode
  - 1 multi-function digital filter (6 filters)+ 1 audio digital filter with
    sound-activity detection

- CRC calculation unit
- Development support: serial wire debug (SWD), JTAG, Embedded Trace Macrocell |trade|
- True Random Number Generator (RNG)

- Graphic features

  - Chrom-ART Accelerator (DMA2D) for enhanced graphic content creation
  - 1 digital camera interface

- Mathematical co-processor

 - CORDIC for trigonometric functions acceleration
 - FMAC (filter mathematical accelerator)

More information about STM32U585CI can be found here:

- `STM32U585CI website`_
- `STM32U5 reference manual`_

Supported Features
==================

.. zephyr:board-supported-hw::

Pin Mapping
===========

Default Zephyr Peripheral Mapping:
----------------------------------

- USER_LED : PC13
- USER_PB : PA0
- USB DM/DP : PA11/PA12 (USB CDC ACM)
- UART : RX/TX - PA10/PA9
- LPUART : RX/TX - PA3/PA2
- I2C1 : SCL/SDA - PB6/PB3
- I2C2 : SCL/SDA - PB10/PB14
- SPI1 : SCK/MISO/MOSI/NSS - PA1/PA6/PA7/PA4
- FDCAN : RX/TX - PB8/PB9

System Clock
============

The STM32U585CI System Clock could be driven by internal or external oscillator,
as well as main PLL clock. By default System clock is driven by PLL clock at
160MHz, driven by 25MHz external clock.

Serial Port (USB CDC ACM)
=========================

The Zephyr console output is assigned to the USB CDC ACM virtual serial port.
Virtual COM port interface. Default communication settings are 115200 8N1.

Programming and Debugging
*************************

.. zephyr:board-supported-runners::

The ``blackpill_u585ci`` board facilitates firmware flashing via the USB DFU
bootloader. This method simplifies the process of updating images, although
it doesn't provide debugging capabilities. However, the board provides header
pins for the Serial Wire Debug (SWD) interface, which can be used to connect
an external debugger, such as ST-Link.

Flashing
========

To activate the bootloader, follow these steps:

1. Press and hold the BOOT0 key.
2. While still holding the BOOT0 key, press and release the RESET key.
3. Wait for 0.5 seconds, then release the BOOT0 key.

Upon successful execution of these steps, the device will transition into
bootloader mode and present itself as a USB DFU Mode device. You can program
the device using the west tool or the STM32CubeProgrammer.


Flashing an application to ``blackpill_u585ci``
-----------------------------------------------

Here is an example for the :zephyr:code-sample:`hello_world` application.

First, put the board in bootloader mode as described above. Then build and flash
the application in the usual way. Just add ``CONFIG_BOOT_DELAY=5000`` to the
configuration, so that USB CDC ACM is initialized before any text is printed,
as below:

.. zephyr-app-commands::
   :zephyr-app: samples/subsys/usb/console
   :board: blackpill_u585ci
   :goals: build flash
   :gen-args: -DCONFIG_BOOT_DELAY=5000

Run a serial host program to connect with your board:

.. code-block:: console

   $ minicom -D <tty_device> -b 115200

Then, press the RESET button, you should see the following message after few seconds:

.. code-block:: console

   Hello World! arm

Replace :code:`<tty_device>` with the port where the board can be found.
For example, under Linux, :code:`/dev/ttyACM0`.

Debugging
---------

There is support for `Black Magic Probe`_ debugger.
At minimum connect GND, SWDIO and SWCLK lines.
Here is an example for the :zephyr:code-sample:`blinky` application.

.. zephyr-app-commands::
   :zephyr-app: samples/basic/blinky
   :board: blackpill_u585ci
   :goals: debug

References
**********

.. target-notes::

.. _Zadig:
   https://zadig.akeo.ie/

.. _WeAct Github:
   https://github.com/WeActStudio/WeActStudio.STM32U585Cx_CoreBoard

.. _dfu-util:
   http://dfu-util.sourceforge.net/build.html

.. _STM32U585CI website:
   https://www.st.com/en/microcontrollers-microprocessors/stm32u585ci.html

.. _STM32U5 reference manual:
   https://www.st.com/resource/en/reference_manual/rm0456-stm32u5-series-armbased-32bit-mcus-stmicroelectronics.pdf

.. _Black Magic Probe:
   https://black-magic.org/index.html
