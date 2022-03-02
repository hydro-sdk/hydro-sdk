import 'dart:core' as _fac9;

import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/animation/tween_sequence.dart' as _fb3c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTweenSequenceItem extends _36c2.VMManagedBox<_fb3c.TweenSequenceItem<_fac9.dynamic>> {VMManagedTweenSequenceItem({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'tween'
] = _36c2.maybeBoxObject<_e83e.Animatable>(object: vmObject.tween, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'weight'
] = vmObject.weight; }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _fb3c.TweenSequenceItem<_fac9.dynamic> vmObject;

 }

class RTManagedTweenSequenceItem extends _fb3c.TweenSequenceItem implements _36c2.Box<_fb3c.TweenSequenceItem> {RTManagedTweenSequenceItem({required _e83e.Animatable<_fac9.dynamic> tween, required _fac9.double weight, required this.table, required this.hydroState}) : super(tween: tween,weight: weight) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'tween'
] = _36c2.maybeBoxObject(object: this.tween, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'weight'
] = _36c2.maybeBoxObject(object: this.weight, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_fb3c.TweenSequenceItem unwrap() => this;
_fb3c.TweenSequenceItem get vmObject => this;
 }
void loadTweenSequenceItem({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'tweenSequenceItem'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedTweenSequenceItem(table: luaCallerArguments  [
0
], hydroState: hydroState, tween: _36c2.maybeUnBoxAndBuildArgument<_e83e.Animatable<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'tween'
] : null, parentState: hydroState), weight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'weight'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_fb3c.TweenSequenceItem>(boxer: ({required _fb3c.TweenSequenceItem vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTweenSequenceItem(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
