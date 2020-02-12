import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadText(l.Table table) {
  table["text"] = makeLuaDartFunc(func: (List<dynamic> args) {
    print("called text");
    return [
      Text(
        args[0],
      )
    ];
  });
}
