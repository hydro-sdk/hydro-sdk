import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/widgets/gesture_detector.dart' as _eed0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGestureRecognizerFactory extends _36c2.VMManagedBox<_eed0.GestureRecognizerFactory<_02d2.GestureRecognizer>> {VMManagedGestureRecognizerFactory({required this.table, required this.vmObject, required this.hydroState}) : super(
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
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _eed0.GestureRecognizerFactory<_02d2.GestureRecognizer> vmObject;

 }

void loadGestureRecognizerFactory({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_eed0.GestureRecognizerFactory>(boxer: ({required _eed0.GestureRecognizerFactory vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedGestureRecognizerFactory(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
