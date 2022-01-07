import 'dart:ui';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layout_helper.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedChildLayoutHelper extends VMManagedBox<ChildLayoutHelper> {
  VMManagedChildLayoutHelper(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final ChildLayoutHelper vmObject;
}

void loadChildLayoutHelper(
    {required HydroState hydroState, required HydroTable table}) {
  table['childLayoutHelperDryLayoutChild'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Size>(
          object: ChildLayoutHelper.dryLayoutChild(
              maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['childLayoutHelperLayoutChild'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Size>(
          object: ChildLayoutHelper.layoutChild(
              maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ChildLayoutHelper>(boxer: (
      {required ChildLayoutHelper vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedChildLayoutHelper(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
