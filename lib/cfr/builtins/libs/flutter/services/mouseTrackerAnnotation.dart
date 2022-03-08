import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;
import 'package:flutter/src/services/mouse_tracking.dart' as _23ad;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMouseTrackerAnnotation
    extends _36c2.VMManagedBox<_23ad.MouseTrackerAnnotation> {
  VMManagedMouseTrackerAnnotation(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['cursor'] = _36c2.maybeBoxObject<_fd33.MouseCursor>(
        object: vmObject.cursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['validForMouseTracker'] = vmObject.validForMouseTracker;
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _23ad.MouseTrackerAnnotation vmObject;
}

class RTManagedMouseTrackerAnnotation extends _23ad.MouseTrackerAnnotation
    implements _36c2.Box<_23ad.MouseTrackerAnnotation> {
  RTManagedMouseTrackerAnnotation(
      {required _fd33.MouseCursor cursor,
      void Function(_0e77.PointerEnterEvent event)? onEnter,
      void Function(_0e77.PointerExitEvent event)? onExit,
      required _fac9.bool validForMouseTracker,
      required this.table,
      required this.hydroState})
      : super(
            cursor: cursor,
            onEnter: onEnter,
            onExit: onExit,
            validForMouseTracker: validForMouseTracker) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['cursor'] = _36c2.maybeBoxObject(
        object: this.cursor, hydroState: hydroState, table: _36c2.HydroTable());
    table['validForMouseTracker'] = _36c2.maybeBoxObject(
        object: this.validForMouseTracker,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _23ad.MouseTrackerAnnotation unwrap() => this;
  _23ad.MouseTrackerAnnotation get vmObject => this;
  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }
}

void loadMouseTrackerAnnotation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['mouseTrackerAnnotation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonEnter = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onEnter']
        : null;
    _36c2.Closure? unpackedonExit =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onExit'] : null;

    return [
      RTManagedMouseTrackerAnnotation(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          cursor: _36c2
              .maybeUnBoxAndBuildArgument<_fd33.MouseCursor, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['cursor']
                      : null,
                  parentState: hydroState),
          onEnter: unpackedonEnter != null
              ? (event) => unpackedonEnter.dispatch(
                    [luaCallerArguments[0], event],
                    parentState: hydroState,
                  )
              : null,
          onExit: unpackedonExit != null
              ? (event) => unpackedonExit.dispatch(
                    [luaCallerArguments[0], event],
                    parentState: hydroState,
                  )
              : null,
          validForMouseTracker: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['validForMouseTracker']
              : null)
    ];
  });
  _36c2.registerBoxer<_23ad.MouseTrackerAnnotation>(boxer: (
      {required _23ad.MouseTrackerAnnotation vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMouseTrackerAnnotation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
