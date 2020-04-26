import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadInkWell({@required HydroState luaState, @required HydroTable table}) {
  table["inkWell"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      InkWell(
        key: maybeUnwrapAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
        onTap: () {
          Closure closure = args[0]["onTap"];
          closure.dispatch([null], parentState: luaState);
        },
        focusColor: maybeUnwrapAndBuildArgument<Color>(args[0]["focusColor"],
            parentState: luaState),
        hoverColor: maybeUnwrapAndBuildArgument<Color>(args[0]["hoverColor"],
            parentState: luaState),
        highlightColor: maybeUnwrapAndBuildArgument<Color>(
            args[0]["highlightColor"],
            parentState: luaState),
        splashColor: maybeUnwrapAndBuildArgument<Color>(args[0]["splashColor"],
            parentState: luaState),
        radius: args[0]["radius"],
        borderRadius: maybeUnwrapAndBuildArgument<BorderRadius>(
            args[0]["borderRadius"],
            parentState: luaState),
        enableFeedback: args[0]["enableFeedback"],
        canRequestFocus: args[0]["canRequestFocus"],
        autofocus: args[0]["autoFocus"],
      )
    ];
  });
}
