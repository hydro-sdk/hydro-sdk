import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadKey(HydroTable table) {
  table["key"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Key(args[0])];
  });
}
