import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/tween.dart' as _e83e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnimatable extends _36c2.VMManagedBox<_e83e.Animatable<_fac9.dynamic>> {VMManagedAnimatable({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'transform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.transform(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'evaluate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.evaluate(_36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'animate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_86ca.Animation>(object: vmObject.animate(_36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'chain'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e83e.Animatable>(object: vmObject.chain(_36c2.maybeUnBoxAndBuildArgument<_e83e.Animatable<_fac9.double>, _fac9.double>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _e83e.Animatable<_fac9.dynamic> vmObject;

 }

class RTManagedAnimatable extends _e83e.Animatable implements _36c2.Box<_e83e.Animatable> {RTManagedAnimatable({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_transform'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    transform(_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
        luaCallerArguments[1],
        parentState: hydroState))
  ];
});
table['_dart_evaluate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    super.evaluate(_36c2.maybeUnBoxAndBuildArgument<
        _86ca.Animation<_fac9.double>,
        _fac9.double>(luaCallerArguments[1], parentState: hydroState))
  ];
});
table['_dart_animate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.animate(_36c2.maybeUnBoxAndBuildArgument<
            _86ca.Animation<_fac9.double>,
            _fac9.double>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_chain'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.chain(_36c2.maybeUnBoxAndBuildArgument<
            _e83e.Animatable<_fac9.double>,
            _fac9.double>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_e83e.Animatable unwrap() => this;
_e83e.Animatable get vmObject => this;
@_fac9.override _fac9.dynamic transform(t) { 
_36c2.Closure closure = table["transform"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.dynamic evaluate(animation) { 
_36c2.Closure closure = table["evaluate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _86ca.Animation<_fac9.dynamic> animate(parent) { 
_36c2.Closure closure = table["animate"];
return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.dynamic>, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e83e.Animatable<_fac9.dynamic> chain(parent) { 
_36c2.Closure closure = table["chain"];
return _36c2.maybeUnBoxAndBuildArgument<_e83e.Animatable<_fac9.dynamic>, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadAnimatable({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'animatable'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedAnimatable(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_e83e.Animatable>(boxer: ({required _e83e.Animatable vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAnimatable(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
