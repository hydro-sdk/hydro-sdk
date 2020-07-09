# Hydro-SDK
![Logo](https://github.com/chgibb/hydro-sdk/blob/master/img/socialImage.png)

Author native [Flutter](https://flutter.dev/docs) experiences in Typescript and deliver updates directly to users over the air and out of band.

# What
Hydro provides a projection of Dart and Flutter into Typescript. Not everything Flutter provides has been projected yet. See https://chgibb.github.io/hydro-sdk/  
Hydro compiles your code into a single `.hc` bytecode file which can be easily packed into an existing Flutter app or loaded over the network.

# Features
## Hot Reload
![Stateful Hot-reload Demo](https://github.com/chgibb/hydro-sdk/blob/master/readme-video.gif)

## Source Maps
![Source maps screenshot](https://github.com/chgibb/hydro-sdk/blob/master/img/sourceMapScreenShot.png)

## Incremental Compiler
![Incremental compiler screenshot](https://github.com/chgibb/hydro-sdk/blob/master/img/compilerScreenShot.png)

# Why
## Easier Delivery
Serve complete experiences over HTTP. Deliver updates to parts of your app, or deliver your entire app as a packaged bytecode image over the air to users. No app stores or long reviews.


# Examples
Each example can be run over the air directly off of Github using it's corresponding `.hc` file under assets/examples/
## examples/animated-list/
A line for line port of the Flutter catalog example https://github.com/flutter/flutter/blob/master/examples/catalog/lib/animated_list.dart  

## examples/basic-app-bar/

A line for line port of the Flutter catalog example https://github.com/flutter/flutter/blob/master/examples/catalog/lib/basic_app_bar.dart  

## examples/counter/
Obligatory Flutter stateful counter showcase

## examples/hostArgs/
An example demonstrating how to pass non-trivial arguments, including `Widget` trees from a host Flutter application through to embedded Hydro content. See also https://github.com/chgibb/hydro-sdk/blob/master/test/smoke/hostArgs_test.dart

## examples/hotel-booking/
A line for line port of https://github.com/cybdom/hotel_booking_ui   
Demonstrates a small but non-trivial UI in 800 lines of Typescript.
# Getting Started
Check out the example project at https://github.com/chgibb/hydro-sdk/tree/master/example-project for documentation about getting started

# How
A Common Flutter Runtime (CFR) is composed of a virtual machine implementing a subset of a Lua 5.2 environment, together with a runtime function reassembler powering hot-reload, bindings for Flutter, Dart, Dart UI, some Javascript builtins, and a set of Flutter widgets exposing it all to embedders. All written in pure Dart. Hydro-SDK combines the Common Flutter Runtime together with guest language projections and a compilation toolchain for compiling supported languages into Lua bytecode, and Lua bytecode into Dart.

# Advanced Uses
## Run Code in Mixed Mode With Mixed Native and Virtual (bytecode) Functions
Hydro includes a CLI utility under `bin` to compile `.hc` bytecode files into Dart code. The resulting Dart code exports a single variable called `thunks` which can be passed to any Dart-level Hydro widget, allowing the CFR's code-loader to swap out virtual functions with their native counterparts at run time. This effectively provides a Typescript -> Dart transpiler. The ouput doesn't look very similiar to the input Typescript, but is semantically equivalent. This can be leveraged for applications which rely on many separate `.hc` files at runtime, or to help keep the edit-debug experience for large `.hc` files fast and responsive.

# Limitations
- General
    - ~~Flutter, and some of it's most popular third party packages (Like `Provider` and `ScopedModel`) rely on a lot of widget tree walking with RTTI to identify ancestors. The interface between guest code -> host code is a natural type-erasure barrier. This could be overcome to some degree if Dart supported generic constructors.
    - Most patterns that look like `Widget<OtherWidget>` aren't possible to express in guest code~~
    - Stateful hot-reload of guest code works with some limits. Incoming code with a higher number of function prototypes than what is currently running, or incoming code which would force a relocation of a running function prototype to a much higher source mapping will cause an abort and full restart.
    - Incoming code built in release mode will cause a full restart.
    - ~~It's not yet possible to pass arguments at startup from Dart -> guest code~~
- Typescript
    - The compiler toolchain needs to control `tsconfig` options in order to control compilation for different build profiles. `strict` is always turned on by default.
    - No `async` or `await` 
    - No `yield` or generators
    - The current compiler toolchain is really bad at tree-shaking. For example,
     ```typescript
     import {SizedBox} from "hydro-sdk/runtime/flutter/widgets/sizedBox"
     ``` 
     will be more efficient than
     ```typescript
    import {SizedBox} from "hydro-sdk/runtime/flutter/widgets"
     ```
     and
     ```typescript
     import {SizedBox} from "hydro-sdk/runtime/flutter"
     ```

# Supported Languages  
- [&check;] Typescript  
        https://github.com/TypeScriptToLua/TypeScriptToLua  
- [ ] Java  
        https://github.com/jtransc/jtransc  
- [ ] Kotlin  
        https://github.com/jtransc/jtransc  
- [ ] Scala  
        https://github.com/jtransc/jtransc  
- [ ] C#  
        https://github.com/yanghuan/CSharp.lua 

