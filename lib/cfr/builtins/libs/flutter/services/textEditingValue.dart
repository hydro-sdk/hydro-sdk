import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedTextEditingValue extends VMManagedBox<TextEditingValue> {
  final HydroTable table;
  final HydroState hydroState;
  final TextEditingValue vmObject;
  VMManagedTextEditingValue({
    required this.table,
    required this.hydroState,
    required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["copyWith"] = makeLuaDartFunc(func: (List<dynamic> args) {
      dynamic rawCaller = args[0];
      TextEditingValue? caller;
      caller = maybeUnBoxAndBuildArgument<TextEditingValue, dynamic>(rawCaller,
          parentState: hydroState);
      return [
        maybeBoxObject(
            object: caller!.copyWith(
                text: args[1]["text"],
                selection: maybeUnBoxAndBuildArgument<TextSelection, dynamic>(
                    args[1]["selection"],
                    parentState: hydroState),
                composing: maybeUnBoxAndBuildArgument<TextRange, dynamic>(
                    args[1]["composing"],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }
}

void loadTextEditingValue(
    {required HydroState luaState, required HydroTable table}) {
  registerBoxer<TextEditingValue>(boxer: (
      {required TextEditingValue vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextEditingValue(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });

  table["textEditingValue"] = makeLuaDartFunc(func: (List<dynamic> args) {
    HydroTable caller = args[0];

    return [
      maybeBoxObject<TextEditingValue>(
          object: TextEditingValue(
            text: args[1]["text"],
            selection: maybeUnBoxAndBuildArgument<TextSelection, dynamic>(
                args[1]["selection"],
                parentState: luaState),
            composing: maybeUnBoxAndBuildArgument<TextRange, dynamic>(
                args[1]["textRange"],
                parentState: luaState),
          ),
          hydroState: luaState,
          table: caller)
    ];
  });
}
