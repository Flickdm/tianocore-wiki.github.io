# Nt32Pkg

Nt32Pkg has been removed. Please use the [EmulatorPkg](../../platforms-packages/platform-ports/emulator_pkg.md) as an
alternative.

---

Nt32Pkg implements [NT32](nt32.md), a [UEFI](../../reference/specs-standards/uefi.md) simulation environment for
Microsoft Windows. Unlike [OVMF](../../platforms-packages/platform-ports/ovmf.md), [NT32](nt32.md) does not support
platform emulation or loading an operating system. NT32 is primarily used for UEFI pre-OS application prototyping and
developer training.

NT32 will provide boot and runtime services for application development, mapping UEFI functions to Windows APIs. Boot
services cannot be terminated in NT32.

The goals and features of the Nt32Pkg platform are similar to [UnixPkg](unix_pkg.md) and
[EmulatorPkg](../../platforms-packages/platform-ports/emulator_pkg.md). Our long term goal is to port
[EmulatorPkg](../../platforms-packages/platform-ports/emulator_pkg.md) to Microsoft Windows and retire Nt32Pkg.

Using NT32 emulation with Windows:

* To build Nt32pkg in Windows see: How to build using [Windows
  Systems](../../build-tooling/environment-setup/windows_systems.md)
* To Run the NT32 Emulation,
  * after building the Nt32Pkg successfully`>Build -p Nt32Pkg/Nt32Pkg.dsc`
  * at the Command prompt type: `>Build Run`
* The NT32 emulation will then display 2 UGA Windows with the UEFI Shell environment.

Source Repository:
[https://github.com/tianocore/edk2/tree/master/Nt32Pkg](https://github.com/tianocore/edk2/tree/master/Nt32Pkg)
