import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/platform.dart' as _9164;
import 'package:flutter/src/material/page_transitions_theme.dart' as _1602;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/pages.dart' as _18d3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPageTransitionsTheme
    extends _36c2.VMManagedBox<_1602.PageTransitionsTheme> {
  VMManagedPageTransitionsTheme(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getBuilders'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Map>(
            object: vmObject.builders,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['buildTransitions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildTransitions(
                _36c2.maybeUnBoxAndBuildArgument<_18d3.PageRoute<_fac9.dynamic>, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                    luaCallerArguments[3],
                    parentState: hydroState),
                _36c2
                    .maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                        luaCallerArguments[4],
                        parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[5],
                    parentState: hydroState)),
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

  final _1602.PageTransitionsTheme vmObject;
}

class RTManagedPageTransitionsTheme extends _1602.PageTransitionsTheme
    implements _36c2.Box<_1602.PageTransitionsTheme> {
  RTManagedPageTransitionsTheme(
      {required _fac9.Map<_9164.TargetPlatform, _1602.PageTransitionsBuilder>
          builders,
      required this.table,
      required this.hydroState})
      : super(builders: builders) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getBuilders'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.builders];
    });
    table['_dart_buildTransitions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildTransitions(
                _36c2.maybeUnBoxAndBuildArgument<_18d3.PageRoute<_fac9.dynamic>, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                    luaCallerArguments[3],
                    parentState: hydroState),
                _36c2
                    .maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                        luaCallerArguments[4],
                        parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[5],
                    parentState: hydroState)),
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

  _1602.PageTransitionsTheme unwrap() => this;
  _1602.PageTransitionsTheme get vmObject => this;
  @_fac9.override
  _fac9.Map<_9164.TargetPlatform, _1602.PageTransitionsBuilder> get builders {
    _36c2.Closure closure = table["getBuilders"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Map<_9164.TargetPlatform, _1602.PageTransitionsBuilder>,
            _9164.TargetPlatform>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.Widget buildTransitions<T>(
      route, context, animation, secondaryAnimation, child) {
    _36c2.Closure closure = table["buildTransitions"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
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

void loadPageTransitionsTheme(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['pageTransitionsTheme'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPageTransitionsTheme(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          builders: _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.Map<_9164.TargetPlatform, _1602.PageTransitionsBuilder>,
                  _9164.TargetPlatform>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['builders']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_1602.PageTransitionsTheme>(boxer: (
      {required _1602.PageTransitionsTheme vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPageTransitionsTheme(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
