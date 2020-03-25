import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadAnimatedList(HydroTable table) {
  table["animatedList"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AnimatedList(
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
        initialItemCount:
            maybeUnwrapAndBuildArgument(args[0]["initialItemCount"]),
        itemBuilder: (BuildContext context, int num, Animation anim) {
          Closure closure = args[0]["itemBuilder"];
          return maybeUnwrapAndBuildArgument(
              closure([null, context, num, anim])[0]);
        },
      )
    ];
  });
}
