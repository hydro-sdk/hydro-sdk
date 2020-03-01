import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadColor(l.Table table) {
  table["color"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Color(args[0])];
  });
}
