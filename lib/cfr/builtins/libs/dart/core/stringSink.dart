import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStringSink extends VMManagedBox<StringSink> {
  VMManagedStringSink(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['write'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.write(maybeUnBoxAndBuildArgument<Object?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['writeAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.writeAll(
          maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['writeln'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.writeln(maybeUnBoxAndBuildArgument<Object?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['writeCharCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.writeCharCode(luaCallerArguments[1]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final StringSink vmObject;
}

void loadStringSink(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<StringSink>(boxer: (
      {required StringSink vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStringSink(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
