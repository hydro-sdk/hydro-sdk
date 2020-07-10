import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/buildContext.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

Widget managedBuild(
    {@required BuildContext context,
    @required HydroState hydroState,
    @required HydroTable hydroTable}) {
  Closure managedBuild =
      maybeFindInheritedMethod(managedObject: hydroTable, methodName: "build");
  var buildResult = managedBuild.dispatch([
    hydroTable.map,
    maybeBoxObject(object: context, hydroState: hydroState)
  ], parentState: hydroState)[0];
  return maybeUnBoxAndBuildArgument<Widget>(buildResult,
      parentState: hydroState);
}
