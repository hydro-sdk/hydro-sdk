import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

class VMManagedSize extends VMManagedBox<Size> {
  final HydroTable table;
  final Size vmObject;
  VMManagedSize({@required this.table, @required this.vmObject}) {
    table["width"] = vmObject.width;
    table["height"] = vmObject.height;
  }
}

loadSize(HydroTable table) {
  table["size"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Size(args[0].toDouble(), args[1].toDouble())];
  });
}
