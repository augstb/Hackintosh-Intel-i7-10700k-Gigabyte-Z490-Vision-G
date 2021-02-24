# Hackintosh-Intel-i7-10700k-Gigabyte-Z490-Vision-G

This repository contains WIP configuration files for an OpenCore build with **Gigabyte Z490 Vision G** motherboard and **Intel i7-10700k** *Comet Lake-S* desktop CPU. Compiled with OpenCore 0.6.6.

So far so good using these configuration files for **Big Sur (11.2.1)**.

Particularities of this configuration :

- I have a Wifi card (... ref to be added ...) so if you don't, just remove ```Airport*.kext``` kexts.
- I have an incompatible GTX 1070 GPU so I disabled it to be sure there is no conflict whatsoever. To reset this, just remove ```SSDT-GPU-DISABLE.aml```.

More details to come including tools and details about configuration.

### Acknowledgments

- [Dortania](https://github.com/dortania) For the awesome OpenCore desktop guide.
- [OpenCore project](https://github.com/acidanthera/OpenCorePkg) For the cleanest and most complete bootloader of all time.
- [georgetree](https://github.com/georgetree/hackintosh-10700k-Gigabyte-Z490-Vision-g) For his work on the Z490 Vision-G framebuffer (fixing the HDMI port)

