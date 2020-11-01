# Structured Wrapper and Interface generator for Dart (SWID)

This folder contains the code for SWID. SWID is a highly experimental utility for translating a Dart package's public declarations into Typescript and corresponding Dart code that can be loaded as a CFR namespace. While experimental in nature, SWID is rapidly becoming the author of more and more Typescript code under `runtime/flutter` and associated Dart glue code in `lib/cfr/builtins/libs/flutter`.

With time SWID should obsolete writing Dart bindings by hand. Both for Flutter itself as well as third party packages that want to offer Hydro-SDK ports.

- [x] Every enum in `package:flutter`

### Material
- [x] `Icons`
### Cupertino
- [x] `CupertinoIcons`
### Widgets
- [x] `IconData`  
### Foundation
- [ ] `TextTreeConfiguration`