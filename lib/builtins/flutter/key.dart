import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadKey(l.Table table) {
  table["key"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Key(args[0])];
  });
}
