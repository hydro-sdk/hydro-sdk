# Binding Dart Code to Guest Code
Hydro's binding system is based on namespaced hook functions. Marshalling is based on a system of object boxers and unboxers.

## Namespaces
Namespaces are objects that are always available at the global scope in any context. They contain other objects and ultimately hook functions. The namespaces `hydro`, `dart`, `flutter`, and `http` are reserved for use by the CFR. The namespaces `com`, `edu`, `gov`, `mil`, `net`, and `org` are reserved as extension points for user code.

## Hook Functions
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

## Boxers
The marshalling of objects into running CFR code from Dart is referred to as "boxing". The CFR only knows how to deal with instances of `HydroTable` or instances of Dart classes which extend the class `VMManagedBox<T>`. `VMManagedBox<T>` can be exploited to bind custom Dart classes and will be discussed in its own section along with registering boxers for custom types.

## Unboxing
The marshalling of objects out of the CFR to be passed to Dart code is referred to as "unboxing". Strictly speaking, the term "unboxing" as it's used in other object systems isn't always the operation that takes place. For instance, for interoperating with Flutter, instances of guest code classes are usually further wrapped into instances of `StatelessWidget`, `StatefulWidget`, `State`, etc. Registering custom unboxers for guest runtime types will be discussed in its own section.

## Hello World Hook
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

## Binding Custom Dart Widgets
https://github.com/chgibb/hydro-sdk/blob/master/test/widget/customWidget-1_test.dart
https://github.com/chgibb/hydro-sdk/blob/master/test/widget/customWidget-1.ts

## Injecting Methods Defined in Dart Into Instances of Classes Defined in Guest Code
TODO: This is done for `State`, `Future`, `List` etc. Explain how this works.

## Allow Guest Code to Allocate and Manipulate Classes Defined in Dart
TODO: This is done for `Future` etc. Explain how this works.

## Registering Object Boxers for Custom Types
TODO: This is done for `BuildContext`, `Response`, `Future` etc. Explain how this works.