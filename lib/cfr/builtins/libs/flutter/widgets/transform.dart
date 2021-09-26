import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadTransform({required HydroState luaState, required HydroTable table}) {
  table["transformRotate"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Transform.rotate(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        angle: args[0]["angle"],
        origin: maybeUnBoxAndBuildArgument<Offset, dynamic>(args[0]["origin"],
            parentState: luaState),
        alignment: maybeUnBoxAndBuildArgument<Alignment, dynamic>(
            args[0]["alignment"],
            parentState: luaState),
        transformHitTests: args[0]["transformHitTests"],
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });

  table["transformTranslate"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Transform.translate(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(args[0]["offset"],
            parentState: luaState),
        transformHitTests: args[0]["transformHitTests"],
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });

  table["transformScale"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Transform.scale(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        scale: args[0]["scale"],
        origin: maybeUnBoxAndBuildArgument<Offset, dynamic>(args[0]["origin"],
            parentState: luaState),
        alignment: maybeUnBoxAndBuildArgument<Alignment, dynamic>(
            args[0]["alignment"],
            parentState: luaState),
        transformHitTests: args[0]["transformHitTests"],
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
