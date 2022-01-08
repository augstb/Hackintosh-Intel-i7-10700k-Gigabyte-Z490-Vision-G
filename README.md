# Hackintosh-Intel-i7-10700k-Gigabyte-Z490-Vision-G

This repository contains WIP configuration files for an OpenCore build with **Gigabyte Z490 Vision G** motherboard and **Intel i7-10700k** *Comet Lake-S* desktop CPU. Compiled with **OpenCore (0.7.6)**.

Particularities of this configuration :

- I have a PCIe Wireless adapter AC1300 (**Archer T6E**). If you don't need kext for it, just remove ```Airport*.kext``` kexts. Otherwise, if you came here because you have this adapter, just copy the kexts files, and integrate them in your config file. It is that simple.
- I have an incompatible **NVIDIA GTX 1070** GPU so I disabled it to be sure there is no conflict whatsoever. To reset this, just remove ```SSDT-GPU-DISABLE.aml```.

So far so good using these configuration files for **Big Sur (11.6)**.

<p align="center"><img src="./Images/about.png" alt="about_this_mac" width="698" /></p>

## Hardware

- **Motherboard:** *Gigabyte Z490 Vision G*
- **Processor:** *Intel i7-10700k*
- **Memory:** *Corsair Vengeance LPX* (DDR4 - 3600 MHz)
- **dGPU:** *Nvidia GTX 1070* (Incompatible since macOS 10.14, thanks to Apple)
- **PCIe Wireless adapter:** *TP-LINK AC1300* (Archer T6E)
- **Bluetooth 4.0 USB dongle:** *Asus USB-BT400*
- **CPU Cooler:** *Corsair iCue H100i RGB PRO XT*
- **Mixing table / External sound card:** *Zoom Livetrack L-12*

## Working

- **Audio *(Realtek ALC1220-VB / HDMI Audio)***
  Using proper Device Property, and ```AppleALC.kext``` and ```FakeID.kext``` kexts :

  ```xml
  <key>PciRoot(0x0)/Pci(0x1F,0x3)</key>
  <dict>
  	<key>device-id</key>
  	<data>cKEAAA==</data>
  	<key>layout-id</key>
  	<data>BwAAAA==</data>
  </dict>
  ```

  Fixing HDMI audio with kext ```FakePCIID_Intel_HDMI_Audio.kext```.

- **USB**
  All ports working, thanks to **[samuel21119](https://github.com/samuel21119)** that worked on the [USB map of the Z490 Vision G](https://github.com/samuel21119/Intel-i9-10900-Gigabyte-Z490-Vision-G-Hackintosh/blob/master/USB-Port-Configuration.md). I redid the USBMap with [corpnewt/USBMap](https://github.com/corpnewt/USBMap) tool, using my *iMac20,1* SMBIOS and did not set *HS02* to internal port as it is connected on the front pannel in my case. I disabled *HS03*, *SS03*, *HS01* and *HS12* as Samuel did. Pay attention that F_USB1 and F_USB2 is a hub mapped to *HS02* unlike Samuel shows. See **[OMandaloriano](https://github.com/OMandaloriano)** [issue](https://github.com/samuel21119/Intel-i9-10900-Gigabyte-Z490-Vision-G-Hackintosh/issues/11) for more details and updated Map.
  *TLDR:* Use ```USBMap.kext``` and disable ```USBInjectAll.kext``` (Compiled it for *iMac20,1* SMBIOS).

- **Ethernet *(Intel I225-V 2.5GbE LAN)***
  Using **[samuel21119](https://github.com/samuel21119)** custom kext ```FakePCIID_Intel_I225-V.kext```, and Device property:

  ```xml
  <key>PciRoot(0x0)/Pci(0x1C,0x1)/Pci(0x0, 0x0)</key>
  <dict>
  	<key>device-id</key>
  	<data>8hUAAA==</data>
  </dict>
  ```

- **iGPU *(Intel UHD Graphics 630)***
DP and HDMI are working fine after patching the Framebuffer. Keep in mind that this framebuffer is tested only with this Motherboard and i7-10700k Comet Lake-S Desktop processor. You'll have to change some values if you don't have exactly the same hardware. To do so I recommend you to follow the [dortania guide](https://dortania.github.io/OpenCore-Post-Install/gpu-patching/), which is surely a reference treating with Open Core bootloader. Credits to **[georgetree](https://github.com/georgetree)** for [his work on the framebuffer](https://github.com/georgetree/hackintosh-10700k-Gigabyte-Z490-Vision-g).

  ```xml
  <key>PciRoot(0x0)/Pci(0x2,0x0)</key>
  <dict>
    <key>AAPL,ig-platform-id</key>
    <data>BwCbPg==</data>
    <key>device-id</key>
    <data>xZsAAA==</data>
    <key>framebuffer-con1-busid</key>
    <data>BAAAAA==</data>
    <key>framebuffer-con1-enable</key>
    <data>AQAAAA==</data>
    <key>framebuffer-con1-flags</key>
    <data>zwMAAA==</data>
    <key>framebuffer-con1-index</key>
    <data>AwAAAA==</data>
    <key>framebuffer-con1-pipe</key>
    <data>CAAAAA==</data>
    <key>framebuffer-con1-type</key>
    <data>AAgAAA==</data>
    <key>framebuffer-con2-busid</key>
    <data>AQAAAA==</data>
    <key>framebuffer-con2-enable</key>
    <data>AQAAAA==</data>
    <key>framebuffer-con2-index</key>
    <data>AgAAAA==</data>
    <key>framebuffer-con2-type</key>
    <data>AAQAAA==</data>
    <key>framebuffer-con2-flags</key>
    <data>zwMAAA==</data>
    <key>framebuffer-con2-pipe</key>
    <data>CgAAAA==</data>
    <key>framebuffer-con0-busid</key>
    <data>BQAAAA==</data>
    <key>framebuffer-con0-enable</key>
    <data>AQAAAA==</data>
    <key>framebuffer-con0-flags</key>
    <data>zwMAAA==</data>
    <key>framebuffer-con0-index</key>
    <data>AQAAAA==</data>
    <key>framebuffer-con0-pipe</key>
    <data>CQAAAA==</data>
    <key>framebuffer-con0-type</key>
    <data>AAQAAA==</data>
    <key>framebuffer-patch-enable</key>
    <data>AQAAAA==</data>
    <key>model</key>
    <string>Intel UHD Graphics 630</string>
  </dict>
  ```

  <p align="center"><img src="./Images/displays.png" alt="Startup disk" width="698" /></p>

- **Wifi *(TP-LINK AC1300 - Archer T6E)***
  Using kexts ```Airport*.kext```.

- **Bluetooth *(Asus USB-BT400)***
  Native

- **Handoff/iMessages/Apple services**
  Native

- **NVRAM**
Working natively. Change default startup disk from the macOS settings.

<p align="center"><img src="./Images/startup_disk.png" alt="Startup disk" width="838" /></p>

- **Reboot/Shutdown**

- **Sleep Mode**

  - Note that you need to unplug the USB cable of *Corsair iCue H100i RGB PRO XT* CPU Cooler otherwise you'll get instant wake after sleep with the following error:

  ```shell
  Wake from Normal Sleep [CDNVA] : due to XDCI CNVW PEG1 PEG2 RP04/UserActivity
  ```
  To get the log of Sleep/Wake events type this in a terminal:
  ```shell
  pmset -g log | grep -e "Sleep.*due to" -e "Wake.*due to"
  ```

  The USB cable of the CPU Cooler is only needed if you want to tune the fan speed and the colors with the software iCue. So this is not so much of a deal. I didn't found any hacks to get this working with the USB link.

  - Had also an instant wake after doing the USBMap. Adding ```SSDT-GPRW.aml``` and associated patch documented in **[dortania](https://github.com/dortania)** [Post-Instal Guide](https://dortania.github.io/OpenCore-Post-Install/usb/misc/instant-wake.html) fixed the problem.

  - Since *F20b* BIOS version, sleep was broken (green screen after wake), but adding ```-wegnoegpu``` to boot arguments did the trick. It might not be necessary if you have a dGPU.

- **External sound card *(Zoom Livetrack L-12)***
  Using [macOS driver](https://zoomcorp.com/en/us/digital-mixer-multi-track-recorders/digital-mixer-recorder/livetrak-l-12/l-12-support/) for Zoom livetrack L-12 in order to use multitrack recording, and USB transfers between macOS and the device. Don't forget to set the switch to *Class Compilant mode* at the back of the device.

<p align="center"><img src="./Images/livetrack.png" alt="Livetrack" width="838" /></p>

## Not Working

- **DRM:** Can't play DRM content on Safari, but who cares?

## BIOS Settings

**BIOS version: *F20d***

- **Disable**
  - Fast Boot
  - Intel SGX
  - CFG Lock
  - CSM Support
- **Enable**
  - Hyper-Threading
  - VT-d
  - Above 4G Decoding
  - DVMT Pre-Allocated: 64M *(Default)*
  - DVMT Total Gfx Mem: MAX

After loading optimized default settings for BIOS version >= F8b, you'll just need to change the following settings:

<p align="center"><img src="./Images/bios.png" alt="Bios" width="527" /></p>

Don't forget to set up your XMP profile correctly in *Tweaker* if you have high frequency memory like mine (3600 MHz).

**I don't recommand F20b BIOS update because it breaks sleep mode and I also found it slower than F8 at startup. I am not sure why, so unless you have a 11th gen Intel processor, you can just stay at F8c (at least before Gigabyte make another update after F20b). F8c enables Resizable Base-Adress (BAR) so you good to go with it at least.**

Since **Gigabyte F8 BIOS Update**, in order to set ```Initial Display Output``` to ```IGFX``` you need to enable ```CSM Support```. Just enable ```CSM Support```, set ```Initial Display Output``` to ```IGFX```, then disable ```CSM Support``` (thanks [azhinu](https://github.com/azhinu) for the little [trick](https://github.com/augstb/Hackintosh-Intel-i7-10700k-Gigabyte-Z490-Vision-G/issues/1)).

In order to fix sleep mode showing green screen at wake, I found that adding ```-wegnoegpu``` to boot arguments did the trick, but I'm not 100% sure about it so I'll appreciate feedback. It might not be necessary if you have a dGPU.

## Acknowledgments

- [Dortania](https://github.com/dortania) For the awesome OpenCore desktop guide.
- [OpenCore project](https://github.com/acidanthera/OpenCorePkg) For the cleanest and most complete bootloader of all time.
- [georgetree](https://github.com/georgetree/hackintosh-10700k-Gigabyte-Z490-Vision-g) For his work on the Z490 Vision-G framebuffer (fixing the HDMI port)
- [samuel21119](https://github.com/samuel21119/Intel-i9-10900-Gigabyte-Z490-Vision-G-Hackintosh) For his work on the USB mapping on the Vision G and on the LAN adapter

<p align="center"><img src="./Images/dock.png" alt="Dock" width="710" /></p>
