import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/alwaysStoppedAnimation.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedAnimation<T> extends VMManagedBox<Animation<T>> {
  final HydroTable table;
  final HydroState hydroState;
  final Animation<T> vmObject;
  VMManagedAnimation({
    required this.table,
    required this.hydroState,
    required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["value"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.value];
    });
  }
}

void loadAnimation({
  required HydroState luaState,
  required HydroTable table,
}) {
  var animation = HydroTable();

  table["animation"] = animation;

  registerBoxer<Animation<double>>(boxer: ({
    required Animation<double> vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedAnimation<double>(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });

  loadAlwaysStoppedAnimation(luaState: luaState, table: animation);
}
