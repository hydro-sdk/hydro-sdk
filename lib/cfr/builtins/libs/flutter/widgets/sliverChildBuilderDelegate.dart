import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadSliverChildBuilderDelegate(
    {@required HydroState luaState, @required HydroTable table}) {
  table["sliverChildBuilderDelegate"] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SliverChildBuilderDelegate(
        (context, index) {
          Closure closure = args[0];
          if (closure != null) {
            var res = closure.dispatch(
              [
                maybeBoxObject(
                  object: context,
                  hydroState: luaState,
                  table: HydroTable(),
                ),
                index
              ],
              parentState: luaState,
              resetEnclosingLexicalEnvironment: true,
            );

            return maybeUnBoxAndBuildArgument<Widget>(res[0],
                parentState: luaState);
          }
          return null;
        },
        childCount: args[1]["childCount"],
        addAutomaticKeepAlives: args[1]["addAutomaticKeepAlives"],
        addRepaintBoundaries: args[1]["addRepaintBoundaries"],
        addSemanticIndexes: args[1]["addSemanticIndexes"],
      )
    ];
  });
}
