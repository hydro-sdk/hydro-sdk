import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadSize(l.Table table) {
  table["size"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Size(args[0].toDouble(), args[1].toDouble())];
  });
}
