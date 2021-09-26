import 'package:flutter/material.dart';

import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadStack({required HydroState luaState, required HydroTable table}) {
  table["stack"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Stack(
        key: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["key"],
            parentState: luaState),
        textDirection: TextDirection.values
            .firstWhereOrNull((x) => x.index == args[0]["textDirection"]),
        fit:
            StackFit.values.firstWhereOrNull((x) => x.index == args[0]["fit"])!,
        overflow: Overflow.values
            .firstWhereOrNull((x) => x.index == args[0]["overflow"])!,
        children: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["children"],
            parentState: luaState),
      )
    ];
  });
}
