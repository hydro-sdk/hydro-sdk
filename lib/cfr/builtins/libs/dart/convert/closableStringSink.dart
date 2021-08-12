import 'dart:convert';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedClosableStringSink extends VMManagedBox<ClosableStringSink> {
  VMManagedClosableStringSink(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['close'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.close();
      return [];
    });
    table['write'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.write(maybeUnBoxAndBuildArgument<Object?>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['writeAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.writeAll(
          maybeUnBoxAndBuildArgument<Iterable<dynamic>>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['writeln'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.writeln(maybeUnBoxAndBuildArgument<Object?>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['writeCharCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.writeCharCode(luaCallerArguments[1]);
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ClosableStringSink vmObject;
}

void loadClosableStringSink(
    {required HydroState hydroState, required HydroTable table}) {
  table['closableStringSinkFromStringSink'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedonClose = luaCallerArguments[2];
    return [
      maybeBoxObject<ClosableStringSink>(
          object: ClosableStringSink.fromStringSink(
              maybeUnBoxAndBuildArgument<StringSink>(luaCallerArguments[1],
                  parentState: hydroState),
              () => unpackedonClose.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ClosableStringSink>(boxer: (
      {required ClosableStringSink vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedClosableStringSink(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
