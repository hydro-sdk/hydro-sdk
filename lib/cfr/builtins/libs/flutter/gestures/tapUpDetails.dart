import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/tap.dart' as _1275;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTapUpDetails extends _36c2.VMManagedBox<_1275.TapUpDetails> {VMManagedTapUpDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'globalPosition'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.globalPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'localPosition'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'kind'
] = _a643.PointerDeviceKind.values.indexWhere((x) { return x == vmObject.kind; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _1275.TapUpDetails vmObject;

 }

class RTManagedTapUpDetails extends _1275.TapUpDetails implements _36c2.Box<_1275.TapUpDetails> {RTManagedTapUpDetails({required _a643.Offset globalPosition, _a643.Offset? localPosition, required _a643.PointerDeviceKind kind, required this.table, required this.hydroState}) : super(globalPosition: globalPosition,localPosition: localPosition,kind: kind) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'globalPosition'
] = _36c2.maybeBoxObject(object: this.globalPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'localPosition'
] = _36c2.maybeBoxObject(object: this.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'kind'
] = _a643.PointerDeviceKind.values.indexWhere((x) { return x == this.kind; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_1275.TapUpDetails unwrap() => this;
_1275.TapUpDetails get vmObject => this;
 }
void loadTapUpDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'tapUpDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedTapUpDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, globalPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'globalPosition'
] : null, parentState: hydroState), localPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'localPosition'
] : null, parentState: hydroState), kind: _36c2.maybeUnBoxEnum(values: _a643.PointerDeviceKind.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'kind'
] : null))]; } );
_36c2.registerBoxer<_1275.TapUpDetails>(boxer: ({required _1275.TapUpDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTapUpDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
