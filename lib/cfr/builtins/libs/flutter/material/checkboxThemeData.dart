import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/checkbox_theme.dart' as _0ff4;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCheckboxThemeData
    extends _36c2.VMManagedBox<_0ff4.CheckboxThemeData> {
  VMManagedCheckboxThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['mouseCursor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fillColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.fillColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.checkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.overlayColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashRadius'] = vmObject.splashRadius;
    table['materialTapTargetSize'] =
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == vmObject.materialTapTargetSize;
    });
    table['visualDensity'] = _36c2.maybeBoxObject<_9716.VisualDensity?>(
        object: vmObject.visualDensity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject<_6be9.OutlinedBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['side'] = _36c2.maybeBoxObject<_6be9.BorderSide?>(
        object: vmObject.side,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_0ff4.CheckboxThemeData>(
            object: vmObject.copyWith(
                checkColor:
                    _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkColor'] : null,
                        parentState: hydroState),
                fillColor:
                    _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null,
                        parentState: hydroState),
                materialTapTargetSize: _36c2.maybeUnBoxEnum(
                    values: _9716.MaterialTapTargetSize.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['materialTapTargetSize']
                        : null),
                mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fd33.MouseCursor?>?, _fd33.MouseCursor?>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null,
                    parentState: hydroState),
                overlayColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                side: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState),
                splashRadius: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashRadius'] : null?.toDouble(),
                visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState)),
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

  final _0ff4.CheckboxThemeData vmObject;
}

class RTManagedCheckboxThemeData extends _0ff4.CheckboxThemeData
    implements _36c2.Box<_0ff4.CheckboxThemeData> {
  RTManagedCheckboxThemeData(
      {_da12.MaterialStateProperty<_a643.Color?>? checkColor,
      _da12.MaterialStateProperty<_a643.Color?>? fillColor,
      _9716.MaterialTapTargetSize? materialTapTargetSize,
      _da12.MaterialStateProperty<_fd33.MouseCursor?>? mouseCursor,
      _da12.MaterialStateProperty<_a643.Color?>? overlayColor,
      _6be9.OutlinedBorder? shape,
      _6be9.BorderSide? side,
      _fac9.double? splashRadius,
      _9716.VisualDensity? visualDensity,
      required this.table,
      required this.hydroState})
      : super(
            checkColor: checkColor,
            fillColor: fillColor,
            materialTapTargetSize: materialTapTargetSize,
            mouseCursor: mouseCursor,
            overlayColor: overlayColor,
            shape: shape,
            side: side,
            splashRadius: splashRadius,
            visualDensity: visualDensity) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['mouseCursor'] = _36c2.maybeBoxObject(
        object: this.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fillColor'] = _36c2.maybeBoxObject(
        object: this.fillColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkColor'] = _36c2.maybeBoxObject(
        object: this.checkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayColor'] = _36c2.maybeBoxObject(
        object: this.overlayColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashRadius'] = _36c2.maybeBoxObject(
        object: this.splashRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['materialTapTargetSize'] =
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == this.materialTapTargetSize;
    });
    table['visualDensity'] = _36c2.maybeBoxObject(
        object: this.visualDensity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['side'] = _36c2.maybeBoxObject(
        object: this.side, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                checkColor:
                    _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkColor'] : null,
                        parentState: hydroState),
                fillColor:
                    _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null,
                        parentState: hydroState),
                materialTapTargetSize: _36c2.maybeUnBoxEnum(
                    values: _9716.MaterialTapTargetSize.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['materialTapTargetSize']
                        : null),
                mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fd33.MouseCursor?>?, _fd33.MouseCursor?>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null,
                    parentState: hydroState),
                overlayColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                side: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState),
                splashRadius: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashRadius'] : null, parentState: hydroState),
                visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState)),
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

  _0ff4.CheckboxThemeData unwrap() => this;
  _0ff4.CheckboxThemeData get vmObject => this;
  @_fac9.override
  _0ff4.CheckboxThemeData copyWith(
      {_da12.MaterialStateProperty? checkColor,
      _da12.MaterialStateProperty? fillColor,
      _9716.MaterialTapTargetSize? materialTapTargetSize,
      _da12.MaterialStateProperty? mouseCursor,
      _da12.MaterialStateProperty? overlayColor,
      _6be9.OutlinedBorder? shape,
      _6be9.BorderSide? side,
      _fac9.double? splashRadius,
      _9716.VisualDensity? visualDensity}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_0ff4.CheckboxThemeData, _fac9.dynamic>(
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

void loadCheckboxThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['checkboxThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCheckboxThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          checkColor: _36c2.maybeUnBoxAndBuildArgument<
                  _da12.MaterialStateProperty<_a643.Color?>?,
                  _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkColor'] : null,
              parentState: hydroState),
          fillColor: _36c2
              .maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null,
                  parentState: hydroState),
          materialTapTargetSize: _36c2.maybeUnBoxEnum(
              values: _9716.MaterialTapTargetSize.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['materialTapTargetSize']
                  : null),
          mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fd33.MouseCursor?>?, _fd33.MouseCursor?>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null,
              parentState: hydroState),
          overlayColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          side: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState),
          splashRadius: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashRadius'] : null?.toDouble(),
          visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState))
    ];
  });
  table['checkboxThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_0ff4.CheckboxThemeData>(
          object: _0ff4.CheckboxThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_0ff4.CheckboxThemeData?,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_0ff4.CheckboxThemeData?,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_0ff4.CheckboxThemeData>(boxer: (
      {required _0ff4.CheckboxThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCheckboxThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
