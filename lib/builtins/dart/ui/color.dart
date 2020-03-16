import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadColor(l.Table table) {
  table["color"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Color(args[0])];
  });
}
