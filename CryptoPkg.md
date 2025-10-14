# Cryptopkg

<a href="UEFI" class="wikilink" title="UEFI">UEFI</a> details interfaces
between the OS and platform firmware. Several security features were
introduced (e.g. Authenticated Variable Service, Driver Signing, etc)
starting in UEFI Specification version 2.2 (http://www.uefi.org). These
security features highly depend on cryptography, which is implemented in
EDK II using CryptoPkg.

<https://github.com/tianocore/edk2/tree/master/CryptoPkg>

<https://github.com/tianocore/edk2/raw/master/CryptoPkg/Library/OpensslLib/OpenSSL-HOWTO.txt>

For <a href="EDK_II" class="wikilink" title="EDK II">EDK II</a> branches
prior to <a href="UDK2017" class="wikilink" title="UDK2017">UDK2017</a>
... There is a dependency on a specific OpenSSL version for your
workspace. Please refer to

    <YourWorkSpace>/CryptoPkg/Library/OpensslLib/Patch-HOWTO.txt

for information on how to download and apply patches required to compile
CryptoPkg.
