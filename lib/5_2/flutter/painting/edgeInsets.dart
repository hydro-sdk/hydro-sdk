import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadEdgeInsets(l.Table table) {
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
