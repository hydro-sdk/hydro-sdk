import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadAppBar(l.Table table) {
  table["appBar"] = makeLuaDartFunc(func: (List<dynamic> args) {
    var zero = args[0];
    print(zero["title"]);
    print("called appBar");
    return [
      AppBar(
        title: args[0]["title"],
      )
    ];
  });
}
