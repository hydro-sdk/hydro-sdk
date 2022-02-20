import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart' as _35be;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderSliverBoxChildManager
    extends _36c2.VMManagedBox<_35be.RenderSliverBoxChildManager> {
  VMManagedRenderSliverBoxChildManager(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['createChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.createChild(luaCallerArguments[1],
          after:
              _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['after']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['removeChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.removeChild(
          _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['estimateMaxScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.estimateMaxScrollOffset(
            _36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            firstIndex: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['firstIndex']
                : null,
            lastIndex: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['lastIndex']
                : null,
            leadingScrollOffset: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['leadingScrollOffset']
                : null?.toDouble(),
            trailingScrollOffset: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['trailingScrollOffset']
                : null?.toDouble()),
      ];
    });
    table['getChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.childCount,
      ];
    });
    table['didAdoptChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didAdoptChild(
          _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['setDidUnderflow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setDidUnderflow(luaCallerArguments[1]);
      return [];
    });
    table['didStartLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStartLayout();
      return [];
    });
    table['didFinishLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didFinishLayout();
      return [];
    });
    table['debugAssertChildListLocked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugAssertChildListLocked(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _35be.RenderSliverBoxChildManager vmObject;
}

class RTManagedRenderSliverBoxChildManager
    extends _35be.RenderSliverBoxChildManager
    implements _36c2.Box<_35be.RenderSliverBoxChildManager> {
  RTManagedRenderSliverBoxChildManager(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_createChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      createChild(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          after:
              _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['after']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_removeChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      removeChild(
          _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_estimateMaxScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: estimateMaxScrollOffset(
                _36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints, _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                firstIndex: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['firstIndex']
                        : null,
                    parentState: hydroState),
                lastIndex: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['lastIndex'] : null,
                    parentState: hydroState),
                leadingScrollOffset: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['leadingScrollOffset'] : null, parentState: hydroState),
                trailingScrollOffset: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['trailingScrollOffset'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [childCount];
    });
    table['_dart_didAdoptChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      didAdoptChild(
          _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_setDidUnderflow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      setDidUnderflow(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_didStartLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStartLayout();
      return [];
    });
    table['_dart_didFinishLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didFinishLayout();
      return [];
    });
    table['_dart_debugAssertChildListLocked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugAssertChildListLocked(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _35be.RenderSliverBoxChildManager unwrap() => this;
  _35be.RenderSliverBoxChildManager get vmObject => this;
  @_fac9.override
  void createChild(index, {_be2e.RenderBox? after}) {
    _36c2.Closure closure = table["createChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeChild(child) {
    _36c2.Closure closure = table["removeChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double estimateMaxScrollOffset(constraints,
      {_fac9.int? firstIndex,
      _fac9.int? lastIndex,
      _fac9.double? leadingScrollOffset,
      _fac9.double? trailingScrollOffset}) {
    _36c2.Closure closure = table["estimateMaxScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.int get childCount {
    _36c2.Closure closure = table["getChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didAdoptChild(child) {
    _36c2.Closure closure = table["didAdoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setDidUnderflow(value) {
    _36c2.Closure closure = table["setDidUnderflow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didStartLayout() {
    _36c2.Closure closure = table["didStartLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didFinishLayout() {
    _36c2.Closure closure = table["didFinishLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool debugAssertChildListLocked() {
    _36c2.Closure closure = table["debugAssertChildListLocked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRenderSliverBoxChildManager(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['renderSliverBoxChildManager'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRenderSliverBoxChildManager(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_35be.RenderSliverBoxChildManager>(boxer: (
      {required _35be.RenderSliverBoxChildManager vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRenderSliverBoxChildManager(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
