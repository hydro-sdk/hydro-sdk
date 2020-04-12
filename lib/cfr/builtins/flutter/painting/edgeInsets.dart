import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

loadEdgeInsets(HydroTable table) {
  table["edgeInsetsAll"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [EdgeInsets.all(args[0].toDouble())];
  });

  table["edgeInsetsOnly"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      EdgeInsets.only(
          left: args[0]["left"].toDouble(),
          right: args[0]["right"].toDouble(),
          top: args[0]["top"].toDouble(),
          bottom: args[0]["bottom"].toDouble())
    ];
  });

  table["edgeInsetsSymmetric"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      EdgeInsets.symmetric(
          vertical: args[0]["vertical"].toDouble(),
          horizontal: args[0]["horizontal"].toDouble())
    ];
  });
}
