import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/widgets/localizations.dart' as _a483;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDefaultWidgetsLocalizations extends _36c2.VMManagedBox<_a483.DefaultWidgetsLocalizations> {VMManagedDefaultWidgetsLocalizations({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getTextDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_a643.TextDirection.values.indexWhere((x) { return x == vmObject.textDirection; } ),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _a483.DefaultWidgetsLocalizations vmObject;

 }

class RTManagedDefaultWidgetsLocalizations extends _a483.DefaultWidgetsLocalizations implements _36c2.Box<_a483.DefaultWidgetsLocalizations> {RTManagedDefaultWidgetsLocalizations({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getTextDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.textDirection];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_a483.DefaultWidgetsLocalizations unwrap() => this;
_a483.DefaultWidgetsLocalizations get vmObject => this;
@_fac9.override _a643.TextDirection get textDirection { 
_36c2.Closure closure = table["getTextDirection"];
return _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
 }
void loadDefaultWidgetsLocalizations({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'defaultWidgetsLocalizations'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedDefaultWidgetsLocalizations(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
table  [
'defaultWidgetsLocalizationsLoad'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: _a483.DefaultWidgetsLocalizations.load(_36c2.maybeUnBoxAndBuildArgument<_a643.Locale, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
_36c2.registerBoxer<_a483.DefaultWidgetsLocalizations>(boxer: ({required _a483.DefaultWidgetsLocalizations vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDefaultWidgetsLocalizations(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
