import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/material/page_transitions_theme.dart' as _1602;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/pages.dart' as _18d3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPageTransitionsBuilder
    extends _36c2.VMManagedBox<_1602.PageTransitionsBuilder> {
  VMManagedPageTransitionsBuilder(
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _1602.PageTransitionsBuilder vmObject;
}

void loadPageTransitionsBuilder(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_1602.PageTransitionsBuilder>(boxer: (
      {required _1602.PageTransitionsBuilder vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPageTransitionsBuilder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
