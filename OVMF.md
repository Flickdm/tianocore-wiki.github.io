OVMF is an [EDK II](EDK-II.md) based project to enable [UEFI](UEFI.md) support for Virtual Machines. OVMF contains sample UEFI firmware for [QEMU](http://www.qemu-project.org/) and [KVM](http://www.linux-kvm.org/).

License: [[BSD|BSD License]]

More information: [OVMF FAQ](OVMF-FAQ.md), [How to build OVMF](How-to-build-OVMF.md), [[Boot Overview|OVMF-Boot Overview]], [[edk2-devel]]

Source repository: https://github.com/tianocore/edk2/tree/master/OvmfPkg

Additional Information

* http://www.linux-kvm.org/page/OVMF
* http://wiki.xen.org/wiki/OVMF
* Gerd Hoffmann’s OVMF builds: https://www.kraxel.org/repos/
  * These images are automatically built and track the latest OVMF code in the EDK II tree.
  * Some of these builds include a seabios CSM and can boot non-UEFI “legacy” operating systems. (Note: seabios is GPLv3 licensed.)
  * If your OS doesn’t work with RPM repositories, then you can manually download and decompress the RPM files under jenkins/edk2
