import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadScaffold(l.Table table) {
  table["scaffold"] = makeLuaDartFunc(func: (List<dynamic> args) {
    print("called scaffold");
    return [
      Scaffold(
        appBar: args[0]["appBar"],
        body: args[0]["body"],
      )
    ];
  });
}
