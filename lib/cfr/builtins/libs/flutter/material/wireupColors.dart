import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
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

void loadWireupColors(HydroTable table) {
  table["wireupColors"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [VMManagedColors(table: HydroTable()).table];
  });
}
