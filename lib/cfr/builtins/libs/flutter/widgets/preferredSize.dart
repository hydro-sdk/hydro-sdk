import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class StatelessPreferredSizeBox extends PreferredSize {
  final HydroTable table;
  final HydroState? parentState;

  StatelessPreferredSizeBox({required this.table, required this.parentState});

  @override
  Size get preferredSize =>
      maybeUnBoxAndBuildArgument<Widget>(table["preferredSize"]([table.map])[0],
          parentState: parentState!);

  @override
  Widget build(BuildContext context) {
    Closure managedBuild =
        maybeFindInheritedMethod(managedObject: table, methodName: "build")!;
    var buildResult = managedBuild
        .dispatch([table.map, context], parentState: parentState!)![0];
    return maybeUnBoxAndBuildArgument<Widget>(buildResult,
        parentState: parentState!);
  }
}

void loadPreferredSize(
    {required HydroState luaState, required HydroTable table}) {
  registerUnBoxer(unBoxer: ({dynamic box, HydroState? parentState}) {
    if (box is HydroTable) {
      Closure? build =
          maybeFindInheritedMethod(managedObject: box, methodName: "build");
      if (build != null) {
        if (box["runtimeType"] == "PreferredSize") {
          return StatelessPreferredSizeBox(
            table: box,
            parentState: parentState,
          );
        }
      }
    }
    return null;
  });

  table["preferredSize"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PreferredSize(
        child: maybeUnBoxAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
        preferredSize: maybeUnBoxAndBuildArgument<Widget>(
            args[0]["preferredSize"],
            parentState: luaState),
        key: maybeUnBoxAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
      )
    ];
  });
}
