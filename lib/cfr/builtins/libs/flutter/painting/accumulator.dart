import 'dart:core' as _fac9;

import 'package:flutter/src/painting/inline_span.dart' as _b761;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAccumulator extends _36c2.VMManagedBox<_b761.Accumulator> {VMManagedAccumulator({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.value,]; } );
table  [
'increment'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.increment(luaCallerArguments  [
1
]);
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _b761.Accumulator vmObject;

 }

class RTManagedAccumulator extends _b761.Accumulator implements _36c2.Box<_b761.Accumulator> {RTManagedAccumulator(_fac9.int _value, {required this.table, required this.hydroState}) : super(_value,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.value];
});
table['_dart_increment'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.increment(_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_b761.Accumulator unwrap() => this;
_b761.Accumulator get vmObject => this;
@_fac9.override _fac9.int get value { 
_36c2.Closure closure = table["getValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void increment(addend) { 
_36c2.Closure closure = table["increment"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadAccumulator({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'accumulator'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedAccumulator(luaCallerArguments  [
1
], table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_b761.Accumulator>(boxer: ({required _b761.Accumulator vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAccumulator(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
