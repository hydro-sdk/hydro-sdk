import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/localizations.dart' as _a483;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedWidgetsLocalizations
    extends _36c2.VMManagedBox<_a483.WidgetsLocalizations> {
  VMManagedWidgetsLocalizations(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _a643.TextDirection.values.indexWhere((x) {
          return x == vmObject.textDirection;
        }),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _a483.WidgetsLocalizations vmObject;
}

class RTManagedWidgetsLocalizations extends _a483.WidgetsLocalizations
    implements _36c2.Box<_a483.WidgetsLocalizations> {
  RTManagedWidgetsLocalizations({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [textDirection];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _a483.WidgetsLocalizations unwrap() => this;
  _a483.WidgetsLocalizations get vmObject => this;
  @_fac9.override
  _a643.TextDirection get textDirection {
    _36c2.Closure closure = table["getTextDirection"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.TextDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }
}

void loadWidgetsLocalizations(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['widgetsLocalizations'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedWidgetsLocalizations(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['widgetsLocalizationsOf'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a483.WidgetsLocalizations>(
          object: _a483.WidgetsLocalizations.of(_36c2
              .maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_a483.WidgetsLocalizations>(boxer: (
      {required _a483.WidgetsLocalizations vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedWidgetsLocalizations(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
