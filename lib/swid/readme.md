# Structured Wrapper and Interface generator for Dart (SWID)

This folder contains the code for SWID. SWID is a highly experimental utility for translating a Dart package's public declarations into Typescript and corresponding Dart code that can be loaded as a CFR namespace. While experimental in nature, SWID is already used to generate all of the `enums` in `runtime/flutter` as well as the entirety of Hydro-SDKs Material Icons class in `runtime/flutter/material/icons.ts` by analyzing and translating the Flutter package itself.

With time SWID should obsolete writing Dart bindings by hand. Both for Flutter itself as well as third party packages that want to offer Hydro-SDK ports.