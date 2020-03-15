import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadKey(l.Table table) {
  table["key"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Key(args[0])];
  });
}
