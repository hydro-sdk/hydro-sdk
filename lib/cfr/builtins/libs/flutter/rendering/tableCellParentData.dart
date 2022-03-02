import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/table.dart' as _31d2;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTableCellParentData extends _36c2.VMManagedBox<_31d2.TableCellParentData> {VMManagedTableCellParentData({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'verticalAlignment'
] = _31d2.TableCellVerticalAlignment.values.indexWhere((x) { return x == vmObject.verticalAlignment; } );
table  [
'x'
] = vmObject.x;
table  [
'y'
] = vmObject.y;
table  [
'offset'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.offset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _31d2.TableCellParentData vmObject;

 }

class RTManagedTableCellParentData extends _31d2.TableCellParentData implements _36c2.Box<_31d2.TableCellParentData> {RTManagedTableCellParentData({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'verticalAlignment'
] = _31d2.TableCellVerticalAlignment.values.indexWhere((x) { return x == verticalAlignment; } );
table  [
'x'
] = _36c2.maybeBoxObject(object: x, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'y'
] = _36c2.maybeBoxObject(object: y, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'offset'
] = _36c2.maybeBoxObject(object: offset, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_detach'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.detach();
  return [];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_31d2.TableCellParentData unwrap() => this;
_31d2.TableCellParentData get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void detach() { super.detach();
_36c2.Closure closure = table["detach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTableCellParentData({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'tableCellParentData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedTableCellParentData(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_31d2.TableCellParentData>(boxer: ({required _31d2.TableCellParentData vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTableCellParentData(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
