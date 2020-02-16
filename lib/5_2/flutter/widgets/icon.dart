import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadIcon(l.Table table) {
  table["icon"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Icon(args[0])];
  });
}
