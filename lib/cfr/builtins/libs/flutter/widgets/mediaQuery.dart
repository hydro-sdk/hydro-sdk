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
  VMManagedMediaQueryData({@required this.table, @required this.vmObject}) {
    table["size"] =
        VMManagedSize(table: HydroTable(), vmObject: vmObject.size).table;
  }
}

void loadMediaQuery(
    {@required HydroState luaState, @required HydroTable table}) {
  table["mediaQueryOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      VMManagedMediaQueryData(
              table: HydroTable(),
              vmObject: MediaQuery.of(maybeUnBoxAndBuildArgument<BuildContext>(
                  args[0],
                  parentState: luaState)))
          .table
    ];
  });
}
