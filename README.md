# Hydro-SDK
![Logo](https://github.com/chgibb/hydro-sdk/blob/master/img/socialImage.png)

Author Flutter experiences in Typescript. No native bridge, no V8. Just Dart. From runtime to virtual machine.

# Sponsored by:
<a href="https://github.com/publicdomaincompany">
    <img align="center" style="height:40px;width:40px" src="https://avatars.githubusercontent.com/u/79655805?s=200&v=4">
</a>    

# Documentation and Tutorials: https://hydro-sdk.io/

# Features
## Hot Reload, Incremental Compilation
![Action Gif](https://github.com/hydro-sdk/counter-app/blob/master/media/action-gif.gif)

## Function Maps
![Function maps screenshot](https://github.com/chgibb/hydro-sdk/blob/master/img/sourceMapScreenShot.png)

# Roadmap
## Services
### Codepush
A closed-source component registry for first-class support for hosting and running over-the-air (OTA) update packages built using the open-source Hydro-SDK.

## Lanuage Support
### Tier 1 (hot-reload, programmatic debugging, function maps)
- [&check;] Typescript  
    https://github.com/TypeScriptToLua/TypeScriptToLua
### Tier 2 (hot-reload, programmatic debugging)
- [ ] Haxe  
    https://github.com/HaxeFoundation/haxe    
- [ ] C#  
    https://github.com/yanghuan/CSharp.lua 

## API Support
Continue expanding available Dart APIs with automatic language projection (ALP) in the Structured Wrapper and Interface generator for Dart (SWID) sub-project https://github.com/hydro-sdk/hydro-sdk/tree/master/lib/swid


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
- Dibyendu Majumdar, Ravi Lua 5.3 bytecode reference https://the-ravi-programming-language.readthedocs.io/en/latest/lua_bytecode_reference.html
- Kein-Hong Man, A No-Frills Introduction to Lua 5.1 VM Instructions http://luaforge.net/docman/83/98/ANoFrillsIntroToLua51VMInstructions.pdf
- Rust Programming Language Request for Comments 2603, Symbol Name Mangling https://github.com/rust-lang/rfcs/blob/master/text/2603-rust-symbol-name-mangling-v0.md
- Itanium C++ Application Binary Interface Specification https://itanium-cxx-abi.github.io/cxx-abi/abi.html
- Yan Dong Zonz, Wen Hui-chao, Exploration and practice of Flutter packet size management https://tech.meituan.com/2020/09/18/flutter-in-meituan.html
- Shangxian, Meituan takeaway Flutter dynamic practice https://tech.meituan.com/2020/06/23/meituan-flutter-flap.html
- Vyacheslav Egorov, 10 Years of Dart (Slides)
    https://mrale.ph/talks/vmil2020/
