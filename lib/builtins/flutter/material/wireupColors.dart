import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

class VMManagedMaterialAccentColor extends VMManagedBox<MaterialAccentColor> {
  final l.HydroTable table;
  final MaterialAccentColor vmObject;
  VMManagedMaterialAccentColor(
      {@required this.table, @required this.vmObject}) {
    table[400] = vmObject[400];
  }
}

class VMManagedColors extends VMManagedBox<dynamic> {
  final l.HydroTable table;

  VMManagedColors({@required this.table}) {
    table["primaries"] = l.HydroTable()..arr = Colors.primaries;
    table["lightGreenAccent"] = VMManagedMaterialAccentColor(
            table: l.HydroTable(), vmObject: Colors.lightGreenAccent)
        .table;
  }
}

loadWireupColors(l.HydroTable table) {
  table["wireupColors"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [VMManagedColors(table: l.HydroTable()).table];
  });
}
