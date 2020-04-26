import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadRichText({@required HydroState luaState, @required HydroTable table}) {
  table["richText"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RichText(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        text: maybeUnwrapAndBuildArgument<Widget>(args[0]["text"],
            parentState: luaState),
        textAlign: TextAlign.values.firstWhere(
            (x) => x.index == args[0]["textAlign"],
            orElse: () => null),
        softWrap: args[0]["softWrap"],
        overflow: TextOverflow.values.firstWhere(
            (x) => x.index == args[0]["overflow"],
            orElse: () => null),
        textScaleFactor: args[0]["textScaleFactor"].toDouble(),
        maxLines: args[0]["maxLines"],
        textWidthBasis: TextWidthBasis.values.firstWhere(
            (x) => x.index == args[0]["textWidthBasis"],
            orElse: () => null),
      )
    ];
  });
}
