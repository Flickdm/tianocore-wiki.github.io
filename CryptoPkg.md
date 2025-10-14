# Cryptopkg

[UEFI](UEFI) details interfaces
between the OS and platform firmware. Several security features were
introduced (e.g. Authenticated Variable Service, Driver Signing, etc)
starting in UEFI Specification version 2.2 ([http://www.uefi.org](http://www.uefi.org)). These
security features highly depend on cryptography, which is implemented in
EDK II using CryptoPkg.

[https://github.com/tianocore/edk2/tree/master/CryptoPkg](https://github.com/tianocore/edk2/tree/master/CryptoPkg)

[https://github.com/tianocore/edk2/raw/master/CryptoPkg/Library/OpensslLib/OpenSSL-HOWTO.txt](https://github.com/tianocore/edk2/raw/master/CryptoPkg/Library/OpensslLib/OpenSSL-HOWTO.txt)

For [EDK II](EDK_II) branches
prior to [UDK2017](UDK2017)
... There is a dependency on a specific OpenSSL version for your
workspace. Please refer to

    <YourWorkSpace>/CryptoPkg/Library/OpensslLib/Patch-HOWTO.txt

for information on how to download and apply patches required to compile
CryptoPkg.
