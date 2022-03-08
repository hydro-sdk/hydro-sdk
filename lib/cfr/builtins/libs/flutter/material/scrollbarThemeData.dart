import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/material/scrollbar_theme.dart' as _ea69;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollbarThemeData
    extends _36c2.VMManagedBox<_ea69.ScrollbarThemeData> {
  VMManagedScrollbarThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['thickness'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.thickness,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showTrackOnHover'] = vmObject.showTrackOnHover;
    table['isAlwaysShown'] = vmObject.isAlwaysShown;
    table['interactive'] = vmObject.interactive;
    table['radius'] = _36c2.maybeBoxObject<_a643.Radius?>(
        object: vmObject.radius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['thumbColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.thumbColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trackColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.trackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trackBorderColor'] =
        _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
            object: vmObject.trackBorderColor,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['crossAxisMargin'] = vmObject.crossAxisMargin;
    table['mainAxisMargin'] = vmObject.mainAxisMargin;
    table['minThumbLength'] = vmObject.minThumbLength;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ea69.ScrollbarThemeData>(
            object: vmObject.copyWith(
                crossAxisMargin: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['crossAxisMargin']
                    : null?.toDouble(),
                interactive: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['interactive']
                    : null,
                isAlwaysShown: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['isAlwaysShown']
                    : null,
                mainAxisMargin: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['mainAxisMargin']
                    : null?.toDouble(),
                minThumbLength: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minThumbLength']
                    : null?.toDouble(),
                radius: _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radius'] : null,
                    parentState: hydroState),
                showTrackOnHover: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['showTrackOnHover']
                    : null,
                thickness: _36c2.maybeUnBoxAndBuildArgument<
                        _da12.MaterialStateProperty<_fac9.double?>?,
                        _fac9.double?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thickness'] : null,
                    parentState: hydroState),
                thumbColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbColor'] : null,
                    parentState: hydroState),
                trackBorderColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackBorderColor'] : null, parentState: hydroState),
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

  final _ea69.ScrollbarThemeData vmObject;
}

class RTManagedScrollbarThemeData extends _ea69.ScrollbarThemeData
    implements _36c2.Box<_ea69.ScrollbarThemeData> {
  RTManagedScrollbarThemeData(
      {_fac9.double? crossAxisMargin,
      _fac9.bool? interactive,
      _fac9.bool? isAlwaysShown,
      _fac9.double? mainAxisMargin,
      _fac9.double? minThumbLength,
      _a643.Radius? radius,
      _fac9.bool? showTrackOnHover,
      _da12.MaterialStateProperty<_fac9.double?>? thickness,
      _da12.MaterialStateProperty<_a643.Color?>? thumbColor,
      _da12.MaterialStateProperty<_a643.Color?>? trackBorderColor,
      _da12.MaterialStateProperty<_a643.Color?>? trackColor,
      required this.table,
      required this.hydroState})
      : super(
            crossAxisMargin: crossAxisMargin,
            interactive: interactive,
            isAlwaysShown: isAlwaysShown,
            mainAxisMargin: mainAxisMargin,
            minThumbLength: minThumbLength,
            radius: radius,
            showTrackOnHover: showTrackOnHover,
            thickness: thickness,
            thumbColor: thumbColor,
            trackBorderColor: trackBorderColor,
            trackColor: trackColor) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['thickness'] = _36c2.maybeBoxObject(
        object: this.thickness,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showTrackOnHover'] = _36c2.maybeBoxObject(
        object: this.showTrackOnHover,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isAlwaysShown'] = _36c2.maybeBoxObject(
        object: this.isAlwaysShown,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['interactive'] = _36c2.maybeBoxObject(
        object: this.interactive,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['radius'] = _36c2.maybeBoxObject(
        object: this.radius, hydroState: hydroState, table: _36c2.HydroTable());
    table['thumbColor'] = _36c2.maybeBoxObject(
        object: this.thumbColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trackColor'] = _36c2.maybeBoxObject(
        object: this.trackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trackBorderColor'] = _36c2.maybeBoxObject(
        object: this.trackBorderColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['crossAxisMargin'] = _36c2.maybeBoxObject(
        object: this.crossAxisMargin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mainAxisMargin'] = _36c2.maybeBoxObject(
        object: this.mainAxisMargin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minThumbLength'] = _36c2.maybeBoxObject(
        object: this.minThumbLength,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                crossAxisMargin:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['crossAxisMargin']
                            : null,
                        parentState: hydroState),
                interactive:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['interactive'] : null,
                        parentState: hydroState),
                isAlwaysShown: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isAlwaysShown'] : null,
                    parentState: hydroState),
                mainAxisMargin: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mainAxisMargin'] : null, parentState: hydroState),
                minThumbLength: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minThumbLength'] : null, parentState: hydroState),
                radius: _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radius'] : null, parentState: hydroState),
                showTrackOnHover: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showTrackOnHover'] : null, parentState: hydroState),
                thickness: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fac9.double?>?, _fac9.double?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thickness'] : null, parentState: hydroState),
                thumbColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbColor'] : null, parentState: hydroState),
                trackBorderColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackBorderColor'] : null, parentState: hydroState),
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

  _ea69.ScrollbarThemeData unwrap() => this;
  _ea69.ScrollbarThemeData get vmObject => this;
  @_fac9.override
  _ea69.ScrollbarThemeData copyWith(
      {_fac9.double? crossAxisMargin,
      _fac9.bool? interactive,
      _fac9.bool? isAlwaysShown,
      _fac9.double? mainAxisMargin,
      _fac9.double? minThumbLength,
      _a643.Radius? radius,
      _fac9.bool? showTrackOnHover,
      _da12.MaterialStateProperty? thickness,
      _da12.MaterialStateProperty? thumbColor,
      _da12.MaterialStateProperty? trackBorderColor,
      _da12.MaterialStateProperty? trackColor}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_ea69.ScrollbarThemeData, _fac9.dynamic>(
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

void loadScrollbarThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['scrollbarThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedScrollbarThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          crossAxisMargin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisMargin']
              : null?.toDouble(),
          interactive: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['interactive']
              : null,
          isAlwaysShown: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['isAlwaysShown']
              : null,
          mainAxisMargin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['mainAxisMargin']
              : null?.toDouble(),
          minThumbLength: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minThumbLength']
              : null?.toDouble(),
          radius: _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radius'] : null,
              parentState: hydroState),
          showTrackOnHover: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['showTrackOnHover']
              : null,
          thickness: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fac9.double?>?, _fac9.double?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thickness'] : null,
              parentState: hydroState),
          thumbColor: _36c2.maybeUnBoxAndBuildArgument<
                  _da12.MaterialStateProperty<_a643.Color?>?,
                  _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbColor'] : null,
              parentState: hydroState),
          trackBorderColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackBorderColor'] : null,
              parentState: hydroState),
          trackColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackColor'] : null, parentState: hydroState))
    ];
  });
  table['scrollbarThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_ea69.ScrollbarThemeData>(
          object: _ea69.ScrollbarThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_ea69.ScrollbarThemeData?,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_ea69.ScrollbarThemeData?,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_ea69.ScrollbarThemeData>(boxer: (
      {required _ea69.ScrollbarThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScrollbarThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
