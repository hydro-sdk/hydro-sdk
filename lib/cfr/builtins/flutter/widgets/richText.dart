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
          textAlign: maybeUnwrapEnum<TextAlign>(
              values: TextAlign.values, boxedEnum: args[0]["textAlign"]),
          softWrap: args[0]["softWrap"],
          overflow: maybeUnwrapEnum<TextOverflow>(
              values: TextOverflow.values, boxedEnum: args[0]["overflow"]),
          textScaleFactor: args[0]["textScaleFactor"].toDouble(),
          maxLines: args[0]["maxLines"],
          textWidthBasis: maybeUnwrapEnum<TextWidthBasis>(
              values: TextWidthBasis.values,
              boxedEnum: args[0]["textWidthBasis"]))
    ];
  });
}
