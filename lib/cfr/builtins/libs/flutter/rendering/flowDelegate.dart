import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/flow.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFlowDelegate extends VMManagedBox<FlowDelegate> {
  VMManagedFlowDelegate(
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
                luaCallerArguments[1],
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['paintChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paintChildren(
          maybeUnBoxAndBuildArgument<FlowPaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['shouldRelayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRelayout(
            maybeUnBoxAndBuildArgument<FlowDelegate, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['shouldRepaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRepaint(
            maybeUnBoxAndBuildArgument<FlowDelegate, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final FlowDelegate vmObject;
}

class RTManagedFlowDelegate extends FlowDelegate implements Box<FlowDelegate> {
  RTManagedFlowDelegate(
      {Listenable? repaint, required this.table, required this.hydroState})
      : super(repaint: repaint) {
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
                luaCallerArguments[1],
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_paintChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      paintChildren(maybeUnBoxAndBuildArgument<FlowPaintingContext, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_shouldRelayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.shouldRelayout(maybeUnBoxAndBuildArgument<FlowDelegate, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_shouldRepaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        shouldRepaint(maybeUnBoxAndBuildArgument<FlowDelegate, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  FlowDelegate unwrap() => this;
  FlowDelegate get vmObject => this;
  @override
  Size getSize(constraints) {
    Closure closure = table["getSize"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints getConstraintsForChild(i, constraints) {
    Closure closure = table["getConstraintsForChild"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void paintChildren(context) {
    Closure closure = table["paintChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool shouldRelayout(oldDelegate) {
    Closure closure = table["shouldRelayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool shouldRepaint(oldDelegate) {
    Closure closure = table["shouldRepaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadFlowDelegate(
    {required HydroState hydroState, required HydroTable table}) {
  table['flowDelegate'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedFlowDelegate(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          repaint: maybeUnBoxAndBuildArgument<Listenable?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['repaint']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<FlowDelegate>(boxer: (
      {required FlowDelegate vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFlowDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
