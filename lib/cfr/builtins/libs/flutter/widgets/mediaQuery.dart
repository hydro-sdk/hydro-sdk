import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/size.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedMediaQueryData extends VMManagedBox<MediaQueryData> {
  final HydroTable table;
  final MediaQueryData vmObject;
  VMManagedMediaQueryData({@required this.table, @required this.vmObject})
      : super(table: table, vmObject: vmObject) {
    table["size"] = maybeBoxObject(object: vmObject.size, hydroState: null);
  }
}

void loadMediaQuery(
    {@required HydroState luaState, @required HydroTable table}) {
  registerBoxer(boxer: ({MediaQueryData vmObject, HydroState hydroState}) {
    return VMManagedMediaQueryData(vmObject: vmObject, table: HydroTable());
  });

  table["mediaQueryOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject(
          object: MediaQuery.of(maybeUnBoxAndBuildArgument<BuildContext>(
              args[0],
              parentState: luaState)),
          hydroState: null)
    ];
  });
}
