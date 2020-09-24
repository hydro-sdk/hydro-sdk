import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedFocusNode extends VMManagedBox<FocusNode> {
  final HydroTable table;
  final HydroState hydroState;
  final FocusNode vmObject;
  VMManagedFocusNode({
    @required this.table,
    @required this.hydroState,
    @required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {}
}

void loadFocusNode(
    {@required HydroState hydroState, @required HydroTable table}) {
  registerBoxer<FocusNode>(
      boxer: ({FocusNode vmObject, HydroState hydroState, HydroTable table}) {
    return VMManagedFocusNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });

  table["focusNode"] = makeLuaDartFunc(func: (List<dynamic> args) {
    HydroTable caller = args[0];
    return [
      maybeBoxObject(
        object: FocusNode(
            debugLabel: args[0]["debugLabel"],
            skipTraversal: args[0]["skipTraversal"],
            canRequestFocus: args[0]["canRequestFocus"],
            descendantsAreFocusable: args[0]["descendantsAreFocusable"]),
        hydroState: hydroState,
        table: caller,
      )
    ];
  });
}
