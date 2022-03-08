import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/material/page_transitions_theme.dart' as _1602;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/pages.dart' as _18d3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoPageTransitionsBuilder
    extends _36c2.VMManagedBox<_1602.CupertinoPageTransitionsBuilder> {
  VMManagedCupertinoPageTransitionsBuilder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _1602.CupertinoPageTransitionsBuilder vmObject;
}

class RTManagedCupertinoPageTransitionsBuilder
    extends _1602.CupertinoPageTransitionsBuilder
    implements _36c2.Box<_1602.CupertinoPageTransitionsBuilder> {
  RTManagedCupertinoPageTransitionsBuilder(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
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
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _1602.CupertinoPageTransitionsBuilder unwrap() => this;
  _1602.CupertinoPageTransitionsBuilder get vmObject => this;
  @_fac9.override
  _e2dc.Widget buildTransitions<T>(
      route, context, animation, secondaryAnimation, child) {
    _36c2.Closure closure = table["buildTransitions"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCupertinoPageTransitionsBuilder(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoPageTransitionsBuilder'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCupertinoPageTransitionsBuilder(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_1602.CupertinoPageTransitionsBuilder>(boxer: (
      {required _1602.CupertinoPageTransitionsBuilder vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoPageTransitionsBuilder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
