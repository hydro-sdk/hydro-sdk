import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

loadNetworkImage(HydroTable table) {
  table["networkImage"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [NetworkImage(args[0], scale: args[1]["scale"].toDouble())];
  });
}
