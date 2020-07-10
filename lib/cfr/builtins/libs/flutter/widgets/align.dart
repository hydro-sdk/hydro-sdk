import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadAlign({@required HydroState luaState, @required HydroTable table}) {
  table["align"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Align(
        key: maybeUnBoxAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        alignment: maybeUnBoxAndBuildArgument<AlignmentGeometry>(
            args[0]["alignment"],
            parentState: luaState),
        widthFactor: args[0]["widthFactor"],
        heightFactor: args[0]["heightFactor"],
        child: maybeUnBoxAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
