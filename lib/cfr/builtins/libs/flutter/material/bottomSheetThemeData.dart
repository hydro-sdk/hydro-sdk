import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/bottom_sheet_theme.dart' as _952b;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBottomSheetThemeData
    extends _36c2.VMManagedBox<_952b.BottomSheetThemeData> {
  VMManagedBottomSheetThemeData(
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
    table['elevation'] = vmObject.elevation;
    table['modalBackgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.modalBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['modalElevation'] = vmObject.modalElevation;
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == vmObject.clipBehavior;
    });
    table['constraints'] = _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
        object: vmObject.constraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_952b.BottomSheetThemeData>(
            object: vmObject.copyWith(
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['backgroundColor']
                            : null,
                        parentState: hydroState),
                clipBehavior: _36c2.maybeUnBoxEnum(
                    values: _a643.Clip.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['clipBehavior']
                        : null),
                constraints:
                    _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['constraints'] : null,
                        parentState: hydroState),
                elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
                modalBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['modalBackgroundColor'] : null, parentState: hydroState),
                modalElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['modalElevation'] : null?.toDouble(),
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

  final _952b.BottomSheetThemeData vmObject;
}

class RTManagedBottomSheetThemeData extends _952b.BottomSheetThemeData
    implements _36c2.Box<_952b.BottomSheetThemeData> {
  RTManagedBottomSheetThemeData(
      {_a643.Color? backgroundColor,
      _a643.Clip? clipBehavior,
      _be2e.BoxConstraints? constraints,
      _fac9.double? elevation,
      _a643.Color? modalBackgroundColor,
      _fac9.double? modalElevation,
      _6be9.ShapeBorder? shape,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            clipBehavior: clipBehavior,
            constraints: constraints,
            elevation: elevation,
            modalBackgroundColor: modalBackgroundColor,
            modalElevation: modalElevation,
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
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['modalBackgroundColor'] = _36c2.maybeBoxObject(
        object: this.modalBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['modalElevation'] = _36c2.maybeBoxObject(
        object: this.modalElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == this.clipBehavior;
    });
    table['constraints'] = _36c2.maybeBoxObject(
        object: this.constraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['backgroundColor']
                        : null,
                    parentState: hydroState),
                clipBehavior: _36c2.maybeUnBoxEnum(
                    values: _a643.Clip.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['clipBehavior']
                        : null),
                constraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['constraints'] : null,
                    parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null,
                    parentState: hydroState),
                modalBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['modalBackgroundColor'] : null, parentState: hydroState),
                modalElevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['modalElevation'] : null, parentState: hydroState),
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

  _952b.BottomSheetThemeData unwrap() => this;
  _952b.BottomSheetThemeData get vmObject => this;
  @_fac9.override
  _952b.BottomSheetThemeData copyWith(
      {_a643.Color? backgroundColor,
      _a643.Clip? clipBehavior,
      _be2e.BoxConstraints? constraints,
      _fac9.double? elevation,
      _a643.Color? modalBackgroundColor,
      _fac9.double? modalElevation,
      _6be9.ShapeBorder? shape}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_952b.BottomSheetThemeData, _fac9.dynamic>(
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

void loadBottomSheetThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['bottomSheetThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedBottomSheetThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['backgroundColor']
                  : null,
              parentState: hydroState),
          clipBehavior: _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['clipBehavior']
                  : null),
          constraints:
              _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['constraints'] : null,
                  parentState: hydroState),
          elevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['elevation']
              : null?.toDouble(),
          modalBackgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['modalBackgroundColor'] : null,
                  parentState: hydroState),
          modalElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['modalElevation'] : null?.toDouble(),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState))
    ];
  });
  table['bottomSheetThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _952b.BottomSheetThemeData.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_952b.BottomSheetThemeData?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_952b.BottomSheetThemeData?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_952b.BottomSheetThemeData?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_952b.BottomSheetThemeData>(boxer: (
      {required _952b.BottomSheetThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBottomSheetThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
