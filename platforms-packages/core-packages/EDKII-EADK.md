# EDKII EADK

EDK II Application Development Kit for include the Standard C Libraries
in UEFI Shell Applications



<table>

<tr>

<th colspan="4" style="background-color:#a9c6dd">

EDK II Application Development Kit (EADK)

</th>

</tr>

<tr>

<th>

Download

</th>

<th>

Description

</th>

</tr>

<tr>

</tr>

<tr>

<td>

**EADK**-

[release
1.02.zip](http://sourceforge.net/projects/edk2/files/EDK%20II%20Releases/EADK/EADK_1.02/EadkPkg_B1.02_Release.zip/download)

------------------------------------------------------------------------

[Release
Notes](http://sourceforge.net/projects/edk2/files/EDK%20II%20Releases/EADK/EADK_1.02/EADK_1.02_Release_notes.txt/download)

</td>

<td>

EDK II Application Development Kit (EADK) Release 1.02 Package
incorporates using the Standard C Library components. Include these into
standard "C" applications. See the AppPkg for "Hello World" example

- This release is based on SVN:
- [https://svn.code.sf.net/p/edk2/code/trunk/edk2/](https://svn.code.sf.net/p/edk2/code/trunk/edk2/) -r 14804

Packages Included: (Note: get the latest from the
[UDK2010](../../releases-history/archives/UDK2010.md)
release)
**1) [AppPkg](AppPkg.md)**;-
This package contains applications which demonstrate use of the Standard
C Library. These applications reside in AppPkg/Applications.

- **Enquire** This is a program that determines many properties of the C
  compiler and the target machine that Enquire is run on. The only
  changes required to port this 1990s era Unix program to EDK II were
  the addition of eight pragmas to enquire.c in order to disable some
  Microsoft VC++ specific warnings.
- **Hello** This is a very simple EDK II native application that doesn't
  use any features of the Standard C Library.

- **Main** This application is functionally identical to Hello, except
  that it uses the Standard C Library to provide a main() entry point.
- **Python** A port of the Python-2.7.2 interpreter for UEFI. This
  application is disabled by default. Un-comment the line for
  PythonCore.inf in the \[Components\] section of AppPkg.dsc to enable
  building Python.

- **Sockets** A collection of applications demonstrating use of the EDK
  II Socket Libraries. These applications include:

:\* DataSink

:\* DataSource

:\* GetAddrInfo

:\* GetHostByAddr

:\* GetHostByDns

:\* GetHostByName

:\* GetNetByAddr

:\* GetNetByName

:\* GetServByName

:\* GetServByPort

:\* OobRx

:\* OobTx

:\* RawIp4Rx

:\* RawIp4Tx

:\* RecvDgram

:\* SetHostName

:\* SetSockOpt

:\* TftpServer

:\* WebServer
**2) [StdLib](StdLib.md)**

\- The StdLib package contains the standard header files as well as implementations of the standard libraries.

</td>

</tr>

<tr>

<th>

</th>

<th>

Earlier Releases of EADK

</th>

</tr>

<tr>

<td>

[Beta
1.zip](http://sourceforge.net/projects/edk2/files/EDK%20II%20Releases/EADK/UDK2010.SR1.UP1.P1/EADK_B1_Release.zip/download)

[Release
Notes](http://sourceforge.net/projects/edk2/files/EDK%20II%20Releases/EADK/UDK2010.SR1.UP1.P1/EADK_B1_Release_Notes.txt/download)

</td>

<td>

- This release is based on SVN: (Same as UDK2010.SR1.UP1.P1)
- [https://svn.code.sf.net/p/edk2/code/branches/UDK2010.SR1/](https://svn.code.sf.net/p/edk2/code/branches/UDK2010.SR1/) -r 14385

</td>

</tr>

<tr>

<td>

[EADK Alpha 2
.zip](http://sourceforge.net/projects/edk2/files/EDK%20II%20Releases/EADK/EADK_A2_Release.zip/download)

[Release
Notes](http://sourceforge.net/projects/edk2/files/EDK%20II%20Releases/EADK/EADK_A2_Release_notes.txt/download)

</td>

<td>

- Based on SVN [http://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2](http://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2)
  r11577

</td>

</tr>

</table>


