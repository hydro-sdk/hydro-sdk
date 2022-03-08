import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/platform.dart' as _9164;
import 'package:flutter/src/material/text_theme.dart' as _e1f4;
import 'package:flutter/src/material/typography.dart' as _306e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTypography extends _36c2.VMManagedBox<_306e.Typography> {
  VMManagedTypography(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['black'] = _36c2.maybeBoxObject<_e1f4.TextTheme>(
        object: vmObject.black,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['white'] = _36c2.maybeBoxObject<_e1f4.TextTheme>(
        object: vmObject.white,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['englishLike'] = _36c2.maybeBoxObject<_e1f4.TextTheme>(
        object: vmObject.englishLike,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dense'] = _36c2.maybeBoxObject<_e1f4.TextTheme>(
        object: vmObject.dense,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tall'] = _36c2.maybeBoxObject<_e1f4.TextTheme>(
        object: vmObject.tall,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['geometryThemeFor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e1f4.TextTheme>(
            object: vmObject.geometryThemeFor(_36c2.maybeUnBoxEnum(
                values: _306e.ScriptCategory.values,
                boxedEnum: luaCallerArguments[1])),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_306e.Typography>(
            object: vmObject.copyWith(
                black: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['black'] : null,
                    parentState: hydroState),
                dense: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dense'] : null,
                    parentState: hydroState),
                englishLike: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['englishLike']
                        : null,
                    parentState: hydroState),
                tall: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tall'] : null,
                    parentState: hydroState),
                white: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['white'] : null, parentState: hydroState)),
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

  final _306e.Typography vmObject;
}

void loadTypography(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['typography'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_306e.Typography>(
          object: _306e.Typography(
              black: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['black'] : null,
                  parentState: hydroState),
              dense: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dense'] : null,
                  parentState: hydroState),
              englishLike:
                  _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['englishLike']
                          : null,
                      parentState: hydroState),
              platform: _36c2.maybeUnBoxEnum(
                  values: _9164.TargetPlatform.values,
                  boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platform'] : null),
              tall: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tall'] : null, parentState: hydroState),
              white: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['white'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['typographyMaterial2014'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_306e.Typography>(
          object: _306e.Typography.material2014(
              black: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['black'] : null,
                  parentState: hydroState),
              dense: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dense'] : null,
                  parentState: hydroState),
              englishLike:
                  _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['englishLike']
                          : null,
                      parentState: hydroState),
              platform: _36c2.maybeUnBoxEnum(
                  values: _9164.TargetPlatform.values,
                  boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platform'] : null),
              tall: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tall'] : null, parentState: hydroState),
              white: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['white'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['typographyMaterial2018'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_306e.Typography>(
          object: _306e.Typography.material2018(
              black: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['black'] : null,
                  parentState: hydroState),
              dense: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dense'] : null,
                  parentState: hydroState),
              englishLike:
                  _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['englishLike']
                          : null,
                      parentState: hydroState),
              platform: _36c2.maybeUnBoxEnum(
                  values: _9164.TargetPlatform.values,
                  boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platform'] : null),
              tall: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tall'] : null, parentState: hydroState),
              white: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['white'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['typographyLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_306e.Typography>(
          object: _306e.Typography.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_306e.Typography, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_306e.Typography, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_306e.Typography>(boxer: (
      {required _306e.Typography vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTypography(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
