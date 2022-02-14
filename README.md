# Hydro-SDK
![Logo](https://github.com/chgibb/hydro-sdk/blob/master/img/socialImage.png)

Author Flutter experiences in Typescript. No native bridge, no V8. Just Dart. From runtime to virtual machine.

# Sponsored by
Possibly you! See [sponsoring Hydro-SDK](https://github.com/sponsors/hydro-sdk)
# Documentation and Tutorials 
https://hydro-sdk.io/
# Features
## Hot Reload, Incremental Compilation
![Action Gif](https://github.com/hydro-sdk/counter-app/blob/master/media/action-gif.gif)

## Function Maps
![Function maps screenshot](https://github.com/chgibb/hydro-sdk/blob/master/img/sourceMapScreenShot.png)

# Roadmap
Hydro-SDK is a software development kit (SDK) enabling Flutter developers to write portions of their app (or their entire app) using Typescript. It is a project with one large, ambitious goal. "Become React Native for Flutter".
It aims to do that by:

1. Decoupling the API surface of Flutter from the Dart programming language.
2. Decoupling the development time experience of Flutter from the Dart programming language.
3. Providing first-class support for over-the-air distribution of code.
4. Providing an ecosystem of packages from pub.dev, automatically projected to supported languages and published to other package systems.

Hydro-SDK is currently only suitable for simple content. A few dozen Flutter widgets are supported. Content built with Hydro-SDK can be updated over the air using Hydro-SDK's built-in [codepush](https://hydro-sdk.io/blog/fluttering-over-the-air). Content can be authored in a similar manner as in Dart with hot-reload and limited IDE debugging support.

## Near Term
### API Support
Continue expanding available Dart and Flutter APIs with automatic language projection (ALP) using [Structured Wrapper and Interface generator for Dart (SWID)](https://github.com/hydro-sdk/hydro-sdk/tree/master/lib/swid).  This effort is where the overwhelming amount of focus currently is. Having a stable and high quality ALP will allow for the re-use of existing packages from `pub.dev` in Typescript. This will also allow for expanding support for authoring Hydro-SDK content to other programming languages.

This work is tracked at a high-level in the [Binding Generator project](https://github.com/hydro-sdk/hydro-sdk/projects/5) and in other sub-projects.
This work is required to expand support for Flutter 2.8 (and 2.10) and is directly related to the following umbrella issues.
- [☂️ Support Flutter 2.8](https://github.com/hydro-sdk/hydro-sdk/issues/773)
- [☂️ Cables](https://github.com/hydro-sdk/hydro-sdk/issues/684)

## Medium Term
### Developer Ergonomics  
Improving developer ergonomics with more affective testing workflows and support for Typescript language features like `async` / `await` interop with Dart.
This is being scoped and tracked at a high level in umbrella issues.
- [☂️ Improved Test Ergonomics](https://github.com/hydro-sdk/hydro-sdk/issues/843)
- [☂️ Typescript 4](https://github.com/hydro-sdk/hydro-sdk/issues/844)
### Performance
Establishing performance baselines through benchmarking. Some efforts to improve performance. This is being scoped and tracked at a high level in umbrella issues.
- [☂️ Optimizing Lua Compiler](https://github.com/hydro-sdk/hydro-sdk/issues/797)
- [☂️ Size Benchmarks](https://github.com/hydro-sdk/hydro-sdk/issues/846)
- [☂️ CPU and Memory Benchmarks](https://github.com/hydro-sdk/hydro-sdk/issues/845)

## Long Term Projects
## Developer Ergonomics
Lower the barrier to entry for developers with non-mobile backgrounds that are interested in trying out Flutter and Hydro-SDK.
- [☂️ Component Preview](https://github.com/hydro-sdk/hydro-sdk/issues/763)
## Services
### Registry
A closed-source component registry for first-class support for hosting and running over-the-air (OTA) update packages built using the open-source Hydro-SDK. This service is already live as a basic [MVP](https://registry.hydro-sdk.io/#/).

### Registry Value Adds
In the future, building paid features such as targeted distribution, analytics, feature flagging and logging directly into Registry are expected to be a viable path to monetization.

### Language Support
Hydro-SDK is language agnostic. In the future, it should be possible to support authoring content in other programming languages to attract users from other ecosystems (Flixel, .NET, Xamarin).
### Tier 1 (hot-reload, programmatic debugging, function maps)
- [&check;] Typescript  
    https://github.com/TypeScriptToLua/TypeScriptToLua
### Tier 2 (hot-reload, programmatic debugging)
- [ ] Haxe  
    https://github.com/HaxeFoundation/haxe    
- [ ] C#  
    https://github.com/yanghuan/CSharp.lua 

# Prior Art for Common Flutter Runtime
- Dartlua, Andre Lipke https://github.com/PixelToast/dartlua
- React Native, Facebook https://reactnative.dev/
- LuaViewSdk, Alibaba https://github.com/alibaba/LuaViewSDK
- ILRuntime, Ourpalm https://github.com/Ourpalm/ILRuntime
- Flutterscript, Charles Lowell https://github.com/cowboyd/flutterscript
- Lisp in Dart, Suzuki Hisao https://github.com/nukata/lisp-in-dart
- widget_extensions https://github.com/canewsin/widget_extensions
- xamarin.flutter https://github.com/adamped/xamarin.flutter

# Prior Art for Structured Wrapper and Interface generator for Dart
- Dartle, https://docs.google.com/document/d/1Ei0ZIqdqNjxTHoGB3Ay6SWQg3DMSsKKWl70XoBUCFTA/edit
- Pigeon, https://github.com/flutter/packages/tree/master/packages/pigeon
- Djinni, https://github.com/dropbox/djinni
- Uniffi-rs, https://github.com/mozilla/uniffi-rs
- TS to CSharp, https://github.com/mono/TsToCSharp


# Interesting Links and Resources
- John C. Reynolds, Definitional Interpreters for Higher-Order Programming Languages https://surface.syr.edu/cgi/viewcontent.cgi?article=1012&context=lcsmith_other
- Andrey Mokhov, Neil Mitchell, Simon Peyton Jones, Build Systems a la carte: Theory and Practice https://www.cambridge.org/core/journals/journal-of-functional-programming/article/build-systems-a-la-carte-theory-and-practice/097CE52C750E69BD16B78C318754C7A4
- Fabio Mascarenhas de Queiroz, Optimized Compilation of a Dynamic Language to a Managed Runtime Environment http://www.lua.inf.puc-rio.br/publications/mascarenhas09optimized.pdf
- Michael Schroder, Optimizing Lua Using Run-time Type Specialization https://www.complang.tuwien.ac.at/anton/praktika-fertig/schroeder/thesis.pdf
- Satoru Kawahara, Optimizing Lua VM Bytecode Using Global Dataflow Analysis https://nymphium.github.io/pdf/opeth_report.pdf
- Haichuan Wang, Compiler and Runtime Techniques for Optimizing Dynamic Scripting Languages https://www.ideals.illinois.edu/bitstream/handle/2142/78638/WANG-DISSERTATION-2015.pdf?sequence=1&isAllowed=y
- Kevin Williams, Jason McCandless, David Gregg, Dynamic Interpretation for Dynamic Scripting Languages https://sites.cs.ucsb.edu/~ckrintz/papers/TCD-CS-2009-37.pdf
- Dibyendu Majumdar, Ravi Lua 5.3 bytecode reference https://the-ravi-programming-language.readthedocs.io/en/latest/lua_bytecode_reference.html
- Kein-Hong Man, A No-Frills Introduction to Lua 5.1 VM Instructions http://luaforge.net/docman/83/98/ANoFrillsIntroToLua51VMInstructions.pdf
- Rust Programming Language Request for Comments 2603, Symbol Name Mangling https://github.com/rust-lang/rfcs/blob/master/text/2603-rust-symbol-name-mangling-v0.md
- Itanium C++ Application Binary Interface Specification https://itanium-cxx-abi.github.io/cxx-abi/abi.html
- Yan Dong Zonz, Wen Hui-chao, Exploration and practice of Flutter packet size management https://tech.meituan.com/2020/09/18/flutter-in-meituan.html
- Shangxian, Meituan takeaway Flutter dynamic practice https://tech.meituan.com/2020/06/23/meituan-flutter-flap.html
- Vyacheslav Egorov, 10 Years of Dart (Slides)
    https://mrale.ph/talks/vmil2020/
