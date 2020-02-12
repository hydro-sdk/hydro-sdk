import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadCenter(l.Table table) {
  table["center"] = makeLuaDartFunc(func: (List<dynamic> args) {
    print("called center");
    return [
      Center(
        child: args[0]["child"],
      )
    ];
  });
}
