import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void loadListView({@required HydroState luaState, @required HydroTable table}) {
  table["listViewBuilder"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      ListView.builder(
        key: maybeUnwrapAndBuildArgument(args[0]["key"], parentState: luaState),
        scrollDirection: maybeUnwrapEnum<Axis>(
            values: Axis.values, boxedEnum: args[0]["scrollDirection"]),
        reverse: args[0]["reverse"],
        primary: args[0]["primary"],
        shrinkWrap: args[0]["shrinkWrap"],
        padding: maybeUnwrapAndBuildArgument(args[0]["padding"],
            parentState: luaState),
        itemExtent: args[0]["itemExtent"],
        addAutomaticKeepAlives: args[0]["addAutomaticKeepAlives"],
        addRepaintBoundaries: args[0]["addRepaintBoundaries"],
        addSemanticIndexes: args[0]["addSemanticIndexes"],
        cacheExtent: args[0]["cacheExtent"],
        semanticChildCount: args[0]["semanticChildCount"],
        dragStartBehavior: maybeUnwrapEnum<DragStartBehavior>(
            values: DragStartBehavior.values,
            boxedEnum: args[0]["dragStartBehavior"]),
        itemCount: args[0]["itemCount"],
        itemBuilder: (BuildContext context, int index) {
          Closure closure = args[0]["itemBuilder"];
          var res = closure
              .dispatch([null, context, index], parentState: luaState)[0];
          return maybeUnwrapAndBuildArgument<Widget>(res,
              parentState: luaState);
        },
      )
    ];
  });
}
