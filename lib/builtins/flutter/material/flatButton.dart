import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadFlatButton(HydroTable table) {
  table["flatButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      FlatButton(
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.dispatch([]);
        },
      )
    ];
  });
}
