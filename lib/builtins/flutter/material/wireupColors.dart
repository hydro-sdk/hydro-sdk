import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

class VMManagedMaterialAccentColor extends VMManagedBox<MaterialAccentColor> {
  final HydroTable table;
  final MaterialAccentColor vmObject;
  VMManagedMaterialAccentColor(
      {@required this.table, @required this.vmObject}) {
    table[400] = vmObject[400];
  }
}

class VMManagedColors extends VMManagedBox<dynamic> {
  final HydroTable table;

  VMManagedColors({@required this.table}) {
    table["primaries"] = HydroTable()..arr = Colors.primaries;
    table["lightGreenAccent"] = VMManagedMaterialAccentColor(
            table: HydroTable(), vmObject: Colors.lightGreenAccent)
        .table;
  }
}

loadWireupColors(HydroTable table) {
  table["wireupColors"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [VMManagedColors(table: HydroTable()).table];
  });
}
