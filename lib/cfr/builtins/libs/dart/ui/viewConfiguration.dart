import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

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
    table['copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ViewConfiguration>(
            object: vmObject.copyWith(
                devicePixelRatio: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['devicePixelRatio']
                    : null?.toDouble(),
                geometry:
                    maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['geometry'] : null,
                        parentState: hydroState),
                padding: maybeUnBoxAndBuildArgument<WindowPadding?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['padding']
                        : null,
                    parentState: hydroState),
                systemGestureInsets:
                    maybeUnBoxAndBuildArgument<WindowPadding?, dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemGestureInsets'] : null,
                        parentState: hydroState),
                viewInsets: maybeUnBoxAndBuildArgument<WindowPadding?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewInsets'] : null, parentState: hydroState),
                viewPadding: maybeUnBoxAndBuildArgument<WindowPadding?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewPadding'] : null, parentState: hydroState),
                visible: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visible'] : null,
                window: maybeUnBoxAndBuildArgument<FlutterView?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['window'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
    table['_dart_copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ViewConfiguration>(
            object: super.copyWith(
                devicePixelRatio: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['devicePixelRatio']
                    : null?.toDouble(),
                geometry:
                    maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['geometry'] : null,
                        parentState: hydroState),
                padding: maybeUnBoxAndBuildArgument<WindowPadding?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['padding']
                        : null,
                    parentState: hydroState),
                systemGestureInsets:
                    maybeUnBoxAndBuildArgument<WindowPadding?, dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemGestureInsets'] : null,
                        parentState: hydroState),
                viewInsets: maybeUnBoxAndBuildArgument<WindowPadding?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewInsets'] : null, parentState: hydroState),
                viewPadding: maybeUnBoxAndBuildArgument<WindowPadding?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewPadding'] : null, parentState: hydroState),
                visible: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visible'] : null,
                window: maybeUnBoxAndBuildArgument<FlutterView?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['window'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
    return maybeUnBoxAndBuildArgument<ViewConfiguration, dynamic>(
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
  table['viewConfiguration'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedViewConfiguration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          devicePixelRatio: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['devicePixelRatio']
              : null?.toDouble(),
          geometry: maybeUnBoxAndBuildArgument<Rect, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['geometry']
                  : null,
              parentState: hydroState),
          padding: maybeUnBoxAndBuildArgument<WindowPadding, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['padding']
                  : null,
              parentState: hydroState),
          systemGestureInsets: maybeUnBoxAndBuildArgument<WindowPadding, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemGestureInsets'] : null,
              parentState: hydroState),
          viewInsets: maybeUnBoxAndBuildArgument<WindowPadding, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewInsets'] : null, parentState: hydroState),
          viewPadding: maybeUnBoxAndBuildArgument<WindowPadding, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewPadding'] : null, parentState: hydroState),
          visible: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visible'] : null,
          window: maybeUnBoxAndBuildArgument<FlutterView?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['window'] : null, parentState: hydroState))
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
