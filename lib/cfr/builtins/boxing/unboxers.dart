import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/list.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

/// Attempt to unbox the given boxed enum into a value contained in values
@optionalTypeArgs
T? maybeUnBoxEnum<T>({
  required List<dynamic> values,
  required dynamic boxedEnum,
}) {
  //For Typescript, TSTL represents enums as their integer indices
  if (boxedEnum is int) {
    return values.firstWhere(
      (x) => x.index == boxedEnum,
    );
  }
  //For Haxe, the enum index is placed onto the zero entry of the object's table for some reason.
  //This gets optimized into array storage by the VM
  else if (boxedEnum is HydroTable && boxedEnum.arr.isNotEmpty) {
    return values.firstWhere((x) => x.index == boxedEnum.arr[0],
        orElse: () => null);
  }
  return null;
}

Closure? maybeFindInheritedMethod(
    {required HydroTable? managedObject, required String methodName}) {
  return managedObject?.metatable != null
      ? managedObject!.metatable![methodName] != null
          //For Typescript, TSTL places inherited methods directly onto an object's meta-table
          ? managedObject.metatable![methodName]
          : managedObject.metatable!["__index"] != null
              //Haxe places inherited methods onto a meta-meta table for some reason
              ? managedObject.metatable!["__index"] is HydroTable
                  ? managedObject.metatable!["__index"][methodName]
                  : null
              : null
      : null;
}

String? maybeUnBoxRuntimeType(
    {required dynamic managedObject, required String runtimeTypePropName}) {
  return managedObject[runtimeTypePropName] != null
      ? managedObject[runtimeTypePropName]["displayName"] != null
          ? managedObject[runtimeTypePropName]["displayName"]
          : null
      : null;
}

class DescriptorWrapper {
  dynamic descriptor;
  DescriptorWrapper({required this.descriptor});
}

typedef dynamic UnBoxer<T>({
  required dynamic box,
  required HydroState parentState,
});

List<UnBoxer<dynamic>> _unboxers = [];

void registerUnBoxer({required UnBoxer unBoxer}) {
  _unboxers.add(unBoxer);
}

/// Unbox the given arg for consumption by Dart code.
/// The type parameter T is required to resolve the desired type that is being unboxed.
/// If attempting to unbox a List<T>, only specify the type as T.
dynamic maybeUnBoxAndBuildArgument<T, V extends dynamic>(
  dynamic arg, {
  BuildContext? context,
  required HydroState parentState,
}) {
  //Unboxed target object
  if (arg is T) {
    return arg;
  } else if (T == Iterable && arg is HydroTable && (arg.arr.isNotEmpty)) {
    return arg.arr;
  }

  for (var i = 0; i != _unboxers.length; ++i) {
    var res = _unboxers[i](
      box: arg,
      parentState: parentState,
    );
    if (res != null) {
      return maybeUnBoxAndBuildArgument<T, V>(res, parentState: parentState);
    }
  }

  //Managed object
  if (arg is HydroTable) {
    dynamic unwrap;
    unwrap = maybeFindInheritedMethod(managedObject: arg, methodName: "unwrap");
    if (unwrap == null) {
      unwrap = arg.map["unwrap"];
    }
    if (unwrap != null) {
      //Call the objects managed unwrap method with itself as first arg
      //(Effectively a this call) and unbox the result
      if (unwrap is Closure) {
        //unwrap is a table method
        return maybeUnBoxAndBuildArgument<T, V>(
            unwrap.dispatch([
              arg.map,
              context != null
                  ? maybeBoxObject<BuildContext>(
                      object: context,
                      hydroState: parentState,
                      table: HydroTable(),
                    )
                  : null,
            ], parentState: parentState)[0],
            parentState: parentState);
      } else {
        //unwrap is a method on a box
        return maybeUnBoxAndBuildArgument<T, V>(
            unwrap([
              arg.map,
              context != null
                  ? maybeBoxObject<BuildContext>(
                      object: context,
                      hydroState: parentState,
                      table: HydroTable(),
                    )
                  : null,
            ])[0],
            parentState: parentState);
      }
    }
    //Unbox an array of managed objects
    if (arg.arr.isNotEmpty) {
      List<dynamic> target = arg.arr;
      //Haxe likes to place the first element of arrays using the string "0" as key instead of using integers
      //The VM will optimize tables with integer keys into array storage but this pattern will get missed
      //We need to check for it when unboxing arrays
      if (arg.map[0] != null && arg.map[0] is HydroTable) {
        target = [arg.map[0], ...arg.arr];
      }
      return target
          .map((x) =>
              maybeUnBoxAndBuildArgument<T, V>(x, parentState: parentState))
          .toList()
          .cast<T>();
    } else if (arg.arr.isEmpty) {
      return [].cast<T>();
    }
  } else if (arg is List) {
    return maybeUnBoxAndBuildArgument<T, V>(HydroTable()..arr = arg,
        parentState: parentState);
  } else if (arg is Box<T>) {
    return maybeUnBoxAndBuildArgument<T, V>(arg.table,
        parentState: parentState);
  } else if (arg is VMManagedList) {
    return arg.vmObject
        .map((x) =>
            maybeUnBoxAndBuildArgument<T, V>(x, parentState: parentState))
        .toList()
        .cast<V>();
  }

  return arg;
}
