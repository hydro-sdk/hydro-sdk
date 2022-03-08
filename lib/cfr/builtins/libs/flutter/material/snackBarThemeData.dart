import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/snack_bar_theme.dart' as _f366;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/text_style.dart' as _74d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSnackBarThemeData
    extends _36c2.VMManagedBox<_f366.SnackBarThemeData> {
  VMManagedSnackBarThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionTextColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.actionTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledActionTextColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.disabledActionTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.contentTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = vmObject.elevation;
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['behavior'] = _f366.SnackBarBehavior.values.indexWhere((x) {
      return x == vmObject.behavior;
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_f366.SnackBarThemeData>(
            object: vmObject.copyWith(
                actionTextColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['actionTextColor'] : null,
                        parentState: hydroState),
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                        parentState: hydroState),
                behavior: _36c2.maybeUnBoxEnum(
                    values: _f366.SnackBarBehavior.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['behavior']
                        : null),
                contentTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['contentTextStyle'] : null,
                    parentState: hydroState),
                disabledActionTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledActionTextColor'] : null, parentState: hydroState),
                elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState)),
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

  final _f366.SnackBarThemeData vmObject;
}

class RTManagedSnackBarThemeData extends _f366.SnackBarThemeData
    implements _36c2.Box<_f366.SnackBarThemeData> {
  RTManagedSnackBarThemeData(
      {_a643.Color? actionTextColor,
      _a643.Color? backgroundColor,
      _f366.SnackBarBehavior? behavior,
      _74d0.TextStyle? contentTextStyle,
      _a643.Color? disabledActionTextColor,
      _fac9.double? elevation,
      _6be9.ShapeBorder? shape,
      required this.table,
      required this.hydroState})
      : super(
            actionTextColor: actionTextColor,
            backgroundColor: backgroundColor,
            behavior: behavior,
            contentTextStyle: contentTextStyle,
            disabledActionTextColor: disabledActionTextColor,
            elevation: elevation,
            shape: shape) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionTextColor'] = _36c2.maybeBoxObject(
        object: this.actionTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledActionTextColor'] = _36c2.maybeBoxObject(
        object: this.disabledActionTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentTextStyle'] = _36c2.maybeBoxObject(
        object: this.contentTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['behavior'] = _f366.SnackBarBehavior.values.indexWhere((x) {
      return x == this.behavior;
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                actionTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['actionTextColor']
                        : null,
                    parentState: hydroState),
                backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['backgroundColor']
                        : null,
                    parentState: hydroState),
                behavior: _36c2.maybeUnBoxEnum(
                    values: _f366.SnackBarBehavior.values,
                    boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['behavior'] : null),
                contentTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['contentTextStyle'] : null, parentState: hydroState),
                disabledActionTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledActionTextColor'] : null, parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState)),
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

  _f366.SnackBarThemeData unwrap() => this;
  _f366.SnackBarThemeData get vmObject => this;
  @_fac9.override
  _f366.SnackBarThemeData copyWith(
      {_a643.Color? actionTextColor,
      _a643.Color? backgroundColor,
      _f366.SnackBarBehavior? behavior,
      _74d0.TextStyle? contentTextStyle,
      _a643.Color? disabledActionTextColor,
      _fac9.double? elevation,
      _6be9.ShapeBorder? shape}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_f366.SnackBarThemeData, _fac9.dynamic>(
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

void loadSnackBarThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['snackBarThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSnackBarThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          actionTextColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['actionTextColor']
                      : null,
                  parentState: hydroState),
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                  parentState: hydroState),
          behavior: _36c2.maybeUnBoxEnum(
              values: _f366.SnackBarBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['behavior']
                  : null),
          contentTextStyle:
              _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['contentTextStyle'] : null,
                  parentState: hydroState),
          disabledActionTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledActionTextColor'] : null, parentState: hydroState),
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState))
    ];
  });
  table['snackBarThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_f366.SnackBarThemeData>(
          object: _f366.SnackBarThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_f366.SnackBarThemeData?,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_f366.SnackBarThemeData?,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_f366.SnackBarThemeData>(boxer: (
      {required _f366.SnackBarThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSnackBarThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
