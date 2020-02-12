import 'package:flua/5_2/closure.dart';
import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadFlatButton(l.Table table) {
  table["flatButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    print("called flatButton");
    return [
      FlatButton(
        child: args[0]["child"],
        onPressed: () {
          print("Called dart onPressed");
          Closure closure = args[0]["onPressed"];
          closure.call([]);
        },
      )
    ];
  });
}
