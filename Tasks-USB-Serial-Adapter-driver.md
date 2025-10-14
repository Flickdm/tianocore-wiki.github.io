# Tasks USB Serial Adapter Driver

Develop a USB driver for a common USB Serial Adapter.

- Status: Complete :heavy_check_mark:
- Difficulty: Medium
- Language: C
- Mentor: <a href="@ErikBjorge" class="wikilink"
  title="https://github.com/ErikBjorge"><span>https://github.com/ErikBjorge</span></a>
- Suggested by: <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>

# Status

- Completed :heavy_check_mark: (For FTDI).
- Work done by <a href="@ashedesimone" class="wikilink"
  title="https://github.com/ashedesimone"><span>https://github.com/ashedesimone</span></a>
  as a <a href="GSoC2012" class="wikilink" title="GSoC2012">GSoC2012</a>
  Student.
- Available at
  <a href="edk2-platforms/Drivers/OptionRomPkg/Bus/Usb/FtdiUsbSerialDxe"
  class="wikilink"
  title="https://github.com/tianocore/edk2-platforms/tree/master/Drivers/OptionRomPkg/Bus/Usb/FtdiUsbSerialDxe"><span>https://github.com/tianocore/edk2-platforms/tree/master/Drivers/OptionRomPkg/Bus/Usb/FtdiUsbSerialDxe</span></a>.

# Details

Today there are many inexpensive USB Serial adapters available, and most
systems are built with USB ports available. But at the same time, the
dedicated Serial port is becoming less common to find available in a
system.

A serial port can still be useful for software debugging purposes.
(debug trace messages)

It can also be useful in providing a secondary terminal to the UEFI
system.

This task would involve writing a USB driver which interfaces with a USB
Serial Adapter.

Ideally, this project should enable a driver that will attach to the USB
Serial Adapter and produce the
[SerialIo](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/MdePkg/Include/Protocol/SerialIo.h)
protocol to enable the UEFI terminal to become available through the USB
Serial adapter.

The
[MdeModulePkg/Bus/Usb/UsbKbDxe](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/MdeModulePkg/Bus/Usb/UsbKbDxe)
(USB Keyboard) driver may provide a useful starting point for your
project.

# Development environment

Building: This project can be completed on any edk2 supported OS or
toolchain.

# Test environment

## OVMF with FTDI emulated device

With QEMU you can use the '-usb -usbdevice serial::vc' parameters to add
an emulated FTDI into the system.

Support for the FTDI device was worked on during
<a href="GSoC2012" class="wikilink" title="GSoC2012">GSoC2012</a>. The
latest code is currently available at:

- <https://github.com/AshleyDeSimone/edk2/tree/ftdi-usb-serial>
- Look for the driver code under OptionRomPkg/Bus/Usb/FtdiUsbSerialDxe

A quick start for building & testing this code on Linux would be:

    $ OvmfPkg/build.sh
    $ OvmfPkg/build.sh qemu -usb -usbdevice serial::vc

Once QEMU/OVMF starts, press Control+Alt+5 to see the 'usbserial'
output.

## QEMU/OVMF with real hardware

[OVMF](http://www.tianocore.org/ovmf/) (on Linux) would probably provide
the easiest environment for testing your project with real hardware. You
should be able to build your driver into OVMF and then run OVMF with the
USB adapter being mapped inside the virtual machine environment. If you
utilize OVMF for testing, then documenting the procedure for running
OVMF to attach to the USB device would be a useful 'extra' side-project.

## Real UEFI system

You could also test your driver on another UEFI system by using the EFI
shell 'load' command.

# Sub-goals

Some possible sub-goals for the driver

- Optional: If using OVMF for testing, document the environment and
  commands you use to enable the adapter to show up in the VM
- recognize and attach to the adapter
- configure the serial port settings for the adapter
- send test characters out the adapter which are successfully read on
  the other side of the serial cable
- receive some test characters, and print them out in debug trace
  messages
- connect to SerialIo to enable a full terminal console

# Example Products

There are many USB Serial adapters available. Some examples are listed
here, but no specific adapter is required or recommended for this
project.

- The QEMU virutal machine environment emulates an FTDI based device
  (see more details above!)
  - <http://www.ftdichip.com/Drivers/D2XX.htm>
- [Keyspan
  USA-19HS](http://www.tripplite.com/en/products/model.cfm?txtSeriesID=849&txtModelID=3914)
- [Belkin USB to Serial
  adapter](http://www.belkin.com/IWCatProductPage.process?Product_Id=281230)
- [CablesToGo USB to DB9 Serial
  Adapter](http://www.cablestogo.com/product.asp?cat_id=7057&sku=26886)
- [IOGEAR USB to Serial RS-232
  Adapter](http://www.iogear.com/product/GUC232A/)

# Further Discussion

This project would be for an edk2 based driver, so please discuss the
project on <a href="edk2-devel" class="wikilink"
title="https://edk2.groups.io/g/devel"><span>https://edk2.groups.io/g/devel</span></a>.

# See Also

- <a href="Tasks#USB-to-serial_driver" class="wikilink"
  title="Tasks#USB-to-serial driver">Tasks#USB-to-serial driver</a>
