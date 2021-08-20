import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedTextEditingController
    extends VMManagedBox<TextEditingController> {
  final HydroTable table;
  final HydroState hydroState;
  final TextEditingController vmObject;
  VMManagedTextEditingController({
    required this.table,
    required this.hydroState,
    required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["getText"] = makeLuaDartFunc(func: (List<dynamic> args) {
      dynamic rawCaller = args[0];
      return [
        maybeUnBoxAndBuildArgument<TextEditingController, dynamic>(
          rawCaller,
          parentState: hydroState,
        ).text
      ];
    });

    table["setText"] = makeLuaDartFunc(func: (List<dynamic> args) {
      dynamic rawCaller = args[0];
      maybeUnBoxAndBuildArgument<TextEditingController, dynamic>(
        rawCaller,
        parentState: hydroState,
      ).text = args[1];
      return [];
    });

    table["getValue"] = makeLuaDartFunc(func: (List<dynamic> args) {
      dynamic rawCaller = args[0];
      return [
        maybeBoxObject<TextEditingValue>(
            object: maybeUnBoxAndBuildArgument<TextEditingController, dynamic>(
              rawCaller,
              parentState: hydroState,
            ).value,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });

    table["setValue"] = makeLuaDartFunc(func: (List<dynamic> args) {
      dynamic rawCaller = args[0];
      maybeUnBoxAndBuildArgument<TextEditingController, dynamic>(
        rawCaller,
        parentState: hydroState,
      ).value = maybeUnBoxAndBuildArgument<TextEditingValue, dynamic>(
        args[1],
        parentState: hydroState,
      );
      return [];
    });

    table["addListener"] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addListener(() {
        Closure callback = args[1];
        callback.dispatch([],
            parentState: hydroState, resetEnclosingLexicalEnvironment: true);
      });
      return [];
    });

    table["dispose"] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.dispose();
      return [];
    });
  }
}

void loadTextEditingController(
    {required HydroState luaState, required HydroTable table}) {
  registerBoxer<TextEditingController>(boxer: ({
    required TextEditingController vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedTextEditingController(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
  table["textEditingController"] = makeLuaDartFunc(func: (List<dynamic> args) {
    HydroTable caller = args[0];

    return [
      maybeBoxObject<TextEditingController>(
        object: TextEditingController(),
        hydroState: luaState,
        table: caller,
      )
    ];
  });
}
