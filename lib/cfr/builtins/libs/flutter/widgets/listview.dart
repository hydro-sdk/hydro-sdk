import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadListView({required HydroState luaState, required HydroTable table}) {
  table["listViewRegular"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      ListView(
        key: maybeUnBoxAndBuildArgument(args[0]["key"], parentState: luaState),
        scrollDirection: maybeUnBoxEnum<Axis>(
            values: Axis.values, boxedEnum: args[0]["scrollDirection"])!,
        reverse: args[0]["reverse"],
        primary: args[0]["primary"],
        physics: maybeUnBoxAndBuildArgument<ScrollPhysics, dynamic>(
            args[0]["physics"],
            parentState: luaState),
        shrinkWrap: args[0]["shrinkWrap"],
        padding: maybeUnBoxAndBuildArgument(args[0]["padding"],
            parentState: luaState),
        itemExtent: args[0]["itemExtent"],
        addAutomaticKeepAlives: args[0]["addAutomaticKeepAlives"],
        addRepaintBoundaries: args[0]["addRepaintBoundaries"],
        addSemanticIndexes: args[0]["addSemanticIndexes"],
        cacheExtent: args[0]["cacheExtent"],
        semanticChildCount: args[0]["semanticChildCount"],
        dragStartBehavior: maybeUnBoxEnum<DragStartBehavior>(
            values: DragStartBehavior.values,
            boxedEnum: args[0]["dragStartBehavior"])!,
        children: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["children"],
            parentState: luaState),
        keyboardDismissBehavior:
            maybeUnBoxEnum<ScrollViewKeyboardDismissBehavior>(
                values: ScrollViewKeyboardDismissBehavior.values,
                boxedEnum: args[0]["keyboardDismissBehavior"])!,
      )
    ];
  });

  table["listViewBuilder"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      ListView.builder(
        key: maybeUnBoxAndBuildArgument(args[0]["key"], parentState: luaState),
        scrollDirection: maybeUnBoxEnum<Axis>(
            values: Axis.values, boxedEnum: args[0]["scrollDirection"])!,
        reverse: args[0]["reverse"],
        primary: args[0]["primary"],
        physics: maybeUnBoxAndBuildArgument<ScrollPhysics, dynamic>(
            args[0]["physics"],
            parentState: luaState),
        shrinkWrap: args[0]["shrinkWrap"],
        padding: maybeUnBoxAndBuildArgument(args[0]["padding"],
            parentState: luaState),
        itemExtent: args[0]["itemExtent"],
        addAutomaticKeepAlives: args[0]["addAutomaticKeepAlives"],
        addRepaintBoundaries: args[0]["addRepaintBoundaries"],
        addSemanticIndexes: args[0]["addSemanticIndexes"],
        cacheExtent: args[0]["cacheExtent"],
        semanticChildCount: args[0]["semanticChildCount"],
        dragStartBehavior: maybeUnBoxEnum<DragStartBehavior>(
            values: DragStartBehavior.values,
            boxedEnum: args[0]["dragStartBehavior"])!,
        itemCount: args[0]["itemCount"],
        itemBuilder: (BuildContext context, int index) {
          Closure closure = args[0]["itemBuilder"];
          var res = closure.dispatch([
            null,
            maybeBoxObject(
              object: context,
              hydroState: luaState,
              table: HydroTable(),
            ),
            index
          ], parentState: luaState)[0];
          return maybeUnBoxAndBuildArgument<Widget, dynamic>(res,
              parentState: luaState);
        },
      )
    ];
  });
}
