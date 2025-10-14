# 2013 Subversion Change

In April 2013, SourceForge began migrating projects to a different
hosting system. This upgrade process forces the subversion (svn) url to
change for our various projects.

In order to continue using subversion following this change, you will
need to use the 'svn switch' command to point your source tree at the
new location.

For example, if you have the EDK II tree checked out using the old url:

- [https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2)

You will need to switch to this url:

- [https://svn.code.sf.net/p/edk2/code/trunk/edk2](https://svn.code.sf.net/p/edk2/code/trunk/edk2)

In this case, in your edk-fat-driver tree, you would run this command:

    svn switch --relocate \
      https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2 \
      https://svn.code.sf.net/p/edk2/code/trunk/edk2

SourceForge has more documentation at [this
page](http://sourceforge.net/p/forge/community-docs/Repository%20Upgrade%20FAQ/).

<div class="t_projects">

| Projects with updated Subversion URL |  |  |
|----|----|----|
| Project | Old URL | New URL |
| [EDK II](http://www.tianocore.org/edk2/) | [https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2) | [https://svn.code.sf.net/p/edk2/code/trunk/edk2](https://svn.code.sf.net/p/edk2/code/trunk/edk2) |
| [EDK
II Buildtools](Edk2-buildtools) | [https://edk2-buildtools.svn.sourceforge.net/svnroot/edk2-buildtools](https://edk2-buildtools.svn.sourceforge.net/svnroot/edk2-buildtools) | [https://svn.code.sf.net/p/edk2-buildtools/code](https://svn.code.sf.net/p/edk2-buildtools/code) |
| [EDK](EDK) | [https://efidevkit.svn.sourceforge.net/svnroot/efidevkit](https://efidevkit.svn.sourceforge.net/svnroot/efidevkit) | [https://svn.code.sf.net/p/efidevkit/code](https://svn.code.sf.net/p/efidevkit/code) |
| [EDK
II Fat Driver](edk2-fat-driver) | [https://edk2-fatdriver2.svn.sourceforge.net/svnroot/edk2-fatdriver2](https://edk2-fatdriver2.svn.sourceforge.net/svnroot/edk2-fatdriver2) | [https://svn.code.sf.net/p/edk2-fatdriver2/code](https://svn.code.sf.net/p/edk2-fatdriver2/code) |
| [EFI Shell](efi-shell) | [https://efi-shell.svn.sourceforge.net/svnroot/efi-shell](https://efi-shell.svn.sourceforge.net/svnroot/efi-shell) | [https://svn.code.sf.net/p/efi-shell/code](https://svn.code.sf.net/p/efi-shell/code) |
| [EDK Fat
Driver](Edk-fat-driver) | [https://edk-fat-driver.svn.sourceforge.net/svnroot/edk-fat-driver](https://edk-fat-driver.svn.sourceforge.net/svnroot/edk-fat-driver) | [https://svn.code.sf.net/p/edk-fat-driver/code](https://svn.code.sf.net/p/edk-fat-driver/code) |
| [EDK Apps](Edk-apps) | [https://edk-apps.svn.sourceforge.net/svnroot/edk-apps](https://edk-apps.svn.sourceforge.net/svnroot/edk-apps) | [https://svn.code.sf.net/p/edk-apps/code](https://svn.code.sf.net/p/edk-apps/code) |
| EDK Contrib | [https://edkcontrib.svn.sourceforge.net/svnroot/edkcontrib](https://edkcontrib.svn.sourceforge.net/svnroot/edkcontrib) | [https://svn.code.sf.net/p/edkcontrib/code](https://svn.code.sf.net/p/edkcontrib/code) |
| [Framework-SCT](framework-sct) | [https://framework-sct.svn.sourceforge.net/svnroot/framework-sct](https://framework-sct.svn.sourceforge.net/svnroot/framework-sct) | [https://svn.code.sf.net/p/framework-sct/code](https://svn.code.sf.net/p/framework-sct/code) |
| [Network
I/O](network-io) | [https://network-io.svn.sourceforge.net/svnroot/network-io](https://network-io.svn.sourceforge.net/svnroot/network-io) | [https://svn.code.sf.net/p/network-io/code/](https://svn.code.sf.net/p/network-io/code/) |
| [EFI
Toolkit](efi-toolkit) | [https://efi-toolkit.svn.sourceforge.net/svnroot/efi-toolkit](https://efi-toolkit.svn.sourceforge.net/svnroot/efi-toolkit) | [https://svn.code.sf.net/p/efi-toolkit/code/](https://svn.code.sf.net/p/efi-toolkit/code/) |
| [EDK II
Share](EDK2Share) | [https://edk2share.svn.sourceforge.net/svnroot/edk2share](https://edk2share.svn.sourceforge.net/svnroot/edk2share) | [https://svn.code.sf.net/p/edk2share/code/](https://svn.code.sf.net/p/edk2share/code/) |
| [GCC Shell](gcc-shell) | [https://gcc-shell.svn.sourceforge.net/svnroot/gcc-shell](https://gcc-shell.svn.sourceforge.net/svnroot/gcc-shell) | [https://svn.code.sf.net/p/gcc-shell/code/](https://svn.code.sf.net/p/gcc-shell/code/) |

</div>

## git-svn

If you are using git-svn, then these links may help with changing your
svn url:

- [https://git.wiki.kernel.org/index.php/GitSvnSwitch](https://git.wiki.kernel.org/index.php/GitSvnSwitch)
- [http://theadmin.org/articles/git-svn-switch-to-a-different-a-svn-url/](http://theadmin.org/articles/git-svn-switch-to-a-different-a-svn-url/)
