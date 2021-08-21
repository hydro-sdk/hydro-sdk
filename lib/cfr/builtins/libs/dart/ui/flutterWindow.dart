import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFlutterWindow extends VMManagedBox<FlutterWindow> {
  VMManagedFlutterWindow(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['platformDispatcher'] = maybeBoxObject<PlatformDispatcher>(
        object: vmObject.platformDispatcher,
        hydroState: hydroState,
        table: HydroTable());
    table['getViewConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ViewConfiguration>(
            object: vmObject.viewConfiguration,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['render'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.render(maybeUnBoxAndBuildArgument<Scene, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getPlatformDispatcher'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PlatformDispatcher>(
            object: vmObject.platformDispatcher,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDevicePixelRatio'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.devicePixelRatio,
      ];
    });
    table['getPhysicalGeometry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.physicalGeometry,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPhysicalSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.physicalSize,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getViewInsets'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<WindowPadding>(
            object: vmObject.viewInsets,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getViewPadding'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<WindowPadding>(
            object: vmObject.viewPadding,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getSystemGestureInsets'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<WindowPadding>(
            object: vmObject.systemGestureInsets,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPadding'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<WindowPadding>(
            object: vmObject.padding,
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final FlutterWindow vmObject;
}

void loadFlutterWindow(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<FlutterWindow>(boxer: (
      {required FlutterWindow vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFlutterWindow(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
