import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flua/5_2/closure.dart';
import 'package:flutter/material.dart';

loadPopupMenuButton(l.Table table) {
  table["popupMenuButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PopupMenuButton(
        onSelected: (dynamic arg) {
          Closure closure = args[0]["onSelected"];
          return closure.call([arg]);
        },
        itemBuilder: (BuildContext context) {
          Closure closure = args[0]["itemBuilder"];
          l.Table closureRes = closure.call([context])[0];
          return maybeUnwrapAndBuildArgument(closureRes)
              .map((x) => x.build(context))
              .toList()
              .cast<PopupMenuItem<dynamic>>();
        },
      )
    ];
  });
}
