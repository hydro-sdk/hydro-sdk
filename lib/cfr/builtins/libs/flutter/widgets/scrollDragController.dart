import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/drag.dart' as _d9fd;
import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;
import 'package:flutter/src/widgets/scroll_activity.dart' as _ca8b;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollDragController extends _36c2.VMManagedBox<_ca8b.ScrollDragController> {VMManagedScrollDragController({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'carriedVelocity'
] = vmObject.carriedVelocity;
table  [
'motionStartDistanceThreshold'
] = vmObject.motionStartDistanceThreshold;
table  [
'getDelegate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_ca8b.ScrollActivityDelegate>(object: vmObject.delegate, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'updateDelegate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.updateDelegate(_36c2.maybeUnBoxAndBuildArgument<_ca8b.ScrollActivityDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'update'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.update(_36c2.maybeUnBoxAndBuildArgument<_4bc7.DragUpdateDetails, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'end'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.end(_36c2.maybeUnBoxAndBuildArgument<_4bc7.DragEndDetails, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'cancel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.cancel();
return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'getLastDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.lastDetails,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _ca8b.ScrollDragController vmObject;

 }

class RTManagedScrollDragController extends _ca8b.ScrollDragController implements _36c2.Box<_ca8b.ScrollDragController> {RTManagedScrollDragController({_fac9.double? carriedVelocity, _fac9.double? motionStartDistanceThreshold, void Function()? onDragCanceled, required _ca8b.ScrollActivityDelegate delegate, required _4bc7.DragStartDetails details, required this.table, required this.hydroState}) : super(carriedVelocity: carriedVelocity,motionStartDistanceThreshold: motionStartDistanceThreshold,onDragCanceled: onDragCanceled,delegate: delegate,details: details) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'carriedVelocity'
] = _36c2.maybeBoxObject(object: this.carriedVelocity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'motionStartDistanceThreshold'
] = _36c2.maybeBoxObject(object: this.motionStartDistanceThreshold, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getDelegate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.delegate];
});
table['_dart_updateDelegate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.updateDelegate(_36c2.maybeUnBoxAndBuildArgument<
      _ca8b.ScrollActivityDelegate,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_update'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.update(
      _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragUpdateDetails, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_end'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.end(
      _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragEndDetails, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_cancel'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.cancel();
  return [];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
});
table['_dart_getLastDetails'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.lastDetails];
});
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

_ca8b.ScrollDragController unwrap() => this;
_ca8b.ScrollDragController get vmObject => this;
@_fac9.override _ca8b.ScrollActivityDelegate get delegate { 
_36c2.Closure closure = table["getDelegate"];
return _36c2.maybeUnBoxAndBuildArgument<_ca8b.ScrollActivityDelegate, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void updateDelegate(value) { 
_36c2.Closure closure = table["updateDelegate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void update(details) { 
_36c2.Closure closure = table["update"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void end(details) { 
_36c2.Closure closure = table["end"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void cancel() { 
_36c2.Closure closure = table["cancel"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.dynamic get lastDetails { 
_36c2.Closure closure = table["getLastDetails"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadScrollDragController({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'scrollDragController'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

_36c2.Closure? unpackedonDragCanceled=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDragCanceled'
] : null;


return  [RTManagedScrollDragController(table: luaCallerArguments  [
0
], hydroState: hydroState, carriedVelocity: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'carriedVelocity'
] : null?.toDouble(), motionStartDistanceThreshold: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'motionStartDistanceThreshold'
] : null?.toDouble(), onDragCanceled: unpackedonDragCanceled != null ? () => unpackedonDragCanceled.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , delegate: _36c2.maybeUnBoxAndBuildArgument<_ca8b.ScrollActivityDelegate, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'delegate'
] : null, parentState: hydroState), details: _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragStartDetails, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'details'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_ca8b.ScrollDragController>(boxer: ({required _ca8b.ScrollDragController vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedScrollDragController(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
