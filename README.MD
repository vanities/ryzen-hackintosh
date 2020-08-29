# OpenCore EFI for AMD Ryzen Hackintosh and Intel Wifi on macOS 11

## Specification
Check out my <b>PCPartPicker</b> config [here](https://pcpartpicker.com/list/8gkz27)

| **Component** | **Model** |
| ------------- | --------- |
| CPU | [AMD Ryzen 9 3900X @ 4.6 GHz](https://www.amazon.com/gp/product/B07SXMZLP9/ref=ppx_yo_dt_b_asin_title_o06_s00?ie=UTF8&psc=1) |
| Motherboard | [GIGABYTE X570 I AORUS Pro WIFI](https://www.amazon.com/gp/product/B07T9PC9ZZ/ref=ppx_yo_dt_b_asin_title_o06_s00?ie=UTF8&psc=1) |
| RAM | 32GB [(2 x 16GB) Corsair Vengeance @ 3000MHz](https://www.newegg.com/g-skill-32gb-288-pin-ddr4-sdram/p/N82E16820232218?Item=N82E16820232218) |
| GPU | [Gigabyte RX Vega 56]() |
| WiFi & Bluetooth | Intel AX1200 (the one on the motherboard) |
| OS Disk (NVMe) | [Samsung 970 EVO Plus SSD 500GB](https://www.amazon.com/gp/product/B07M7Q21N7/ref=ppx_yo_dt_b_asin_title_o05_s00?ie=UTF8&psc=1) |

**macOS version**: 11.0 Beta 5 (20A5354i)
**OpenCore version**: 0.6.0

## Drivers & Kexts
 - [[Bootloader] OpenCore](https://github.com/acidanthera/OpenCorePkg)
 - [[Resources] Picker GUI](https://github.com/acidanthera/OcBinaryData/tree/master/Resources)
 - [[Patch] AMD_Vanilla](https://github.com/AMD-OSX/AMD_Vanilla)
 - [[SSDT] EC-USBX-DESKTOP](https://github.com/dortania/Getting-Started-With-ACPI/blob/master/extra-files/compiled/SSDT-EC-USBX-DESKTOP.aml)
 - [[SSDT] SLEEP-PTXH](./OC/ACPI/SSDT-SLEEP-PTXH.aml)
 - [[Driver] OpenRuntime](https://github.com/acidanthera/OpenCorePkg)
 - [[Driver] OpenCanopy](https://github.com/acidanthera/OpenCorePkg)
 - [[Driver] HFSPlus](https://github.com/acidanthera/OcBinaryData/blob/master/Drivers/HfsPlus.efi)
 - [[Kext] Lilu](https://github.com/acidanthera/Lilu)
 - [[Kext] VirtualSMC](https://github.com/acidanthera/VirtualSMC)
 - [[Kext] WhateverGreen](https://github.com/acidanthera/WhateverGreen)
 - [[Kext] AppleALC](https://github.com/acidanthera/AppleALC)
 - [[Kext] AppleMCEReporterDisabler](https://github.com/AMD-OSX/AMD_Vanilla/blob/experimental-opencore/Extra/AppleMCEReporterDisabler.kext.zip)
 - [[Kext] itlwmx](https://github.com/OpenIntelWireless/itlwm)
 - [[Kext] IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware)
 - [[Kext] SMCAMDProcessor](https://github.com/trulyspinach/SMCAMDProcessor)

## Compatible macOS versions
 - Big Sur (10.16/11.0)

## If you have problems!
 - Check the [OpenCore config.plist Sanity Checker](https://opencore.slowgeek.com/)

## Issues
 - Partially-working virtualization (only VirtualBox & Parallels Dekstop 13.1.0 or below)
 - Not working 3.5mm Jack microphone (only USB/Bluetooth microphones)

## How to use
  1. Make your USB installer with [**this guide**](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/)
  2. Clone the repository and paste the "EFI" directory into your's pendrive "EFI" partition.
  3. Download [**GenSMBIOS**](https://github.com/corpnewt/GenSMBIOS) to generate unique SMBIOS information. Run it and select **Generate SMBIOS**, as the model select **iMacPro1,1**.
  **You CAN NOT use SMBIOS from this repository, it MUST be unique for every macOS installation**
  4. Open config.plist with [**ProperTree**](https://github.com/corpnewt/ProperTree) and go to PlatformInfo > Generic. Set MLB (Board Serial), SystemSerialNumber (Serial) and SystemUUID (SmUUID) to generated values. Change ROM to your network card's MAC address without the `:` character. [**How to get MAC Address?**](https://www.wikihow.com/Find-the-MAC-Address-of-Your-Computer)
  5. Boot it!

## Wifi
Wifi is achieved by using a combo of itlwmx (not itlwm) and the Heliport app linked below.

  1. Make sure to download [Heliport](https://github.com/OpenIntelWireless/HeliPort) and put it into your /Applications
  2. Set it up as a startup app by going to User & Groups, clicking your user, clicking the Login Items tab, then the plus and adding it.

## BIOS

### Disable

    Fast Boot
    Secure Boot
    Serial/COM Port
    Parallel Port
    Compatibility Support Module (CSM)(Must be off, GPU errors like gIO are common when this option in enabled)
    Above 4G decoding (or enable and remove option npci=0x2000 from boot-args)
 
### Enable
    EHCI/XHCI Hand-off
    OS type: Windows 8.1/10 UEFI Mode
    SATA Mode: AHCI


## Other guides
**If you have any problems with installation or booting your macOS, kernel panics or another system related issue check OC configuration guide**
**If something else isn't working properly (for example USB ports, iServices, DRM/Netflix) check Post-Install guide**
 - Creating USB installer: [**\*click\***](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/)
 - OpenCore configuration: [**\*click\***](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html)
 - Post-Install: [**\*click\***](https://dortania.github.io/OpenCore-Post-Install/)
 - Troubleshooting: [**\*click\***](https://dortania.github.io/OpenCore-Post-Install/)
 - ACPI patching: [**\*click\***](https://dortania.github.io/Getting-Started-With-ACPI/)
 - USB mapping: [**\*click\***](https://dortania.github.io/OpenCore-Post-Install/usb/)


If you have any other questions or issues, feel free to ask on [**AMD-OSX Discord**](https://discord.gg/EfCYAJW) or [**Forum**](https://forum.amd-osx.com)

![Screenshot](/screenshot.png?raw=true)
