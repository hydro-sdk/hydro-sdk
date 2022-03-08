import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/progress_indicator_theme.dart' as _63f1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedProgressIndicatorThemeData
    extends _36c2.VMManagedBox<_63f1.ProgressIndicatorThemeData> {
  VMManagedProgressIndicatorThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['color'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.color,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['linearTrackColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.linearTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['linearMinHeight'] = vmObject.linearMinHeight;
    table['circularTrackColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.circularTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['refreshBackgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.refreshBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_63f1.ProgressIndicatorThemeData>(
            object: vmObject.copyWith(
                circularTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['circularTrackColor']
                        : null,
                    parentState: hydroState),
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                    parentState: hydroState),
                linearMinHeight: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['linearMinHeight']
                    : null?.toDouble(),
                linearTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['linearTrackColor'] : null,
                    parentState: hydroState),
                refreshBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['refreshBackgroundColor'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
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

  final _63f1.ProgressIndicatorThemeData vmObject;
}

class RTManagedProgressIndicatorThemeData
    extends _63f1.ProgressIndicatorThemeData
    implements _36c2.Box<_63f1.ProgressIndicatorThemeData> {
  RTManagedProgressIndicatorThemeData(
      {_a643.Color? circularTrackColor,
      _a643.Color? color,
      _fac9.double? linearMinHeight,
      _a643.Color? linearTrackColor,
      _a643.Color? refreshBackgroundColor,
      required this.table,
      required this.hydroState})
      : super(
            circularTrackColor: circularTrackColor,
            color: color,
            linearMinHeight: linearMinHeight,
            linearTrackColor: linearTrackColor,
            refreshBackgroundColor: refreshBackgroundColor) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
    table['linearTrackColor'] = _36c2.maybeBoxObject(
        object: this.linearTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['linearMinHeight'] = _36c2.maybeBoxObject(
        object: this.linearMinHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['circularTrackColor'] = _36c2.maybeBoxObject(
        object: this.circularTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['refreshBackgroundColor'] = _36c2.maybeBoxObject(
        object: this.refreshBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                circularTrackColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['circularTrackColor']
                            : null,
                        parentState: hydroState),
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                    parentState: hydroState),
                linearMinHeight:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['linearMinHeight'] : null,
                        parentState: hydroState),
                linearTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['linearTrackColor'] : null, parentState: hydroState),
                refreshBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['refreshBackgroundColor'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
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

  _63f1.ProgressIndicatorThemeData unwrap() => this;
  _63f1.ProgressIndicatorThemeData get vmObject => this;
  @_fac9.override
  _63f1.ProgressIndicatorThemeData copyWith(
      {_a643.Color? circularTrackColor,
      _a643.Color? color,
      _fac9.double? linearMinHeight,
      _a643.Color? linearTrackColor,
      _a643.Color? refreshBackgroundColor}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_63f1.ProgressIndicatorThemeData,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

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

void loadProgressIndicatorThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['progressIndicatorThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedProgressIndicatorThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          circularTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['circularTrackColor']
                  : null,
              parentState: hydroState),
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
              parentState: hydroState),
          linearMinHeight: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['linearMinHeight']
              : null?.toDouble(),
          linearTrackColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['linearTrackColor'] : null,
                  parentState: hydroState),
          refreshBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['refreshBackgroundColor'] : null,
              parentState: hydroState))
    ];
  });
  table['progressIndicatorThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _63f1.ProgressIndicatorThemeData.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_63f1.ProgressIndicatorThemeData?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_63f1.ProgressIndicatorThemeData?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_63f1.ProgressIndicatorThemeData?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_63f1.ProgressIndicatorThemeData>(boxer: (
      {required _63f1.ProgressIndicatorThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedProgressIndicatorThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
