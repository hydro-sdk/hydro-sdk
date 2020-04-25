import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/statefulWidgetBox.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/statelessWidgetBox.dart';
import 'package:flutter/widgets.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

Closure maybeFindInheritedMethod(
    {@required HydroTable managedObject, @required String methodName}) {
  return managedObject?.metatable != null
      ? managedObject.metatable[methodName] != null
          //For Typescript, TSTL places inherited methods directly onto an object's meta-table
          ? managedObject.metatable[methodName]
          : managedObject.metatable["__index"] != null
              //Haxe places inherited methods onto a meta-meta table for some reason
              ? managedObject.metatable["__index"][methodName]
              : null
      : null;
}

dynamic maybeUnwrapAndBuildArgument<T>(dynamic arg,
    {BuildContext context, @required HydroState parentState}) {
  assert(parentState != null);
  //Unboxed target object
  if (arg is T) {
    return arg;
  }
  //Managed object
  if (arg is HydroTable) {
    //Metatable will contain an inherited build function from the StatlessWidget base class
    Closure createState =
        maybeFindInheritedMethod(managedObject: arg, methodName: "createState");
    if (createState != null) {
      return StatefulWidgetBox(
        table: arg,
        parentState: parentState,
      );
    }

    Closure build =
        maybeFindInheritedMethod(managedObject: arg, methodName: "build");
    if (build != null) {
      if (arg["runtimeType"] == "PreferredSize") {
        return StatelessPreferredSizeBox(
          table: arg,
          parentState: parentState,
        );
      }
      return StatelessWidgetBox(
        table: arg,
        parentState: parentState,
      );
    }

    dynamic unwrap;
    unwrap = maybeFindInheritedMethod(managedObject: arg, methodName: "unwrap");
    if (unwrap == null) {
      unwrap = arg.map["unwrap"];
    }
    if (unwrap != null) {
      //Call the objects managed unwrap method with itself as first arg
      //(Effectively a this call) and unbox the result
      return maybeUnwrapAndBuildArgument<T>(unwrap([arg.map, context])[0],
          parentState: parentState);
    }
    //Unbox an array of managed objects
    if (arg.arr != null && arg.arr.isNotEmpty) {
      return arg.arr
          .map((x) =>
              maybeUnwrapAndBuildArgument<T>(x, parentState: parentState))
          .toList()
          .cast<T>();
    } else if (arg.arr != null && arg.arr.isEmpty) {
      return [].cast<T>();
    }
  }
  return arg;
}

abstract class Box<T> {
  final HydroTable table;
  T vmObject;

  Box({@required this.table, @required this.vmObject});

  T unwrap();
}

class VMManagedBox<T> extends Box<T> {
  final HydroTable table;
  T vmObject;

  VMManagedBox({@required this.table, @required this.vmObject}) {
    table["vmObject"] = vmObject;
    table["unwrap"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
  }

  T unwrap() => vmObject;
}

class RTManagedBox<T> extends Box<T> {
  final HydroTable table;
  final T vmObject;

  RTManagedBox({@required this.table, @required this.vmObject}) {
    table["vmObject"] = vmObject;
  }

  T unwrap() => table["unwrap"];
}
