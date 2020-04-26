# Hydro-SDK

Author native [Flutter](https://flutter.dev/docs) experiences in Typescript and deliver updates directly to users over the air and out of band.

![Stateful Hot-reload Demo](https://github.com/chgibb/hydro-sdk/blob/master/readme-video.gif)

# What
Hydro provides a projection of Dart and Flutter into Typescript. Not everything Flutter provides has been projected yet. See https://chgibb.github.io/hydro-sdk/  
Hydro compiles your code into a single `.hc` bytecode file which can be easily packed into an existing Flutter app or loaded over the network.

# Why
## Easier Delivery
Serve complete experiences over HTTP. Deliver updates to parts of your app, or deliver your entire app as a packaged bytecode image over the air to users. No app stores or long reviews.


## Author Experiences in More Expressive Languages
The Flutter team has written at length about why Flutter uses Dart. Most prolifically on [Hackernoon](https://hackernoon.com/why-flutter-uses-dart-dd635a054ebf) as well on the Flutter website and across Github and Reddit threads. Dart undeniably brings a world class tool chain, build and deployment experience. However, Dart undeniably is less expressive than competitors.

For example, Flutter's Positioned widget is better expressed here as the following;

Full file is here https://github.com/chgibb/hydro-sdk/blob/master/runtime/flutter/widgets/positioned.ts
```typescript
export class Positioned extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "Positioned";
    public props: PositionedProps;
    public constructor(props: PositionedProps) 
    {
        super();
        this.props = props;
    }

    public static directional(
        //if the named arguments that the regular constructor expects changes,
        //call sights to this method will become compilation errors if not changed
        props: NonNullable<Omit<PositionedProps, "left" | "right">> & {
            start: number;
            end: number;
            textDirection: TextDirection;
        }
    ): Positioned 
    {
        let left: number | undefined;
        let right: number | undefined;

        switch (props.textDirection) 
        {
        case TextDirection.rtl:
            left = props.end;
            right = props.start;
            break;
        case TextDirection.ltr:
            left = props.start;
            right = props.end;
            break;
        default:
            //if the TextDirection enum gains new entries,
            //this will become a compiler error
            //until the switch becomes exhaustive
            ((args: never): never => 
            {
                throw new Error(""); 
            })(props.textDirection);
            break;
        }

        return new Positioned({
            key: props.key,
            left,
            top: props.top,
            right,
            bottom: props.bottom,
            width: props.width,
            height: props.height,
            child: props.child
        });
    }
...
```
# Examples
Each example can be run over the air directly off of Github using it's corresponding `.hc` file under assets/examples/
## examples/animated-list/
A line for line port of the Flutter catalog example https://github.com/flutter/flutter/blob/master/examples/catalog/lib/animated_list.dart  

## examples/basic-app-bar/

A line for line port of the Flutter catalog example https://github.com/flutter/flutter/blob/master/examples/catalog/lib/basic_app_bar.dart  

## examples/counter/
Obligatory Flutter stateful counter showcase

## examples/host-args/
An example demonstrating how to pass non-trivial arguments, including `Widget` trees from a host Flutter application through to embedded Hydro content. See also https://github.com/chgibb/hydro-sdk/blob/master/test/smoke/host-args_test.dart

## examples/hotel-booking/
A line for line port of https://github.com/cybdom/hotel_booking_ui   
Demonstrates a small but non-trivial UI in 800 lines of Typescript.
# Getting Started
Check out the example project at https://github.com/chgibb/hydro-sdk/tree/master/example-project for documentation about getting started

# How
A Common Flutter Runtime (CFR) is composed of a virtual machine implementing a subset of a Lua 5.2 environment, together with a runtime function reassembler powering hot-reload, bindings for Flutter, Dart, Dart UI, some Javascript builtins, and a set of Flutter widgets exposing it all to embedders. All written in pure Dart. Hydro-SDK combines the Common Flutter Runtime together with guest language projections and a compilation toolchain for compiling supported languages into Lua bytecode.

# Limitations
- General
    - Flutter, and some of it's most popular third party packages (Like `Provider` and `ScopedModel`) rely on a lot of widget tree walking with RTTI to identify ancestors. The interface between guest code -> host code is a natural type-erasure barrier. This could be overcome to some degree if Dart supported generic constructors.
    - Most patterns that look like `Widget<OtherWidget>` aren't possible to express in guest code
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
- [ ] Haxe  
        https://haxe.org/  
        - In progress. Early toolchain support and some projections.
- [ ] Java  
        https://github.com/jtransc/jtransc  
- [ ] Kotlin  
        https://github.com/jtransc/jtransc  
- [ ] Scala  
        https://github.com/jtransc/jtransc  
- [ ] C#  
        https://github.com/yanghuan/CSharp.lua 

