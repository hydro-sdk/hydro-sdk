import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/shifted_box.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSingleChildLayoutDelegate
    extends VMManagedBox<SingleChildLayoutDelegate> {
  VMManagedSingleChildLayoutDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.getSize(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getConstraintsForChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.getConstraintsForChild(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPositionForChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.getPositionForChild(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['shouldRelayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRelayout(
            maybeUnBoxAndBuildArgument<SingleChildLayoutDelegate, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SingleChildLayoutDelegate vmObject;
}

class RTManagedSingleChildLayoutDelegate extends SingleChildLayoutDelegate
    implements Box<SingleChildLayoutDelegate> {
  RTManagedSingleChildLayoutDelegate(
      {Listenable? relayout, required this.table, required this.hydroState})
      : super(relayout: relayout) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.getSize(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getConstraintsForChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.getConstraintsForChild(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getPositionForChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: super.getPositionForChild(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_shouldRelayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        shouldRelayout(
            maybeUnBoxAndBuildArgument<SingleChildLayoutDelegate, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SingleChildLayoutDelegate unwrap() => this;
  SingleChildLayoutDelegate get vmObject => this;
  @override
  Size getSize(BoxConstraints constraints) {
    Closure closure = table["getSize"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    Closure closure = table["getConstraintsForChild"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    Closure closure = table["getPositionForChild"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool shouldRelayout(SingleChildLayoutDelegate oldDelegate) {
    Closure closure = table["shouldRelayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSingleChildLayoutDelegate(
    {required HydroState hydroState, required HydroTable table}) {
  table['singleChildLayoutDelegate'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSingleChildLayoutDelegate(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          relayout: maybeUnBoxAndBuildArgument<Listenable?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['relayout']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<SingleChildLayoutDelegate>(boxer: (
      {required SingleChildLayoutDelegate vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSingleChildLayoutDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
