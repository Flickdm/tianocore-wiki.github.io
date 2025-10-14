# ArmPkg CommonError

### Build Errors

#### Undefined symbol \\aeabi\_\*

    armlink : error L6218:  Undefined symbol __aeabi_uidivmod (referred from BaseLib.lib).
    armlink : error L6218:  Undefined symbol __aeabi_lasr (referred from BaseLib.lib).
    armlink : error L6218:  Undefined symbol __aeabi_ldivmod (referred from BaseLib.lib).
    armlink : error L6218:  Undefined symbol __aeabi_llsl (referred from BaseLib.lib).
    armlink : error L6218:  Undefined symbol __aeabi_llsr (referred from BaseLib.lib).
    armlink : error L6218:  Undefined symbol __aeabi_uldivmod (referred from BaseLib.lib).

The solution is to add CompilerIntrinsicsLib to your DSC file:

    [LibraryClasses.ARM]
      NULL|ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib.inf
