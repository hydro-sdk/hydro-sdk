import 'package:flua/hydroState.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadAlign({@required HydroState luaState, @required HydroTable table}) {
  table["align"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Align(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        alignment: maybeUnwrapAndBuildArgument<AlignmentGeometry>(
            args[0]["alignment"],
            parentState: luaState),
        widthFactor: args[0]["widthFactor"],
        heightFactor: args[0]["heightFactor"],
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
