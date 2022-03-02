import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/editable.dart' as _7eb4;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextSelectionPoint extends _36c2.VMManagedBox<_7eb4.TextSelectionPoint> {VMManagedTextSelectionPoint({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'point'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.point, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'direction'
] = _a643.TextDirection.values.indexWhere((x) { return x == vmObject.direction; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7eb4.TextSelectionPoint vmObject;

 }

class RTManagedTextSelectionPoint extends _7eb4.TextSelectionPoint implements _36c2.Box<_7eb4.TextSelectionPoint> {RTManagedTextSelectionPoint(_a643.Offset point$, _a643.TextDirection? direction$, {required this.table, required this.hydroState}) : super(point$,direction$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'point'
] = _36c2.maybeBoxObject(object: this.point, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'direction'
] = _a643.TextDirection.values.indexWhere((x) { return x == this.direction; } );
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

_7eb4.TextSelectionPoint unwrap() => this;
_7eb4.TextSelectionPoint get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTextSelectionPoint({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'textSelectionPoint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedTextSelectionPoint(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
2
]), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_7eb4.TextSelectionPoint>(boxer: ({required _7eb4.TextSelectionPoint vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTextSelectionPoint(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
