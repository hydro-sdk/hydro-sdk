import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedToolbarItemsParentData extends _36c2.VMManagedBox<_578c.ToolbarItemsParentData> {VMManagedToolbarItemsParentData({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'shouldPaint'
] = vmObject.shouldPaint;
table  [
'previousSibling'
] = _36c2.maybeBoxObject<_be2e.RenderBox?>(object: vmObject.previousSibling, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'nextSibling'
] = _36c2.maybeBoxObject<_be2e.RenderBox?>(object: vmObject.nextSibling, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'offset'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.offset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'detach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.detach();
return []; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _578c.ToolbarItemsParentData vmObject;

 }

class RTManagedToolbarItemsParentData extends _578c.ToolbarItemsParentData implements _36c2.Box<_578c.ToolbarItemsParentData> {RTManagedToolbarItemsParentData({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'shouldPaint'
] = _36c2.maybeBoxObject(object: shouldPaint, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'previousSibling'
] = _36c2.maybeBoxObject(object: previousSibling, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'nextSibling'
] = _36c2.maybeBoxObject(object: nextSibling, hydroState: hydroState, table: _36c2.HydroTable());
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

_578c.ToolbarItemsParentData unwrap() => this;
_578c.ToolbarItemsParentData get vmObject => this;
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
void loadToolbarItemsParentData({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'toolbarItemsParentData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedToolbarItemsParentData(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_578c.ToolbarItemsParentData>(boxer: ({required _578c.ToolbarItemsParentData vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedToolbarItemsParentData(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
