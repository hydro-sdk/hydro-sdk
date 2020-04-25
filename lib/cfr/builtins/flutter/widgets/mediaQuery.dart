import 'package:hydro_sdk/cfr/builtins/dart/ui/size.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

class VMManagedMediaQueryData extends VMManagedBox<MediaQueryData> {
  final HydroTable table;
  final MediaQueryData vmObject;
  VMManagedMediaQueryData({@required this.table, @required this.vmObject}) {
    table["size"] =
        VMManagedSize(table: HydroTable(), vmObject: vmObject.size).table;
  }
}

void loadMediaQuery(HydroTable table) {
  table["mediaQueryOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      VMManagedMediaQueryData(
              table: HydroTable(), vmObject: MediaQuery.of(args[0]))
          .table
    ];
  });
}
