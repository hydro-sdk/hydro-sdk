import 'package:flua/5_2/closure.dart';
import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/maybeUnwrapAndBuildArgument.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadFloatingActionButton(l.Table table) {
  table["floatingActionButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      FloatingActionButton(
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
        tooltip: args[0]["tooltip"],
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.call([]);
        },
      )
    ];
  });
}
