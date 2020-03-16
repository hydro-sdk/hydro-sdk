import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadFlatButton(l.Table table) {
  table["flatButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      FlatButton(
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.call([]);
        },
      )
    ];
  });
}
