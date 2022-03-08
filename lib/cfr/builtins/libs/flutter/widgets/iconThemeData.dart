import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/icon_theme_data.dart' as _05d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedIconThemeData extends _36c2.VMManagedBox<_05d1.IconThemeData> {
  VMManagedIconThemeData(
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
    table['size'] = vmObject.size;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_05d1.IconThemeData>(
            object: vmObject.copyWith(
                color: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['color']
                            : null,
                        parentState: hydroState),
                opacity: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['opacity']
                    : null?.toDouble(),
                size: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['size']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['merge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_05d1.IconThemeData>(
            object: vmObject.merge(_36c2.maybeUnBoxAndBuildArgument<
                _05d1.IconThemeData?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_05d1.IconThemeData>(
            object: vmObject.resolve(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getIsConcrete'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isConcrete,
      ];
    });
    table['getOpacity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.opacity;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
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

  final _05d1.IconThemeData vmObject;
}

class RTManagedIconThemeData extends _05d1.IconThemeData
    implements _36c2.Box<_05d1.IconThemeData> {
  RTManagedIconThemeData(
      {_a643.Color? color,
      _fac9.double? opacity,
      _fac9.double? size,
      required this.table,
      required this.hydroState})
      : super(color: color, opacity: opacity, size: size) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
    table['size'] = _36c2.maybeBoxObject(
        object: this.size, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                color: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                        parentState: hydroState),
                opacity:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['opacity']
                            : null,
                        parentState: hydroState),
                size: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['size'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_merge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.merge(_36c2.maybeUnBoxAndBuildArgument<
                _05d1.IconThemeData?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.resolve(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getIsConcrete'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isConcrete];
    });
    table['_dart_getOpacity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.opacity];
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

  _05d1.IconThemeData unwrap() => this;
  _05d1.IconThemeData get vmObject => this;
  @_fac9.override
  _05d1.IconThemeData copyWith(
      {_a643.Color? color, _fac9.double? opacity, _fac9.double? size}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _05d1.IconThemeData merge(other) {
    _36c2.Closure closure = table["merge"];
    return _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _05d1.IconThemeData resolve(context) {
    _36c2.Closure closure = table["resolve"];
    return _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get isConcrete {
    _36c2.Closure closure = table["getIsConcrete"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double? get opacity {
    _36c2.Closure closure = table["getOpacity"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
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

void loadIconThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['iconThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedIconThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['color']
                  : null,
              parentState: hydroState),
          opacity: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['opacity']
              : null?.toDouble(),
          size: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['size']
              : null?.toDouble())
    ];
  });
  table['iconThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_05d1.IconThemeData>(
          object: _05d1.IconThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_05d1.IconThemeData>(boxer: (
      {required _05d1.IconThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedIconThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
