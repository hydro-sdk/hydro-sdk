# Hydro-SDK

Author native [Flutter](https://flutter.dev/docs) experiences in Typescript and deliver updates directly to users over the air and out of band.

![Stateful Hot-reload Demo](https://github.com/chgibb/hydro-sdk/blob/master/readme-video.gif)

# What
Hydro provides a projection of Dart and Flutter into Typescript. Not everything Flutter provides has been projected yet. See https://chgibb.github.io/hydro-sdk/  


# Limitations
- General
    - Flutter, and some of it's most popular third party packages (Like `Provider` and `ScopedModel`) rely on a lot of widget tree walking with RTTI to identify ancestors. The interface between guest code -> host code is a natural type-erasure barrier. This could be overcome to some degree if Dart supported generic constructors.
    - Most patterns that look like `Widget<OtherWidget>` aren't possible to express in guest code
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

#Supported Languages  
- [&check;] Typescript  
        https://github.com/TypeScriptToLua/TypeScriptToLua  
- [ ] Haxe  
        https://haxe.org/  
- [ ] Java  
        https://github.com/jtransc/jtransc  
- [ ] Kotlin  
        https://github.com/jtransc/jtransc  
- [ ] Scala  
        https://github.com/jtransc/jtransc  
- [ ] C#  
        https://github.com/yanghuan/CSharp.lua 

