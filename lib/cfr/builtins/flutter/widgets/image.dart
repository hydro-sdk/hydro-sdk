import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadImage({@required HydroState luaState, @required HydroTable table}) {
  table["image"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Image(
          image: maybeUnwrapAndBuildArgument<Widget>(args[0]["image"],
              parentState: luaState),
          key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
              parentState: luaState),
          semanticLabel: args[0]["semanticLabel"],
          excludeFromSemantics: args[0]["excludeFromSemantics"],
          width: args[0]["width"]?.toDouble(),
          height: args[0]["height"]?.toDouble(),
          color: maybeUnwrapAndBuildArgument<Widget>(args[0]["color"],
              parentState: luaState),
          colorBlendMode: maybeUnwrapEnum<BlendMode>(
              values: BlendMode.values, boxedEnum: args[0]["colorBlendMode"]),
          fit: maybeUnwrapEnum<BoxFit>(
              values: BoxFit.values, boxedEnum: args[0]["fit"]),
          alignment: maybeUnwrapAndBuildArgument<Widget>(args[0]["alignment"],
              parentState: luaState),
          repeat: maybeUnwrapEnum<ImageRepeat>(
              values: ImageRepeat.values, boxedEnum: args[0]["repeat"]),
          matchTextDirection: args[0]["matchTextDirection"],
          gaplessPlayback: args[0]["gaplessPlayback"],
          filterQuality: maybeUnwrapEnum<FilterQuality>(
              values: FilterQuality.values,
              boxedEnum: args[0]["filterQuality"]))
    ];
  });
}
