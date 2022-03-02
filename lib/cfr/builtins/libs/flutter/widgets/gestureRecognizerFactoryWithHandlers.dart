import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/widgets/gesture_detector.dart' as _eed0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGestureRecognizerFactoryWithHandlers extends _36c2.VMManagedBox<_eed0.GestureRecognizerFactoryWithHandlers<_02d2.GestureRecognizer>> {VMManagedGestureRecognizerFactoryWithHandlers({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'constructor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.constructor(),]; } );
table  [
'initializer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.initializer(luaCallerArguments  [
1
]);
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _eed0.GestureRecognizerFactoryWithHandlers<_02d2.GestureRecognizer> vmObject;

 }

class RTManagedGestureRecognizerFactoryWithHandlers extends _eed0.GestureRecognizerFactoryWithHandlers implements _36c2.Box<_eed0.GestureRecognizerFactoryWithHandlers> {RTManagedGestureRecognizerFactoryWithHandlers( _constructor,  _initializer, {required this.table, required this.hydroState}) : super(_constructor,_initializer,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_constructor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.constructor()];
});
table['_dart_initializer'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.initializer(luaCallerArguments[1]);
  return [];
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

_eed0.GestureRecognizerFactoryWithHandlers unwrap() => this;
_eed0.GestureRecognizerFactoryWithHandlers get vmObject => this;
@_fac9.override _02d2.GestureRecognizer constructor() { 
_36c2.Closure closure = table["constructor"];
return _36c2.maybeUnBoxAndBuildArgument<_02d2.GestureRecognizer, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void initializer(instance) { 
_36c2.Closure closure = table["initializer"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadGestureRecognizerFactoryWithHandlers({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'gestureRecognizerFactoryWithHandlers'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpacked_constructor=luaCallerArguments  [
1
];
_36c2.Closure unpacked_initializer=luaCallerArguments  [
2
];
return  [RTManagedGestureRecognizerFactoryWithHandlers(() => unpacked_constructor.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], (instance) => unpacked_initializer.dispatch([luaCallerArguments[0],instance],parentState:hydroState,), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_eed0.GestureRecognizerFactoryWithHandlers>(boxer: ({required _eed0.GestureRecognizerFactoryWithHandlers vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedGestureRecognizerFactoryWithHandlers(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
