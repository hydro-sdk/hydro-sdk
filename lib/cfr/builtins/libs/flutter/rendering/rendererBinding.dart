import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/rendering/binding.dart' as _5551;
import 'package:flutter/src/rendering/mouse_tracker.dart' as _1668;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/view.dart' as _8620;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRendererBinding
    extends _36c2.VMManagedBox<_5551.RendererBinding> {
  VMManagedRendererBinding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
    table['initRenderView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initRenderView();
      return [];
    });
    table['getMouseTracker'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_1668.MouseTracker>(
            object: vmObject.mouseTracker,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPipelineOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9742.PipelineOwner>(
            object: vmObject.pipelineOwner,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getRenderView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8620.RenderView>(
            object: vmObject.renderView,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setRenderView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.renderView =
          (_36c2.maybeUnBoxAndBuildArgument<_8620.RenderView, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['createViewConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8620.ViewConfiguration>(
            object: vmObject.createViewConfiguration(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['dispatchEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatchEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['setSemanticsEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setSemanticsEnabled(luaCallerArguments[1]);
      return [];
    });
    table['getSendFramesToEngine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.sendFramesToEngine,
      ];
    });
    table['deferFirstFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deferFirstFrame();
      return [];
    });
    table['allowFirstFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.allowFirstFrame();
      return [];
    });
    table['resetFirstFrameSent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.resetFirstFrameSent();
      return [];
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
    table['hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hitTest(
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _5551.RendererBinding vmObject;
}

void loadRendererBinding(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['rendererBindingInstance'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _5551.RendererBinding.instance;
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_5551.RendererBinding?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_5551.RendererBinding>(boxer: (
      {required _5551.RendererBinding vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRendererBinding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
