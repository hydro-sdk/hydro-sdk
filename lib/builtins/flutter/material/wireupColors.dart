import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

class VMManagedMaterialAccentColor extends VMManagedBox<MaterialAccentColor> {
  final l.Table table;
  final MaterialAccentColor vmObject;
  VMManagedMaterialAccentColor(
      {@required this.table, @required this.vmObject}) {
    table[400] = vmObject[400];
  }
}

class VMManagedColors extends VMManagedBox<dynamic> {
  final l.Table table;

  VMManagedColors({@required this.table}) {
    table["primaries"] = l.Table()..arr = Colors.primaries;
    table["lightGreenAccent"] = VMManagedMaterialAccentColor(
            table: l.Table(), vmObject: Colors.lightGreenAccent)
        .table;
  }
}

loadWireupColors(l.Table table) {
  table["wireupColors"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [VMManagedColors(table: l.Table()).table];
  });
}
