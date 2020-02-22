import 'package:flua/5_2/closure.dart';
import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadAnimatedList(l.Table table) {
  table["animatedList"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AnimatedList(
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
        initialItemCount:
            maybeUnwrapAndBuildArgument(args[0]["initialItemCount"]),
        itemBuilder: (BuildContext context, int num, Animation anim) {
          Closure closure = args[0]["itemBuilder"];
          return maybeUnwrapAndBuildArgument(closure([context, num, anim])[0]);
        },
      )
    ];
  });
}
