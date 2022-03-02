import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/semantics/semantics_event.dart' as _7afa;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnnounceSemanticsEvent extends _36c2.VMManagedBox<_7afa.AnnounceSemanticsEvent> {VMManagedAnnounceSemanticsEvent({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'message'
] = vmObject.message;
table  [
'textDirection'
] = _a643.TextDirection.values.indexWhere((x) { return x == vmObject.textDirection; } );
table  [
'type'
] = vmObject.type;
table  [
'getDataMap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Map>(object: vmObject.getDataMap(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toMap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Map>(object: vmObject.toMap(nodeId: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'nodeId'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7afa.AnnounceSemanticsEvent vmObject;

 }

class RTManagedAnnounceSemanticsEvent extends _7afa.AnnounceSemanticsEvent implements _36c2.Box<_7afa.AnnounceSemanticsEvent> {RTManagedAnnounceSemanticsEvent(_fac9.String message$, _a643.TextDirection textDirection$, {required this.table, required this.hydroState}) : super(message$,textDirection$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'message'
] = _36c2.maybeBoxObject(object: this.message, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'textDirection'
] = _a643.TextDirection.values.indexWhere((x) { return x == this.textDirection; } );
table  [
'type'
] = _36c2.maybeBoxObject(object: type, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getDataMap'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getDataMap(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toMap'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toMap(
            nodeId: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['nodeId']
                    : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_7afa.AnnounceSemanticsEvent unwrap() => this;
_7afa.AnnounceSemanticsEvent get vmObject => this;
@_fac9.override _fac9.Map<_fac9.String,_fac9.dynamic> getDataMap() { 
_36c2.Closure closure = table["getDataMap"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.dynamic>, _fac9.String>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.Map<_fac9.String,_fac9.dynamic> toMap({_fac9.int? nodeId}) { 
_36c2.Closure closure = table["toMap"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.dynamic>, _fac9.String>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadAnnounceSemanticsEvent({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'announceSemanticsEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedAnnounceSemanticsEvent(luaCallerArguments  [
1
], _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
2
]), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_7afa.AnnounceSemanticsEvent>(boxer: ({required _7afa.AnnounceSemanticsEvent vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAnnounceSemanticsEvent(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
