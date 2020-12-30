# Structured Wrapper and Interface generator for Dart (SWID)

This folder contains the code for SWID. SWID is a highly experimental utility for translating a Dart package's public declarations into Typescript and corresponding Dart code that can be loaded as a CFR namespace. While experimental in nature, SWID is rapidly becoming the author of more and more Typescript code under `runtime/flutter` and associated Dart glue code in `lib/cfr/builtins/libs/flutter`.

With time SWID should obsolete writing Dart bindings by hand. Both for Flutter itself as well as third party packages that want to offer Hydro-SDK ports.

Limitations:
- Class methods that are annotated with `@mustCallSuper`
    - The way that overriden methods are expected to interact with their `super` counterparts is not immediately obvious in all cases. This is explicitly not supported except in the few cases where it is fundamental for Flutter. i.e. `StatefulWidget.dispose` etc.
- Non-nullable parameters that are only allowed to be non-nullable in the presence of others (non-nullability by assertion)
    - If a parameter is declared non-nullable, it will be emitted as such. There are many cases of this pattern in Flutter which will be patched individually so as not to be surprising for Flutter developers.
- Class methods that are annotated with `@protected`
- Operators
    - Operators should eventually be emitted as ordinary instance methods on the classes that originally defined them. There is no technical reason for this limitation. Just currently out of scope.
- Static const fields that refer to private static const constructors or functions


Current and WIP results:

### `dart:ui`
- [x] All enums
- [x] `Offset`
- [x] `OffsetBase`
- [x] `Size`
- [x] `Rect`
- [x] `AccessibilityFeatures`
- [x] `CallbackHandle`
- [x] `RRect`
- [x] `Path`

### `package:flutter`
- [x] All enums
#### Material
- [x] `Icons`
#### Cupertino
- [x] `CupertinoIcons`
#### Widgets
- [x] `IconData`  
#### Foundation
- [x] `TextTreeConfiguration`
- [x] `DiagnosticsNode`
- [x] `DiagnosticsSerializationDelegate`
- [x] `DiagnosticPropertiesBuilder`
- [x] `Diagnosticable`
- [x] `DiagnosticableTree`
- [x] `Key`