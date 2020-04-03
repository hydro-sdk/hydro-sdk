import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadNetworkImage(HydroTable table) {
  table["networkImage"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [NetworkImage(args[0], scale: args[1]["scale"].toDouble())];
  });
}
