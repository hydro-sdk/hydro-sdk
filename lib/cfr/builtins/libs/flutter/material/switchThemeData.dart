import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/material/switch_theme.dart' as _6ec8;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSwitchThemeData
    extends _36c2.VMManagedBox<_6ec8.SwitchThemeData> {
  VMManagedSwitchThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['thumbColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.thumbColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trackColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.trackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['materialTapTargetSize'] =
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == vmObject.materialTapTargetSize;
    });
    table['mouseCursor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.overlayColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashRadius'] = vmObject.splashRadius;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6ec8.SwitchThemeData>(
            object: vmObject.copyWith(
                materialTapTargetSize: _36c2.maybeUnBoxEnum(
                    values: _9716.MaterialTapTargetSize.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['materialTapTargetSize']
                        : null),
                mouseCursor: _36c2.maybeUnBoxAndBuildArgument<
                        _da12.MaterialStateProperty<_fd33.MouseCursor?>?,
                        _fd33.MouseCursor?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null,
                    parentState: hydroState),
                overlayColor: _36c2.maybeUnBoxAndBuildArgument<
                        _da12.MaterialStateProperty<_a643.Color?>?,
                        _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null,
                    parentState: hydroState),
                splashRadius: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashRadius'] : null?.toDouble(),
                thumbColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbColor'] : null, parentState: hydroState),
                trackColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackColor'] : null, parentState: hydroState)),
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

  final _6ec8.SwitchThemeData vmObject;
}

class RTManagedSwitchThemeData extends _6ec8.SwitchThemeData
    implements _36c2.Box<_6ec8.SwitchThemeData> {
  RTManagedSwitchThemeData(
      {_9716.MaterialTapTargetSize? materialTapTargetSize,
      _da12.MaterialStateProperty<_fd33.MouseCursor?>? mouseCursor,
      _da12.MaterialStateProperty<_a643.Color?>? overlayColor,
      _fac9.double? splashRadius,
      _da12.MaterialStateProperty<_a643.Color?>? thumbColor,
      _da12.MaterialStateProperty<_a643.Color?>? trackColor,
      required this.table,
      required this.hydroState})
      : super(
            materialTapTargetSize: materialTapTargetSize,
            mouseCursor: mouseCursor,
            overlayColor: overlayColor,
            splashRadius: splashRadius,
            thumbColor: thumbColor,
            trackColor: trackColor) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['thumbColor'] = _36c2.maybeBoxObject(
        object: this.thumbColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trackColor'] = _36c2.maybeBoxObject(
        object: this.trackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['materialTapTargetSize'] =
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == this.materialTapTargetSize;
    });
    table['mouseCursor'] = _36c2.maybeBoxObject(
        object: this.mouseCursor,
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
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                materialTapTargetSize: _36c2.maybeUnBoxEnum(
                    values: _9716.MaterialTapTargetSize.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['materialTapTargetSize']
                        : null),
                mouseCursor: _36c2.maybeUnBoxAndBuildArgument<
                        _da12.MaterialStateProperty<_fd33.MouseCursor?>?,
                        _fd33.MouseCursor?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null,
                    parentState: hydroState),
                overlayColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null,
                    parentState: hydroState),
                splashRadius: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashRadius'] : null,
                    parentState: hydroState),
                thumbColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbColor'] : null, parentState: hydroState),
                trackColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackColor'] : null, parentState: hydroState)),
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

  _6ec8.SwitchThemeData unwrap() => this;
  _6ec8.SwitchThemeData get vmObject => this;
  @_fac9.override
  _6ec8.SwitchThemeData copyWith(
      {_9716.MaterialTapTargetSize? materialTapTargetSize,
      _da12.MaterialStateProperty? mouseCursor,
      _da12.MaterialStateProperty? overlayColor,
      _fac9.double? splashRadius,
      _da12.MaterialStateProperty? thumbColor,
      _da12.MaterialStateProperty? trackColor}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_6ec8.SwitchThemeData, _fac9.dynamic>(
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

void loadSwitchThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['switchThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSwitchThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          materialTapTargetSize: _36c2.maybeUnBoxEnum(
              values: _9716.MaterialTapTargetSize.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['materialTapTargetSize']
                  : null),
          mouseCursor: _36c2.maybeUnBoxAndBuildArgument<
                  _da12.MaterialStateProperty<_fd33.MouseCursor?>?,
                  _fd33.MouseCursor?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null,
              parentState: hydroState),
          overlayColor: _36c2
              .maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null,
                  parentState: hydroState),
          splashRadius: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['splashRadius']
              : null?.toDouble(),
          thumbColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbColor'] : null,
              parentState: hydroState),
          trackColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackColor'] : null, parentState: hydroState))
    ];
  });
  table['switchThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_6ec8.SwitchThemeData>(
          object: _6ec8.SwitchThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_6ec8.SwitchThemeData?,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_6ec8.SwitchThemeData?,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_6ec8.SwitchThemeData>(boxer: (
      {required _6ec8.SwitchThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSwitchThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
