# Oneline Release Notes Generation

One benefit of our [Commit Message Format](../../development/contribution-guides/Commit-Message-Format.md) is to allow
easy creation of brief (single-line) release notes

## Brief (oneline) Release Notes

If you use git, then the builtin support for oneline release notes can be used:
`git log --oneline`

Using `svn log` along with small scripts such as those shown below, brief release notes can easily be generated.

Some examples:

svn log -l 5 | awk -f svn-log-to-oneline.awk
svn log -r 10972:10974 <https://edk2.svn.sourceforge.net/svnroot/edk2/trunk> | python svn-log-to-oneline.py

You get a result like:

r10972 UefiCpuPkg CpuDxe: Fix bug with CPU Arch RegisterInterruptHandler
r10973 DuetPkg: Add DXE APRIORI for 8259 driver
r10974 DuetPkg: Use UefiCpuPkg/CpuDxe instead of DuetPkg/CpuDxe

## svn-log-to-oneline.awk

```text
## Convert svn log output to a single line per commit

BEGIN { s=0 }

## Line of dashes
s==0 && /^[-]+$/ { s++; next }

## Find revision number
s==1 && $2=="|" && $1 ~ /^r[0-9]+$/ { r=$1; s++; next }

## Find summary line and print result
s==2 && /.+/ { print r, $0; s=0 }
```

## svn-log-to-oneline.py

```python
import re, sys
rec = re.compile('^[-]+\n(r[0-9]+)[^\n]+\n\n([^\n]+)', re.M)
stdin = sys.stdin.read()
while True:
    mo = rec.search(stdin)
    if mo is None: break
    print mo.group(1), mo.group(2)
    stdin = stdin[mo.end():]
```
