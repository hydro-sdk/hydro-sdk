# Hydro-SDK
![Logo](https://github.com/chgibb/hydro-sdk/blob/master/img/socialImage.png)

Author native [Flutter](https://flutter.dev/docs) experiences in Typescript and deliver updates directly to users over the air and out of band.

# What
Hydro provides a projection of Dart and Flutter into Typescript. Not everything Flutter provides has been projected yet. See https://hydro-sdk.github.io/hydro-sdk/  
Hydro compiles your code into a single `.hc` bytecode file which can be easily packed into an existing Flutter app or loaded over the network.

## What About Performance?
While your code is interpreted, ensuring it will work on all platforms that Flutter will, most of the heavy lifting is done in Dart code by Flutter itself. You don't need to sacrifice FPS or portability for quick iteration. See "Advanced Uses" below for documentation about compiling directly from Typescript to Dart for maximum performance.

# Features
## Hot Reload, Incremental Compilation
![Stateful Hot-reload Demo](https://github.com/chgibb/hydro-sdk/blob/master/readme-video.gif)

## Source Maps
![Source maps screenshot](https://github.com/chgibb/hydro-sdk/blob/master/img/sourceMapScreenShot.png)

- [Why](#why)  
- [How](#how)  
- [Examples](#examples)
- [Getting Started](#getting-started)
- [Advanced Uses](#advanced-uses)
- [Edge Cases and Errors at Compile Time](#edge-cases-and-errors-at-compile-time)
- [Edge Cases and Errors at Runtime](#edge-cases-and-errors-at-runtime)
- [Limitations](#limitations)
- [Supported Languages](#supported-languages)
- [Prior Art](#prior-art)
- [Interesting Links and Resources](#interesting-links-and-resources)

# Why
## Easier Delivery
Serve complete experiences over HTTP. Deliver updates to parts of your app, or deliver your entire app as a packaged bytecode image over the air to users. No app stores or long reviews.

# How
Hydo-SDK provides a Common Flutter Runtime (CFR), composed of a virtual machine implementing a subset of a Lua 5.2 environment, bindings for Flutter, Dart, some Javascript builtins, and a set of Flutter widgets exposing it all to embedders. All written in pure Dart. Hydro-SDK combines the CFR with guest language projections and a compilation toolchain for compiling supported languages into Lua bytecode, and Lua bytecode into Dart.

# Examples
Each example can be run over the air directly off of Github using it's corresponding `.hc` file under dist/.

## examples/pokeApp
An adaptation of https://github.com/iampawan/PokemonApp  
Shows off how to load data over HTTP using a port of the `http` package, wait until it's ready with `Future`s, parse it from JSON into `interface`s with `dart:convert`, pass it down the widget tree with a port of `ScopedModel`, let the user search on it with `TextFormField`s and animate transitions between screens with `Hero` animations.

## examples/hotel-booking
A line for line port of https://github.com/cybdom/hotel_booking_ui   
Shows off a highly customised UI with `Clip`s and `Stack`s.

## examples/animated-list
A line for line port of the Flutter catalog example showing off basic transition animations.

## examples/basic-app-bar
A line for line port of the Flutter catalog example showing off app bars and material icons.

## examples/counter
Obligatory Flutter stateful counter showcase showing a simple use of state.

## examples/hostArgs
An example demonstrating how to pass non-trivial arguments, including `Widget` trees from a host Flutter application through to embedded Hydro content. See also https://github.com/chgibb/hydro-sdk/blob/master/test/smoke/hostArgs_test.dart

## examples/unityGallery
Shows off how to use `CustomScrollView`s with `Sliver`s and override `ScrollPhysic`s to create a selection screen with all the other examples embedded.

# Getting Started
Check out the example project at https://github.com/hydro-sdk/hydro_demo for documentation about getting started

# Advanced Uses
## Transpile Typescript to Dart, Run Code in Mixed Mode With Mixed Native and Virtual (bytecode) Functions
Hydro includes a CLI utility under `bin` to compile `.hc` bytecode files into Dart code. The resulting Dart code exports a single variable called `thunks` which can be passed to any Dart-level Hydro widget, allowing the CFR's code-loader to swap out virtual functions with their native counterparts at run time. This effectively provides a Typescript -> Dart transpiler. The ouput doesn't look very similiar to the input Typescript, but is semantically equivalent. This can be leveraged for applications which rely on many separate `.hc` files at runtime, or to help keep the edit-debug experience for large `.hc` files fast and responsive.

## Binding Dart Code to Guest Code
Hydro's binding system is based on namespaced hook functions. Marshalling is based on a system of object boxers and unboxers.

### Namespaces
Namespaces are objects that are always available at the global scope in any context. They contain other objects and ultimately hook functions. The namespaces `hydro`, `dart`, `flutter`, and `http` are reserved for use by the CFR. The namespaces `com`, `edu`, `gov`, `mil`, `net`, and `org` are reserved as extension points for user code.

### Hook Functions
Hook functions are functions written in Dart that are exposed to the CFR. Because the CFR is based on a Lua 5.2 environment, hook functions expect Lua calling conventions. They must have the following signature:  
```dart
    //Functions in Lua can have multiple return types.
    //Hook functions should return a list of length 1 if they wish to return a single value.
    //Arguments are populated in the order that they are received.
    //The argument at index 0 is usually (but not always, as will be discussed) a reference to
    //the object calling the given function. If none is given, this 
    //defaults to a reference to the global object. This can be thought of as the ever-present
    //implicit 'this' parameter in Javascript. In this case, it's the implicit Lua 'self' 
    //parameter.
    List<dynamic> HookFunction(List<dynamic>);
```

### Boxers
The marshalling of objects into running CFR code from Dart is referred to as "boxing". The CFR only knows how to deal with instances of `HydroTable` or instances of Dart classes which extend the class `VMManagedBox<T>`. `VMManagedBox<T>` can be exploited to bind custom Dart classes and will be discussed in its own section along with registering boxers for custom types.

### Unboxing
The marshalling of objects out of the CFR to be passed to Dart code is referred to as "unboxing". Strictly speaking, the term "unboxing" as it's used in other object systems isn't always the operation that takes place. For instance, for interoperating with Flutter, instances of guest code classes are usually further wrapped into instances of `StatelessWidget`, `StatefulWidget`, `State`, etc. Registering custom unboxers for guest runtime types will be discussed in its own section.

### Hello World Hook
Exposing a Dart function which adds two numbers could look someting like the below:
```dart
//embedder.dart
...
customNamespaces: [
        ({HydroState hydroState}) {
          var myNamespaceTable = HydroTable();
          //The "org" top level namespace is already initialized for us
          hydroState.context.env["org"]["myNamespace"] = myNamespaceTable;

          myNamespaceTable["add"] =
              makeLuaDartFunc(func: (List<dynamic> args) {
            return [
                //We're assuming that args[0] is NOT a reference
                // to the calling object in this case
              args[0] + args[1]
            ];
          });
        }
```
```typescript
//add.ts
...

//Because it's impossible to statically type namespaces and their members at the Dart level,
//we can instead define only the part of the namespace that we want to wrap in
//a statically typed interface
declare const org : {
    myNamespace : {
        //Declaring "this : void" will instruct the compiler to treat this function
        //as a free function and omit the implicit this parameter when calling it
        add : (this : void, a : number, b : number) => number;
    }
}

//Finally, we can export a wrapper for other guest code to consume.
//We leave the implementation details of our hook and this section of our namespace
//up to the add.ts module and present consumers with an opaque, statically typed wrapper.
//Even if our namespace was more complicated, we only need to explicitly declare the 
//parts of it that we will reference in the given module.
//Because this function can only ever be called by other guest code, we don't need to worry
//about "this : void", or it's calling convention. We can write it as a regular function.
export function add(a : number, b : number) => org.myNamespace.add(a,b);
```

### Binding Custom Dart Widgets
See https://github.com/chgibb/hydro-sdk/blob/master/test/widget/customWidget-1_test.dart  and
https://github.com/chgibb/hydro-sdk/blob/master/test/widget/customWidget-1.ts for examples

### Injecting Methods Defined in Dart Into Instances of Classes Defined in Guest Code
TODO: This is done for `State`, `Future`, `List` etc. Explain how this works.

### Allow Guest Code to Allocate and Manipulate Classes Defined in Dart
TODO: This is done for `Future` etc. Explain how this works.

### Registering Object Boxers for Custom Types
TODO: This is done for `BuildContext`, `Response`, `Future` etc. Explain how this works.

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
     import {SizedBox} from "hydro-sdk/runtime/flutter/widgets/sizedBox/index"
     ``` 
     will be more efficient than
     ```typescript
    import {SizedBox} from "hydro-sdk/runtime/flutter/widgets/index"
     ```
     and
     ```typescript
     import {SizedBox} from "hydro-sdk/runtime/flutter/index"
     ```
     - The compiler is built on https://github.com/TypeScriptToLua/TypeScriptToLua . We inherit the same limitations https://typescripttolua.github.io/docs/caveats

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
- widget_extensions https://github.com/canewsin/widget_extensions

# Interesting Links and Resources
- John C. Reynolds, Definitional Interpreters for Higher-Order Programming Languages https://surface.syr.edu/cgi/viewcontent.cgi?article=1012&context=lcsmith_other
- Fabio Mascarenhas de Queiroz, Optimized Compilation of a Dynamic Language to a Managed Runtime Environment http://www.lua.inf.puc-rio.br/publications/mascarenhas09optimized.pdf
- Dibyendu Majumdar, Ravi Lua 5.3 bytecode reference https://the-ravi-programming-language.readthedocs.io/en/latest/lua_bytecode_reference.html
- Kein-Hong Man, A No-Frills Introduction to Lua 5.1 VM Instructions http://luaforge.net/docman/83/98/ANoFrillsIntroToLua51VMInstructions.pdf
- Rust Programming Language Request for Comments 2603, Symbol Name Mangling https://github.com/rust-lang/rfcs/blob/master/text/2603-rust-symbol-name-mangling-v0.md
- Itanium C++ Application Binary Interface Specification https://itanium-cxx-abi.github.io/cxx-abi/abi.html
- Yan Dong Zonz, Wen Hui-chao, Exploration and practice of Flutter packet size management https://tech.meituan.com/2020/09/18/flutter-in-meituan.html
- Shangxian, Meituan takeaway Flutter dynamic practice https://tech.meituan.com/2020/06/23/meituan-flutter-flap.html