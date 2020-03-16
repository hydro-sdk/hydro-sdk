import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadFloatingActionButton(l.Table table) {
  table["floatingActionButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      FloatingActionButton(
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
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
