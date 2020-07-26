# Hydro-SDK
![Logo](https://github.com/chgibb/hydro-sdk/blob/master/img/socialImage.png)

Author native [Flutter](https://flutter.dev/docs) experiences in Typescript and deliver updates directly to users over the air and out of band.

# What
Hydro provides a projection of Dart and Flutter into Typescript. Not everything Flutter provides has been projected yet. See https://chgibb.github.io/hydro-sdk/  
Hydro compiles your code into a single `.hc` bytecode file which can be easily packed into an existing Flutter app or loaded over the network.

# Features
## Hot Reload, Incremental Compilation
![Stateful Hot-reload Demo](https://github.com/chgibb/hydro-sdk/blob/master/readme-video.gif)

## Source Maps
![Source maps screenshot](https://github.com/chgibb/hydro-sdk/blob/master/img/sourceMapScreenShot.png)

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
Common Flutter Runtime (CFR) is composed of a virtual machine implementing a subset of a Lua 5.2 environment, together with a runtime function reassembler powering hot-reload, bindings for Flutter, Dart, Dart UI, some Javascript builtins, and a set of Flutter widgets exposing it all to embedders. All written in pure Dart. Hydro-SDK combines the Common Flutter Runtime together with guest language projections and a compilation toolchain for compiling supported languages into Lua bytecode, and Lua bytecode into Dart.

# Advanced Uses
## Run Code in Mixed Mode With Mixed Native and Virtual (bytecode) Functions
Hydro includes a CLI utility under `bin` to compile `.hc` bytecode files into Dart code. The resulting Dart code exports a single variable called `thunks` which can be passed to any Dart-level Hydro widget, allowing the CFR's code-loader to swap out virtual functions with their native counterparts at run time. This effectively provides a Typescript -> Dart transpiler. The ouput doesn't look very similiar to the input Typescript, but is semantically equivalent. This can be leveraged for applications which rely on many separate `.hc` files at runtime, or to help keep the edit-debug experience for large `.hc` files fast and responsive.

# Limitations
- General
    - ~~Flutter, and some of it's most popular third party packages (Like `Provider` and `ScopedModel`) rely on a lot of widget tree walking with RTTI to identify ancestors. The interface between guest code -> host code is a natural type-erasure barrier. This could be overcome to some degree if Dart supported generic constructors.~~
    - ~~Most patterns that look like `Widget<OtherWidget>` aren't possible to express in guest code~~
    - ~~Stateful hot-reload of guest code works with some limits. Incoming code with a higher number of function prototypes than what is currently running, or incoming code which would force a relocation of a running function prototype to a much higher source mapping will cause an abort and full restart.~~
    - Incoming code built in release mode will cause a full restart.
    - ~~It's not yet possible to pass arguments at startup from Dart -> guest code~~
- Typescript
    - The compiler toolchain needs to control `tsconfig` options in order to control compilation for different build profiles. `strict` is always turned on by default.
    - No `async` or `await`. Though, asynchronous programming is possible using a projection of Dart's `Future` class. 
    - No `yield` or generators
    - We make best efforts to create an environment where APIs written for Dart's nominal, reified type system feel natural being consumed from Typescript's structural, erased type system. In some cases, this involves passing extra parameters into an API which in Dart would have expected only a type parameter. This is most used in widget tree walking APIs like `ScopedModel`.
    An example from the `PokeApp` example:
    ```typescript  
    public build(context: BuildContext) 
    {
        const pokeHubService = ScopedModel.of<PokeHubService>(context, PokeHubService.staticType);
        ...
    ```
    Our port of `ScopedModel` can be found here https://github.com/chgibb/hydro-sdk/tree/master/runtime/scopedModel
    Full `PokeApp` example here https://github.com/chgibb/hydro-sdk/tree/master/examples/pokeApp  

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

# Edge-Cases and Errors at Compile Time
## `method-name and other-method-name Defined at some-file:line,column (x,y) and some-other-file:other-line,other-column (a,b) both mangled to the following: big-hashed-name`
In debug mode, the compiler tracks the identity of functions across different compiles by mangling function names. This information is passed on to (and required by) the CFR's virtual machine in debug mode in order to enable hot-reload. The above error is a santiy check performed by the compiler during compilation to ensure it hasn't accidentally assigned the same identity to two functions that it knows are not the same. This is NOT an error with your code. If you encounter this, please file an issue so we can make the compiler smarter.

# Edge-Cases and Errors at Runtime
## `Dispatched function prototypes are required to have debug symbols but the prototype from x-y in big-hashed-name could not be matched to a debug symbol`
In debug mode, the CFR's virtual machine needs code being called into from the Flutter framework as part of Flutter's normal widget lifecycle to have debugging information attached to it in order to provide hot reload. This error can usually be observed being raised when trying to execute `build` methods in Typescript classes which extend `StatelessWidget` or `State`. This is NOT an error with your code. This usually means the compiler wasn't quite smart enough to find all of the anonymous functions/tear offs you're using in your `build` methods and report them to the VM for debugging and hot-reload. If you encounter this, please file an issue so we can make the compiler smarter.

## `Failed to dispatch to big-hashed-method-name from x-y in big-hashed-name`
In debug mode, the CFR's virtual machine will enforce that all code being called into from the Flutter framework as part of Flutter's normal widget lifecycle is looked up just in time before it's executed. If the virtual machine fails to lookup a function that is being called, this error will be thrown. This error can be observed when running code that is in the middle of attempting to call code that has just been deleted as part of a hot-reload.

## `attempt to index a nil value null foo`
This error can be seen by regular Typescript code that attempts to access a field `foo` on an uninitialized object. If this error is observed originating in `hydro-sdk/runtime` Typescript code, after a hot-reload is performed, it may indicate a limitation of hot-reload. In debug mode, functions have their enclosing scopes refreshed before they are executed. This error can sometimes be caused by adding an `import` statement for a file which has never been imported before anywhere in the life of the currently running program. In this case, the code being executed is having it's enclosing scope refreshed to include the new symbols being `import`ed, but the `import`ed file itself is not being executed in order to initialise the new symbols being used, resulting in trying to index into `nil` values. This issue can be remedied by performing a hot-restart of the Dart code running the CFR virtual machine. This error does NOT necessarily indicate an error with your code.

# Supported Languages  
- [&check;] Typescript  
        https://github.com/TypeScriptToLua/TypeScriptToLua  
- [ ] C#  
        https://github.com/yanghuan/CSharp.lua 

# Prior Art
- Dartlua, Andre Lipke https://github.com/PixelToast/dartlua
- React Native, Facebook https://reactnative.dev/
- LuaViewSdk, Alibaba https://github.com/alibaba/LuaViewSDK
- ILRuntime, Ourpalm https://github.com/Ourpalm/ILRuntime
- Flutterscript, Charles Lowell https://github.com/cowboyd/flutterscript
- Lisp in Dart, Suzuki Hisao https://github.com/nukata/lisp-in-dart

# Interesting Links and Resources
- John C. Reynolds, Definitional Interpreters for Higher-Order Programming Languages https://surface.syr.edu/cgi/viewcontent.cgi?article=1012&context=lcsmith_other
- Fabio Mascarenhas de Queiroz, Optimized Compilation of a Dynamic Language to a Managed Runtime Environment http://www.lua.inf.puc-rio.br/publications/mascarenhas09optimized.pdf
- Ravi Lua 5.3 bytecode reference https://the-ravi-programming-language.readthedocs.io/en/latest/lua_bytecode_reference.html
- Kein-Hong Man, A No-Frills Introduction to Lua 5.1 VM Instructions http://luaforge.net/docman/83/98/ANoFrillsIntroToLua51VMInstructions.pdf
- Rust Programming Language Request for Comments 2603, Symbol Name Mangling https://github.com/rust-lang/rfcs/blob/master/text/2603-rust-symbol-name-mangling-v0.md
- Itanium C++ Application Binary Interface Specification https://itanium-cxx-abi.github.io/cxx-abi/abi.html