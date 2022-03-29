import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/widgets/binding.dart' as _3e19;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedWidgetsBinding extends _36c2.VMManagedBox<_3e19.WidgetsBinding> {
  VMManagedWidgetsBinding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['debugBuildingDirtyElements'] = vmObject.debugBuildingDirtyElements;
    table['initInstances'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initInstances();
      return [];
    });
    table['initServiceExtensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initServiceExtensions();
      return [];
    });
    table['getBuildOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.buildOwner;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.BuildOwner?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getFocusManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_b485.FocusManager>(
            object: vmObject.focusManager,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['addObserver'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addObserver(_36c2.maybeUnBoxAndBuildArgument<
          _3e19.WidgetsBindingObserver,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['removeObserver'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.removeObserver(_36c2.maybeUnBoxAndBuildArgument<
            _3e19.WidgetsBindingObserver,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['handleMetricsChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleMetricsChanged();
      return [];
    });
    table['handleTextScaleFactorChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleTextScaleFactorChanged();
      return [];
    });
    table['handlePlatformBrightnessChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handlePlatformBrightnessChanged();
      return [];
    });
    table['handleAccessibilityFeaturesChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleAccessibilityFeaturesChanged();
      return [];
    });
    table['handleAppLifecycleStateChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleAppLifecycleStateChanged(_36c2.maybeUnBoxEnum(
          values: _a643.AppLifecycleState.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['handleMemoryPressure'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleMemoryPressure();
      return [];
    });
    table['getFirstFrameRasterized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.firstFrameRasterized,
      ];
    });
    table['getWaitUntilFirstFrameRasterized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.waitUntilFirstFrameRasterized,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDebugDidSendFirstFrameEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugDidSendFirstFrameEvent,
      ];
    });
    table['drawFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.drawFrame();
      return [];
    });
    table['getRenderViewElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.renderViewElement;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.Element?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getFramesEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.framesEnabled,
      ];
    });
    table['attachRootWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.attachRootWidget(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getIsRootWidgetAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isRootWidgetAttached,
      ];
    });
    table['performReassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.performReassemble(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['computePlatformResolvedLocale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.computePlatformResolvedLocale(_36c2
          .maybeUnBoxAndBuildArgument<_fac9.List<_a643.Locale>, _a643.Locale>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Locale?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _3e19.WidgetsBinding vmObject;
}

void loadWidgetsBinding(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['widgetsBindingInstance'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _3e19.WidgetsBinding.instance;
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_3e19.WidgetsBinding?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_3e19.WidgetsBinding>(boxer: (
      {required _3e19.WidgetsBinding vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedWidgetsBinding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
