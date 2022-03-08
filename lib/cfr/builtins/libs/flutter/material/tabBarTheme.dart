import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/tab_bar_theme.dart' as _06d0;
import 'package:flutter/src/material/tabs.dart' as _d82b;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTabBarTheme extends _36c2.VMManagedBox<_06d0.TabBarTheme> {
  VMManagedTabBarTheme(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['indicator'] = _36c2.maybeBoxObject<_13a5.Decoration?>(
        object: vmObject.indicator,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorSize'] = _d82b.TabBarIndicatorSize.values.indexWhere((x) {
      return x == vmObject.indicatorSize;
    });
    table['labelColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.labelColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.labelPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.unselectedLabelColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.unselectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_06d0.TabBarTheme>(
            object: vmObject.copyWith(
                indicator: _36c2
                    .maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['indicator']
                            : null,
                        parentState: hydroState),
                indicatorSize: _36c2.maybeUnBoxEnum(
                    values: _d82b.TabBarIndicatorSize.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['indicatorSize']
                        : null),
                labelColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelColor'] : null,
                    parentState: hydroState),
                labelPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelPadding'] : null, parentState: hydroState),
                labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
                unselectedLabelColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelColor'] : null, parentState: hydroState),
                unselectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelStyle'] : null, parentState: hydroState)),
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

  final _06d0.TabBarTheme vmObject;
}

class RTManagedTabBarTheme extends _06d0.TabBarTheme
    implements _36c2.Box<_06d0.TabBarTheme> {
  RTManagedTabBarTheme(
      {_13a5.Decoration? indicator,
      _d82b.TabBarIndicatorSize? indicatorSize,
      _a643.Color? labelColor,
      _96d1.EdgeInsetsGeometry? labelPadding,
      _74d0.TextStyle? labelStyle,
      _a643.Color? unselectedLabelColor,
      _74d0.TextStyle? unselectedLabelStyle,
      required this.table,
      required this.hydroState})
      : super(
            indicator: indicator,
            indicatorSize: indicatorSize,
            labelColor: labelColor,
            labelPadding: labelPadding,
            labelStyle: labelStyle,
            unselectedLabelColor: unselectedLabelColor,
            unselectedLabelStyle: unselectedLabelStyle) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['indicator'] = _36c2.maybeBoxObject(
        object: this.indicator,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorSize'] = _d82b.TabBarIndicatorSize.values.indexWhere((x) {
      return x == this.indicatorSize;
    });
    table['labelColor'] = _36c2.maybeBoxObject(
        object: this.labelColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelPadding'] = _36c2.maybeBoxObject(
        object: this.labelPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelStyle'] = _36c2.maybeBoxObject(
        object: this.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelColor'] = _36c2.maybeBoxObject(
        object: this.unselectedLabelColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelStyle'] = _36c2.maybeBoxObject(
        object: this.unselectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                indicator: _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicator'] : null,
                    parentState: hydroState),
                indicatorSize: _36c2.maybeUnBoxEnum(
                    values: _d82b.TabBarIndicatorSize.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['indicatorSize']
                        : null),
                labelColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['labelColor']
                        : null,
                    parentState: hydroState),
                labelPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelPadding'] : null,
                    parentState: hydroState),
                labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
                unselectedLabelColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelColor'] : null, parentState: hydroState),
                unselectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelStyle'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
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
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _06d0.TabBarTheme unwrap() => this;
  _06d0.TabBarTheme get vmObject => this;
  @_fac9.override
  _06d0.TabBarTheme copyWith(
      {_13a5.Decoration? indicator,
      _d82b.TabBarIndicatorSize? indicatorSize,
      _a643.Color? labelColor,
      _96d1.EdgeInsetsGeometry? labelPadding,
      _74d0.TextStyle? labelStyle,
      _a643.Color? unselectedLabelColor,
      _74d0.TextStyle? unselectedLabelStyle}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_06d0.TabBarTheme, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
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

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTabBarTheme(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['tabBarTheme'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTabBarTheme(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          indicator: _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicator'] : null,
              parentState: hydroState),
          indicatorSize: _36c2.maybeUnBoxEnum(
              values: _d82b.TabBarIndicatorSize.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['indicatorSize']
                  : null),
          labelColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelColor'] : null,
              parentState: hydroState),
          labelPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['labelPadding']
                  : null,
              parentState: hydroState),
          labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null,
              parentState: hydroState),
          unselectedLabelColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelColor'] : null, parentState: hydroState),
          unselectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelStyle'] : null, parentState: hydroState))
    ];
  });
  table['tabBarThemeOf'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_06d0.TabBarTheme>(
          object: _06d0.TabBarTheme.of(_36c2.maybeUnBoxAndBuildArgument<
              _e2dc.BuildContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['tabBarThemeLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_06d0.TabBarTheme>(
          object: _06d0.TabBarTheme.lerp(
              _36c2
                  .maybeUnBoxAndBuildArgument<_06d0.TabBarTheme, _fac9.dynamic>(
                      luaCallerArguments[1],
                      parentState: hydroState),
              _36c2
                  .maybeUnBoxAndBuildArgument<_06d0.TabBarTheme, _fac9.dynamic>(
                      luaCallerArguments[2],
                      parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_06d0.TabBarTheme>(boxer: (
      {required _06d0.TabBarTheme vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTabBarTheme(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
