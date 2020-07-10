import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedSize extends VMManagedBox<Size> {
  final HydroTable table;
  final Size vmObject;
  VMManagedSize({@required this.table, @required this.vmObject})
      : super(table: table, vmObject: vmObject) {
    table["width"] = vmObject.width;
    table["height"] = vmObject.height;
  }
}

void loadSize(HydroTable table) {
  registerBoxer(boxer: ({Size vmObject, HydroState hydroState}) {
    return VMManagedSize(vmObject: vmObject, table: HydroTable());
  });

  table["size"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Size(args[0].toDouble(), args[1].toDouble())];
  });
}
