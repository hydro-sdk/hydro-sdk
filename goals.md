Become "React Native for Flutter" by:  
1. Decoupling the API surface of Flutter (`package:flutter`, `dart:ui`, `dart:core`, etc) from  the Dart programming language.
* Enabled by building tools to automatically project Dart packages into supported languages
    * SWID https://github.com/hydro-sdk/hydro-sdk/projects/5
    * Building a code generation backend for SWID producing Haxe https://github.com/hydro-sdk/hydro-sdk/projects/10  
    * Building a code generation backend for SWID producing C# https://github.com/hydro-sdk/hydro-sdk/projects/11
2. Decoupling the development time experience of Flutter (stateful hot-reload) from the Dart programming language.
* Enabled by continued investment into the Common Flutter Runtime virtual machine and associated toolchains.
    * Optimizing compiler framework 
        * https://github.com/hydro-sdk/hydro-sdk/projects/8
        * https://github.com/hydro-sdk/hydro-sdk/projects/9
3. Providing avenues for over-the-air distribution of code.
* Enabled by current HTTP based system. Not very ergonomic. Needs investment to mirror Dart VMs use of websockets for development time, coupled with HTTP for release use.
4. Providing an ecosystem of packages from `pub.dev`, automatically projected to supported languages and published to other package systems.  
* Enabled by 1., 2., 3.
