import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadImage({required HydroState luaState, required HydroTable table}) {
  table["image"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Image(
          image: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["image"],
              parentState: luaState),
          key: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["key"],
              parentState: luaState),
          semanticLabel: args[0]["semanticLabel"],
          excludeFromSemantics: args[0]["excludeFromSemantics"],
          width: args[0]["width"]?.toDouble(),
          height: args[0]["height"]?.toDouble(),
          color: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["color"],
              parentState: luaState),
          colorBlendMode: maybeUnBoxEnum<BlendMode>(
              values: BlendMode.values, boxedEnum: args[0]["colorBlendMode"]),
          fit: maybeUnBoxEnum<BoxFit>(
              values: BoxFit.values, boxedEnum: args[0]["fit"]),
          alignment: maybeUnBoxAndBuildArgument<Widget, dynamic>(
              args[0]["alignment"],
              parentState: luaState),
          repeat: maybeUnBoxEnum<ImageRepeat>(
              values: ImageRepeat.values, boxedEnum: args[0]["repeat"])!,
          matchTextDirection: args[0]["matchTextDirection"],
          gaplessPlayback: args[0]["gaplessPlayback"],
          filterQuality: maybeUnBoxEnum<FilterQuality>(
              values: FilterQuality.values,
              boxedEnum: args[0]["filterQuality"])!)
    ];
  });
}
