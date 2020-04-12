import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:flutter/material.dart';

loadPopupMenuButton({@required HydroState luaState, @required HydroTable table}) {
  table["popupMenuButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PopupMenuButton(
        onSelected: (dynamic arg) {
          Closure closure = args[0]["onSelected"];
          return closure.dispatch([args[0], arg], parentState: luaState);
        },
        itemBuilder: (BuildContext context) {
          Closure closure = args[0]["itemBuilder"];
          HydroTable closureRes =
              closure.dispatch([context], parentState: luaState)[0];
          return maybeUnwrapAndBuildArgument<Widget>(closureRes,
                  parentState: luaState)
              .map((x) => x.build(context))
              .toList()
              .cast<PopupMenuItem<dynamic>>();
        },
      )
    ];
  });
}
