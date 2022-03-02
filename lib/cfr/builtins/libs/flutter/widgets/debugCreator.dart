import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDebugCreator extends _36c2.VMManagedBox<_e2dc.DebugCreator> {VMManagedDebugCreator({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'element'
] = _36c2.maybeBoxObject<_e2dc.Element>(object: vmObject.element, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _e2dc.DebugCreator vmObject;

 }

class RTManagedDebugCreator extends _e2dc.DebugCreator implements _36c2.Box<_e2dc.DebugCreator> {RTManagedDebugCreator(_e2dc.Element element$, {required this.table, required this.hydroState}) : super(element$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'element'
] = _36c2.maybeBoxObject(object: this.element, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_e2dc.DebugCreator unwrap() => this;
_e2dc.DebugCreator get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadDebugCreator({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'debugCreator'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedDebugCreator(_36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_e2dc.DebugCreator>(boxer: ({required _e2dc.DebugCreator vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDebugCreator(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
