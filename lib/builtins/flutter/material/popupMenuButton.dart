import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flua/vm/closure.dart';
import 'package:flutter/material.dart';

loadPopupMenuButton(l.Table table) {
  table["popupMenuButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PopupMenuButton(
        onSelected: (dynamic arg) {
          Closure closure = args[0]["onSelected"];
          return closure.dispatch([args[0], arg]);
        },
        itemBuilder: (BuildContext context) {
          Closure closure = args[0]["itemBuilder"];
          l.Table closureRes = closure.dispatch([context])[0];
          return maybeUnwrapAndBuildArgument(closureRes)
              .map((x) => x.build(context))
              .toList()
              .cast<PopupMenuItem<dynamic>>();
        },
      )
    ];
  });
}
