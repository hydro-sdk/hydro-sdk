import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadRichText({required HydroState luaState, required HydroTable table}) {
  table["richText"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RichText(
          key: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["key"],
              parentState: luaState),
          text: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["text"],
              parentState: luaState),
          textAlign: maybeUnBoxEnum<TextAlign>(
              values: TextAlign.values, boxedEnum: args[0]["textAlign"])!,
          softWrap: args[0]["softWrap"],
          overflow: maybeUnBoxEnum<TextOverflow>(
              values: TextOverflow.values, boxedEnum: args[0]["overflow"])!,
          textScaleFactor: args[0]["textScaleFactor"].toDouble(),
          maxLines: args[0]["maxLines"],
          textWidthBasis: maybeUnBoxEnum<TextWidthBasis>(
              values: TextWidthBasis.values,
              boxedEnum: args[0]["textWidthBasis"])!)
    ];
  });
}
