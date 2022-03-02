import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/widgets/heroes.dart' as _1b22;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedHeroController extends _36c2.VMManagedBox<_1b22.HeroController> {VMManagedHeroController({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'didPush'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.didPush(_36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'didPop'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.didPop(_36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'didReplace'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.didReplace(newRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'newRoute'
] : null, parentState: hydroState), oldRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'oldRoute'
] : null, parentState: hydroState));
return []; } );
table  [
'didStartUserGesture'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.didStartUserGesture(_36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'didStopUserGesture'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didStopUserGesture();
return []; } );
table  [
'didRemove'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.didRemove(_36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'getNavigator'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.navigator;if(returnValue!= null){return [_36c2.maybeBoxObject<_a37d.NavigatorState?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _1b22.HeroController vmObject;

 }

class RTManagedHeroController extends _1b22.HeroController implements _36c2.Box<_1b22.HeroController> {RTManagedHeroController({_e83e.Tween<_a643.Rect?> Function(_a643.Rect? begin, _a643.Rect? end)? createRectTween, required this.table, required this.hydroState}) : super(createRectTween: createRectTween) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_didPush'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didPush(
      _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
  return [];
});
table['_dart_didPop'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didPop(
      _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
  return [];
});
table['_dart_didReplace'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didReplace(
      newRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['newRoute']
              : null,
          parentState: hydroState),
      oldRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldRoute']
              : null,
          parentState: hydroState));
  return [];
});
table['_dart_didStartUserGesture'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didStartUserGesture(
      _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
  return [];
});
table['_dart_didStopUserGesture'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didStopUserGesture();
  return [];
});
table['_dart_didRemove'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didRemove(
      _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
  return [];
});
table['_dart_getNavigator'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.navigator];
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

_1b22.HeroController unwrap() => this;
_1b22.HeroController get vmObject => this;
@_fac9.override void didPush(route, previousRoute) { 
_36c2.Closure closure = table["didPush"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didPop(route, previousRoute) { 
_36c2.Closure closure = table["didPop"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didReplace({_a37d.Route? newRoute, _a37d.Route? oldRoute}) { 
_36c2.Closure closure = table["didReplace"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didStartUserGesture(route, previousRoute) { 
_36c2.Closure closure = table["didStartUserGesture"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didStopUserGesture() { 
_36c2.Closure closure = table["didStopUserGesture"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didRemove(route, previousRoute) { 
_36c2.Closure closure = table["didRemove"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a37d.NavigatorState? get navigator { 
_36c2.Closure closure = table["getNavigator"];
return _36c2.maybeUnBoxAndBuildArgument<_a37d.NavigatorState?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadHeroController({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'heroController'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedcreateRectTween=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'createRectTween'
] : null;
return  [RTManagedHeroController(table: luaCallerArguments  [
0
], hydroState: hydroState, createRectTween: unpackedcreateRectTween != null ? (begin, end) => _36c2.maybeUnBoxAndBuildArgument<_e83e.Tween<_a643.Rect?>, _a643.Rect?>(unpackedcreateRectTween.dispatch([luaCallerArguments[0],begin,end],parentState:hydroState,)[0], parentState: hydroState) : null )]; } );
_36c2.registerBoxer<_1b22.HeroController>(boxer: ({required _1b22.HeroController vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedHeroController(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
