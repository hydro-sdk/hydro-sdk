import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadImage({@required LuaState luaState, @required HydroTable table}) {
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
        colorBlendMode: BlendMode.values.firstWhere(
            (x) => x.index == args[0]["colorBlendMode"],
            orElse: () => null),
        fit: BoxFit.values
            .firstWhere((x) => x.index == args[0]["fit"], orElse: () => null),
        alignment: maybeUnwrapAndBuildArgument<Widget>(args[0]["alignment"],
            parentState: luaState),
        repeat: ImageRepeat.values.firstWhere(
            (x) => x.index == args[0]["repeat"],
            orElse: () => null),
        matchTextDirection: args[0]["matchTextDirection"],
        gaplessPlayback: args[0]["gaplessPlayback"],
        filterQuality: FilterQuality.values.firstWhere(
            (x) => x.index == args[0]["filterQuality"],
            orElse: () => null),
      )
    ];
  });
}
