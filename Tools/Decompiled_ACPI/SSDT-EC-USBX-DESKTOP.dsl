/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-EC-USBX-DESKTOP.aml, Sat Feb 27 20:02:27 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000019A1 (6561)
 *     Revision         0x02
 *     Checksum         0x93
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "SsdtEC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190509 (538510601)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "SsdtEC", 0x00001000)
{
    External (_SB_.PC00.LPC0, DeviceObj)
    External (_SB_.PC00.LPC0.EC0_, DeviceObj)
    External (_SB_.PC00.LPC0.EC__, DeviceObj)
    External (_SB_.PC00.LPC0.ECDV, DeviceObj)
    External (_SB_.PC00.LPC0.H_EC, DeviceObj)
    External (_SB_.PC00.LPC0.PGEC, DeviceObj)
    External (_SB_.PCI0.LPC0, DeviceObj)
    External (_SB_.PCI0.LPC0.EC0_, DeviceObj)
    External (_SB_.PCI0.LPC0.EC__, DeviceObj)
    External (_SB_.PCI0.LPC0.ECDV, DeviceObj)
    External (_SB_.PCI0.LPC0.H_EC, DeviceObj)
    External (_SB_.PCI0.LPC0.PGEC, DeviceObj)
    External (_SB_.PCI0.LPC_, DeviceObj)
    External (_SB_.PCI0.LPC_.EC0_, DeviceObj)
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)
    External (_SB_.PCI0.LPC_.ECDV, DeviceObj)
    External (_SB_.PCI0.LPC_.H_EC, DeviceObj)
    External (_SB_.PCI0.LPC_.PGEC, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.ECDV, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.PGEC, DeviceObj)
    External (_SB_.PCI0.PX40, DeviceObj)
    External (_SB_.PCI0.PX40.EC0_, DeviceObj)
    External (_SB_.PCI0.PX40.EC__, DeviceObj)
    External (_SB_.PCI0.PX40.ECDV, DeviceObj)
    External (_SB_.PCI0.PX40.H_EC, DeviceObj)
    External (_SB_.PCI0.PX40.PGEC, DeviceObj)
    External (_SB_.PCI0.SBRG, DeviceObj)
    External (_SB_.PCI0.SBRG.EC0_, DeviceObj)
    External (_SB_.PCI0.SBRG.EC__, DeviceObj)
    External (_SB_.PCI0.SBRG.ECDV, DeviceObj)
    External (_SB_.PCI0.SBRG.H_EC, DeviceObj)
    External (_SB_.PCI0.SBRG.PGEC, DeviceObj)

    If (CondRefOf (\_SB.PCI0.SBRG.EC))
    {
        If ((((CondRefOf (\_SB.PCI0.SBRG.EC._HID) && CondRefOf (\_SB.PCI0.SBRG.EC._CRS)) && CondRefOf (\_SB.PCI0.SBRG.EC._GPE
            )) && !CondRefOf (\_SB.PCI0.SBRG.EC._STA)))
        {
            Scope (\_SB.PCI0.SBRG.EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.SBRG.EC0))
    {
        If ((((CondRefOf (\_SB.PCI0.SBRG.EC0._HID) && CondRefOf (\_SB.PCI0.SBRG.EC0._CRS)) && CondRefOf (\_SB.PCI0.SBRG.EC0._GPE
            )) && !CondRefOf (\_SB.PCI0.SBRG.EC0._STA)))
        {
            Scope (\_SB.PCI0.SBRG.EC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.SBRG.H_EC))
    {
        If ((((CondRefOf (\_SB.PCI0.SBRG.H_EC._HID) && CondRefOf (\_SB.PCI0.SBRG.H_EC._CRS)) && CondRefOf (\_SB.PCI0.SBRG.H_EC._GPE
            )) && !CondRefOf (\_SB.PCI0.SBRG.H_EC._STA)))
        {
            Scope (\_SB.PCI0.SBRG.H_EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.SBRG.ECDV))
    {
        If ((((CondRefOf (\_SB.PCI0.SBRG.ECDV._HID) && CondRefOf (\_SB.PCI0.SBRG.ECDV._CRS)) && CondRefOf (\_SB.PCI0.SBRG.ECDV._GPE
            )) && !CondRefOf (\_SB.PCI0.SBRG.ECDV._STA)))
        {
            Scope (\_SB.PCI0.SBRG.ECDV)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.SBRG.PGEC))
    {
        If ((((CondRefOf (\_SB.PCI0.SBRG.PGEC._HID) && CondRefOf (\_SB.PCI0.SBRG.PGEC._CRS)) && CondRefOf (\_SB.PCI0.SBRG.PGEC._GPE
            )) && !CondRefOf (\_SB.PCI0.SBRG.PGEC._STA)))
        {
            Scope (\_SB.PCI0.SBRG.PGEC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPCB.EC))
    {
        If ((((CondRefOf (\_SB.PCI0.LPCB.EC._HID) && CondRefOf (\_SB.PCI0.LPCB.EC._CRS)) && CondRefOf (\_SB.PCI0.LPCB.EC._GPE
            )) && !CondRefOf (\_SB.PCI0.LPCB.EC._STA)))
        {
            Scope (\_SB.PCI0.LPCB.EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPCB.EC0))
    {
        If ((((CondRefOf (\_SB.PCI0.LPCB.EC0._HID) && CondRefOf (\_SB.PCI0.LPCB.EC0._CRS)) && CondRefOf (\_SB.PCI0.LPCB.EC0._GPE
            )) && !CondRefOf (\_SB.PCI0.LPCB.EC0._STA)))
        {
            Scope (\_SB.PCI0.LPCB.EC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPCB.H_EC))
    {
        If ((((CondRefOf (\_SB.PCI0.LPCB.H_EC._HID) && CondRefOf (\_SB.PCI0.LPCB.H_EC._CRS)) && CondRefOf (\_SB.PCI0.LPCB.H_EC._GPE
            )) && !CondRefOf (\_SB.PCI0.LPCB.H_EC._STA)))
        {
            Scope (\_SB.PCI0.LPCB.H_EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPCB.ECDV))
    {
        If ((((CondRefOf (\_SB.PCI0.LPCB.ECDV._HID) && CondRefOf (\_SB.PCI0.LPCB.ECDV._CRS)) && CondRefOf (\_SB.PCI0.LPCB.ECDV._GPE
            )) && !CondRefOf (\_SB.PCI0.LPCB.ECDV._STA)))
        {
            Scope (\_SB.PCI0.LPCB.ECDV)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPCB.PGEC))
    {
        If ((((CondRefOf (\_SB.PCI0.LPCB.PGEC._HID) && CondRefOf (\_SB.PCI0.LPCB.PGEC._CRS)) && CondRefOf (\_SB.PCI0.LPCB.PGEC._GPE
            )) && !CondRefOf (\_SB.PCI0.LPCB.PGEC._STA)))
        {
            Scope (\_SB.PCI0.LPCB.PGEC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC.EC))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC.EC._HID) && CondRefOf (\_SB.PCI0.LPC.EC._CRS)) && CondRefOf (\_SB.PCI0.LPC.EC._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC.EC._STA)))
        {
            Scope (\_SB.PCI0.LPC.EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC.EC0))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC.EC0._HID) && CondRefOf (\_SB.PCI0.LPC.EC0._CRS)) && CondRefOf (\_SB.PCI0.LPC.EC0._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC.EC0._STA)))
        {
            Scope (\_SB.PCI0.LPC.EC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC.H_EC))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC.H_EC._HID) && CondRefOf (\_SB.PCI0.LPC.H_EC._CRS)) && CondRefOf (\_SB.PCI0.LPC.H_EC._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC.H_EC._STA)))
        {
            Scope (\_SB.PCI0.LPC.H_EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC.ECDV))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC.ECDV._HID) && CondRefOf (\_SB.PCI0.LPC.ECDV._CRS)) && CondRefOf (\_SB.PCI0.LPC.ECDV._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC.ECDV._STA)))
        {
            Scope (\_SB.PCI0.LPC.ECDV)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC.PGEC))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC.PGEC._HID) && CondRefOf (\_SB.PCI0.LPC.PGEC._CRS)) && CondRefOf (\_SB.PCI0.LPC.PGEC._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC.PGEC._STA)))
        {
            Scope (\_SB.PCI0.LPC.PGEC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.PX40.EC))
    {
        If ((((CondRefOf (\_SB.PCI0.PX40.EC._HID) && CondRefOf (\_SB.PCI0.PX40.EC._CRS)) && CondRefOf (\_SB.PCI0.PX40.EC._GPE
            )) && !CondRefOf (\_SB.PCI0.PX40.EC._STA)))
        {
            Scope (\_SB.PCI0.PX40.EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.PX40.EC0))
    {
        If ((((CondRefOf (\_SB.PCI0.PX40.EC0._HID) && CondRefOf (\_SB.PCI0.PX40.EC0._CRS)) && CondRefOf (\_SB.PCI0.PX40.EC0._GPE
            )) && !CondRefOf (\_SB.PCI0.PX40.EC0._STA)))
        {
            Scope (\_SB.PCI0.PX40.EC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.PX40.H_EC))
    {
        If ((((CondRefOf (\_SB.PCI0.PX40.H_EC._HID) && CondRefOf (\_SB.PCI0.PX40.H_EC._CRS)) && CondRefOf (\_SB.PCI0.PX40.H_EC._GPE
            )) && !CondRefOf (\_SB.PCI0.PX40.H_EC._STA)))
        {
            Scope (\_SB.PCI0.PX40.H_EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.PX40.ECDV))
    {
        If ((((CondRefOf (\_SB.PCI0.PX40.ECDV._HID) && CondRefOf (\_SB.PCI0.PX40.ECDV._CRS)) && CondRefOf (\_SB.PCI0.PX40.ECDV._GPE
            )) && !CondRefOf (\_SB.PCI0.PX40.ECDV._STA)))
        {
            Scope (\_SB.PCI0.PX40.ECDV)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.PX40.PGEC))
    {
        If ((((CondRefOf (\_SB.PCI0.PX40.PGEC._HID) && CondRefOf (\_SB.PCI0.PX40.PGEC._CRS)) && CondRefOf (\_SB.PCI0.PX40.PGEC._GPE
            )) && !CondRefOf (\_SB.PCI0.PX40.PGEC._STA)))
        {
            Scope (\_SB.PCI0.PX40.PGEC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC0.EC))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC0.EC._HID) && CondRefOf (\_SB.PCI0.LPC0.EC._CRS)) && CondRefOf (\_SB.PCI0.LPC0.EC._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC0.EC._STA)))
        {
            Scope (\_SB.PCI0.LPC0.EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC0.EC0))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC0.EC0._HID) && CondRefOf (\_SB.PCI0.LPC0.EC0._CRS)) && CondRefOf (\_SB.PCI0.LPC0.EC0._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC0.EC0._STA)))
        {
            Scope (\_SB.PCI0.LPC0.EC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC0.H_EC))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC0.H_EC._HID) && CondRefOf (\_SB.PCI0.LPC0.H_EC._CRS)) && CondRefOf (\_SB.PCI0.LPC0.H_EC._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC0.H_EC._STA)))
        {
            Scope (\_SB.PCI0.LPC0.H_EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC0.ECDV))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC0.ECDV._HID) && CondRefOf (\_SB.PCI0.LPC0.ECDV._CRS)) && CondRefOf (\_SB.PCI0.LPC0.ECDV._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC0.ECDV._STA)))
        {
            Scope (\_SB.PCI0.LPC0.ECDV)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.LPC0.PGEC))
    {
        If ((((CondRefOf (\_SB.PCI0.LPC0.PGEC._HID) && CondRefOf (\_SB.PCI0.LPC0.PGEC._CRS)) && CondRefOf (\_SB.PCI0.LPC0.PGEC._GPE
            )) && !CondRefOf (\_SB.PCI0.LPC0.PGEC._STA)))
        {
            Scope (\_SB.PCI0.LPC0.PGEC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.LPC0.EC))
    {
        If ((((CondRefOf (\_SB.PC00.LPC0.EC._HID) && CondRefOf (\_SB.PC00.LPC0.EC._CRS)) && CondRefOf (\_SB.PC00.LPC0.EC._GPE
            )) && !CondRefOf (\_SB.PC00.LPC0.EC._STA)))
        {
            Scope (\_SB.PC00.LPC0.EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.LPC0.EC0))
    {
        If ((((CondRefOf (\_SB.PC00.LPC0.EC0._HID) && CondRefOf (\_SB.PC00.LPC0.EC0._CRS)) && CondRefOf (\_SB.PC00.LPC0.EC0._GPE
            )) && !CondRefOf (\_SB.PC00.LPC0.EC0._STA)))
        {
            Scope (\_SB.PC00.LPC0.EC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.LPC0.H_EC))
    {
        If ((((CondRefOf (\_SB.PC00.LPC0.H_EC._HID) && CondRefOf (\_SB.PC00.LPC0.H_EC._CRS)) && CondRefOf (\_SB.PC00.LPC0.H_EC._GPE
            )) && !CondRefOf (\_SB.PC00.LPC0.H_EC._STA)))
        {
            Scope (\_SB.PC00.LPC0.H_EC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.LPC0.ECDV))
    {
        If ((((CondRefOf (\_SB.PC00.LPC0.ECDV._HID) && CondRefOf (\_SB.PC00.LPC0.ECDV._CRS)) && CondRefOf (\_SB.PC00.LPC0.ECDV._GPE
            )) && !CondRefOf (\_SB.PC00.LPC0.ECDV._STA)))
        {
            Scope (\_SB.PC00.LPC0.ECDV)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.LPC0.PGEC))
    {
        If ((((CondRefOf (\_SB.PC00.LPC0.PGEC._HID) && CondRefOf (\_SB.PC00.LPC0.PGEC._CRS)) && CondRefOf (\_SB.PC00.LPC0.PGEC._GPE
            )) && !CondRefOf (\_SB.PC00.LPC0.PGEC._STA)))
        {
            Scope (\_SB.PC00.LPC0.PGEC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    Scope (\_SB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "kUSBSleepPowerSupply", 
                    0x13EC, 
                    "kUSBSleepPortCurrentLimit", 
                    0x0834, 
                    "kUSBWakePowerSupply", 
                    0x13EC, 
                    "kUSBWakePortCurrentLimit", 
                    0x0834
                })
            }
        }
    }
}

