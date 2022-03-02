import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;
import 'package:flutter/src/widgets/scroll_notification.dart' as _593c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollUpdateNotification
    extends _36c2.VMManagedBox<_593c.ScrollUpdateNotification> {
  VMManagedScrollUpdateNotification(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['dragDetails'] = _36c2.maybeBoxObject<_4bc7.DragUpdateDetails?>(
        object: vmObject.dragDetails,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollDelta'] = vmObject.scrollDelta;
    table['metrics'] = _36c2.maybeBoxObject<_96ae.ScrollMetrics>(
        object: vmObject.metrics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['context'] = _36c2.maybeBoxObject<_e2dc.BuildContext?>(
        object: vmObject.context,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugFillDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillDescription(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_fac9.String>,
          _fac9.String>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['visitAncestor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.visitAncestor(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['dispatch'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatch(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _593c.ScrollUpdateNotification vmObject;
}

class RTManagedScrollUpdateNotification extends _593c.ScrollUpdateNotification
    implements _36c2.Box<_593c.ScrollUpdateNotification> {
  RTManagedScrollUpdateNotification(
      {_fac9.int? depth,
      _4bc7.DragUpdateDetails? dragDetails,
      _fac9.double? scrollDelta,
      required _e2dc.BuildContext context,
      required _96ae.ScrollMetrics metrics,
      required this.table,
      required this.hydroState})
      : super(
            depth: depth,
            dragDetails: dragDetails,
            scrollDelta: scrollDelta,
            context: context,
            metrics: metrics) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['dragDetails'] = _36c2.maybeBoxObject(
        object: this.dragDetails,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollDelta'] = _36c2.maybeBoxObject(
        object: this.scrollDelta,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['metrics'] = _36c2.maybeBoxObject(
        object: this.metrics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['context'] = _36c2.maybeBoxObject(
        object: this.context,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_debugFillDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillDescription(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_fac9.String>,
          _fac9.String>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_visitAncestor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.visitAncestor(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_dispatch'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispatch(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _593c.ScrollUpdateNotification unwrap() => this;
  _593c.ScrollUpdateNotification get vmObject => this;
  @_fac9.override
  void debugFillDescription(description) {
    super.debugFillDescription(description);
    _36c2.Closure closure = table["debugFillDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool visitAncestor(element) {
    super.visitAncestor(element);
    _36c2.Closure closure = table["visitAncestor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get depth {
    _36c2.Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispatch(target) {
    _36c2.Closure closure = table["dispatch"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadScrollUpdateNotification(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['scrollUpdateNotification'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedScrollUpdateNotification(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          depth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['depth']
              : null,
          dragDetails: _36c2
              .maybeUnBoxAndBuildArgument<_4bc7.DragUpdateDetails?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['dragDetails']
                      : null,
                  parentState: hydroState),
          scrollDelta: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollDelta']
              : null?.toDouble(),
          context: _36c2
              .maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['context'] : null,
                  parentState: hydroState),
          metrics: _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['metrics'] : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_593c.ScrollUpdateNotification>(boxer: (
      {required _593c.ScrollUpdateNotification vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScrollUpdateNotification(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
