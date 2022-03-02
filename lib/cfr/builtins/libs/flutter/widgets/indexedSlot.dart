import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedIndexedSlot extends _36c2.VMManagedBox<_e2dc.IndexedSlot<_e2dc.Element?>> {VMManagedIndexedSlot({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'index'
] = vmObject.index;
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _e2dc.IndexedSlot<_e2dc.Element?> vmObject;

 }

class RTManagedIndexedSlot extends _e2dc.IndexedSlot implements _36c2.Box<_e2dc.IndexedSlot> {RTManagedIndexedSlot(_fac9.int index$, _e2dc.Element? value, {required this.table, required this.hydroState}) : super(index$,value,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'index'
] = _36c2.maybeBoxObject(object: this.index, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_e2dc.IndexedSlot unwrap() => this;
_e2dc.IndexedSlot get vmObject => this;
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadIndexedSlot({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'indexedSlot'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedIndexedSlot(luaCallerArguments  [
1
], luaCallerArguments  [
2
], table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_e2dc.IndexedSlot>(boxer: ({required _e2dc.IndexedSlot vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedIndexedSlot(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
