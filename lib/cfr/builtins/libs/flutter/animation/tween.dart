import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/tween.dart' as _e83e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTween extends _36c2.VMManagedBox<_e83e.Tween<_fac9.Object?>> {VMManagedTween({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'transform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.transform(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
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
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _e83e.Tween<_fac9.Object?> vmObject;

 }

class RTManagedTween extends _e83e.Tween implements _36c2.Box<_e83e.Tween> {RTManagedTween({_fac9.Object? begin, _fac9.Object? end, required this.table, required this.hydroState}) : super(begin: begin,end: end) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_lerp'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    super.lerp(_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
        luaCallerArguments[1],
        parentState: hydroState))
  ];
});
table['_dart_transform'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    super.transform(
        _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
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
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_e83e.Tween unwrap() => this;
_e83e.Tween get vmObject => this;
@_fac9.override _fac9.Object? lerp(t) { 
_36c2.Closure closure = table["lerp"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.Object? transform(t) { 
_36c2.Closure closure = table["transform"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.Object? evaluate(animation) { 
_36c2.Closure closure = table["evaluate"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _86ca.Animation<_fac9.Object?> animate(parent) { 
_36c2.Closure closure = table["animate"];
return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.Object?>, _fac9.Object?>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e83e.Animatable<_fac9.Object?> chain(parent) { 
_36c2.Closure closure = table["chain"];
return _36c2.maybeUnBoxAndBuildArgument<_e83e.Animatable<_fac9.Object?>, _fac9.Object?>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTween({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'tween'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedTween(table: luaCallerArguments  [
0
], hydroState: hydroState, begin: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'begin'
] : null, end: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'end'
] : null)]; } );
_36c2.registerBoxer<_e83e.Tween>(boxer: ({required _e83e.Tween vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTween(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
