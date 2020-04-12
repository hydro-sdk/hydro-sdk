import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadAlignment(HydroTable table) {
  table["alignment"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Alignment(args[0].toDouble(), args[1].toDouble())];
  });
}
