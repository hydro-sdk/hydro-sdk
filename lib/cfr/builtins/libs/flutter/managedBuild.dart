import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

Widget? managedBuild(
    {required BuildContext context,
    required HydroState hydroState,
    required HydroTable hydroTable}) {
  Closure? managedBuild =
      maybeFindInheritedMethod(managedObject: hydroTable, methodName: "build")!;
  var buildResult = managedBuild.dispatch([
    hydroTable.map,
    maybeBoxObject(
      object: context,
      hydroState: hydroState,
      table: HydroTable(),
    )
  ], parentState: hydroState, resetEnclosingLexicalEnvironment: true);
  if (buildResult.isEmpty) {
    String errMsg =
        "A build function returned null ${managedBuild.proto?.debugSymbol?.symbolName}\n";
    errMsg +=
        "defined in   ${managedBuild.proto?.debugSymbol?.originalFileName}:${managedBuild.proto?.debugSymbol?.originalLineStart}\n";

    errMsg +=
        "     (${managedBuild.proto?.debugSymbol?.symbolFullyQualifiedMangleName})\n";
    throw errMsg;
  }
  return maybeUnBoxAndBuildArgument<Widget, dynamic>(buildResult[0],
      parentState: hydroState);
}
