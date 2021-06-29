import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedViewConfiguration extends VMManagedBox<ViewConfiguration> {
  VMManagedViewConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['window'] = maybeBoxObject<FlutterView?>(
        object: vmObject.window, hydroState: hydroState, table: HydroTable());
    table['devicePixelRatio'] = vmObject.devicePixelRatio;
    table['geometry'] = maybeBoxObject<Rect>(
        object: vmObject.geometry, hydroState: hydroState, table: HydroTable());
    table['visible'] = vmObject.visible;
    table['viewInsets'] = maybeBoxObject<WindowPadding>(
        object: vmObject.viewInsets,
        hydroState: hydroState,
        table: HydroTable());
    table['viewPadding'] = maybeBoxObject<WindowPadding>(
        object: vmObject.viewPadding,
        hydroState: hydroState,
        table: HydroTable());
    table['systemGestureInsets'] = maybeBoxObject<WindowPadding>(
        object: vmObject.systemGestureInsets,
        hydroState: hydroState,
        table: HydroTable());
    table['padding'] = maybeBoxObject<WindowPadding>(
        object: vmObject.padding, hydroState: hydroState, table: HydroTable());
    table['copyWith'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ViewConfiguration>(
            object: vmObject.copyWith(
                devicePixelRatio: args[1]['devicePixelRatio']?.toDouble(),
                geometry: maybeUnBoxAndBuildArgument<Rect?>(args[1]['geometry'],
                    parentState: hydroState),
                padding: maybeUnBoxAndBuildArgument<WindowPadding?>(args[1]['padding'],
                    parentState: hydroState),
                systemGestureInsets: maybeUnBoxAndBuildArgument<WindowPadding?>(
                    args[1]['systemGestureInsets'],
                    parentState: hydroState),
                viewInsets: maybeUnBoxAndBuildArgument<WindowPadding?>(args[1]['viewInsets'],
                    parentState: hydroState),
                viewPadding: maybeUnBoxAndBuildArgument<WindowPadding?>(
                    args[1]['viewPadding'],
                    parentState: hydroState),
                visible: args[1]['visible'],
                window: maybeUnBoxAndBuildArgument<FlutterView?>(args[1]['window'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ViewConfiguration vmObject;
}

class RTManagedViewConfiguration extends ViewConfiguration
    implements Box<ViewConfiguration> {
  RTManagedViewConfiguration(
      {required double devicePixelRatio,
      required Rect geometry,
      required WindowPadding padding,
      required WindowPadding systemGestureInsets,
      required WindowPadding viewInsets,
      required WindowPadding viewPadding,
      required bool visible,
      FlutterView? window,
      required this.table,
      required this.hydroState})
      : super(
            devicePixelRatio: devicePixelRatio,
            geometry: geometry,
            padding: padding,
            systemGestureInsets: systemGestureInsets,
            viewInsets: viewInsets,
            viewPadding: viewPadding,
            visible: visible,
            window: window) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['window'] = maybeBoxObject<FlutterView?>(
        object: window, hydroState: hydroState, table: HydroTable());
    table['devicePixelRatio'] = devicePixelRatio;
    table['geometry'] = maybeBoxObject<Rect>(
        object: geometry, hydroState: hydroState, table: HydroTable());
    table['visible'] = visible;
    table['viewInsets'] = maybeBoxObject<WindowPadding>(
        object: viewInsets, hydroState: hydroState, table: HydroTable());
    table['viewPadding'] = maybeBoxObject<WindowPadding>(
        object: viewPadding, hydroState: hydroState, table: HydroTable());
    table['systemGestureInsets'] = maybeBoxObject<WindowPadding>(
        object: systemGestureInsets,
        hydroState: hydroState,
        table: HydroTable());
    table['padding'] = maybeBoxObject<WindowPadding>(
        object: padding, hydroState: hydroState, table: HydroTable());
    table['_dart_copyWith'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ViewConfiguration>(
            object: super.copyWith(
                devicePixelRatio: args[1]['devicePixelRatio']?.toDouble(),
                geometry: maybeUnBoxAndBuildArgument<Rect?>(args[1]['geometry'],
                    parentState: hydroState),
                padding: maybeUnBoxAndBuildArgument<WindowPadding?>(args[1]['padding'],
                    parentState: hydroState),
                systemGestureInsets: maybeUnBoxAndBuildArgument<WindowPadding?>(
                    args[1]['systemGestureInsets'],
                    parentState: hydroState),
                viewInsets: maybeUnBoxAndBuildArgument<WindowPadding?>(args[1]['viewInsets'],
                    parentState: hydroState),
                viewPadding: maybeUnBoxAndBuildArgument<WindowPadding?>(
                    args[1]['viewPadding'],
                    parentState: hydroState),
                visible: args[1]['visible'],
                window: maybeUnBoxAndBuildArgument<FlutterView?>(args[1]['window'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ViewConfiguration unwrap() => this;
  ViewConfiguration get vmObject => this;
  @override
  ViewConfiguration copyWith(
      {double? devicePixelRatio,
      Rect? geometry,
      WindowPadding? padding,
      WindowPadding? systemGestureInsets,
      WindowPadding? viewInsets,
      WindowPadding? viewPadding,
      bool? visible,
      FlutterView? window}) {
    Closure closure = table["copyWith"];
    return maybeUnBoxAndBuildArgument<ViewConfiguration>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadViewConfiguration(
    {required HydroState hydroState, required HydroTable table}) {
  table['viewConfiguration'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedViewConfiguration(
          table: args[0],
          hydroState: hydroState,
          devicePixelRatio: args[1]['devicePixelRatio']?.toDouble(),
          geometry: maybeUnBoxAndBuildArgument<Rect>(args[1]['geometry'],
              parentState: hydroState),
          padding: maybeUnBoxAndBuildArgument<WindowPadding>(args[1]['padding'],
              parentState: hydroState),
          systemGestureInsets: maybeUnBoxAndBuildArgument<WindowPadding>(
              args[1]['systemGestureInsets'],
              parentState: hydroState),
          viewInsets: maybeUnBoxAndBuildArgument<WindowPadding>(
              args[1]['viewInsets'],
              parentState: hydroState),
          viewPadding: maybeUnBoxAndBuildArgument<WindowPadding>(
              args[1]['viewPadding'],
              parentState: hydroState),
          visible: args[1]['visible'],
          window: maybeUnBoxAndBuildArgument<FlutterView?>(args[1]['window'],
              parentState: hydroState))
    ];
  });
  registerBoxer<ViewConfiguration>(boxer: (
      {required ViewConfiguration vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedViewConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
