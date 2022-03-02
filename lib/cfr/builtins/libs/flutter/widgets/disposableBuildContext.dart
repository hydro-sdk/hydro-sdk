import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/disposable_build_context.dart' as _4544;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDisposableBuildContext extends _36c2.VMManagedBox<_4544.DisposableBuildContext<_e2dc.State<_e2dc.StatefulWidget>>> {VMManagedDisposableBuildContext({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getContext'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.context;if(returnValue!= null){return [_36c2.maybeBoxObject<_e2dc.BuildContext?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _4544.DisposableBuildContext<_e2dc.State<_e2dc.StatefulWidget>> vmObject;

 }

class RTManagedDisposableBuildContext extends _4544.DisposableBuildContext implements _36c2.Box<_4544.DisposableBuildContext> {RTManagedDisposableBuildContext(_e2dc.State<_e2dc.StatefulWidget> _state, {required this.table, required this.hydroState}) : super(_state,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getContext'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.context];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_4544.DisposableBuildContext unwrap() => this;
_4544.DisposableBuildContext get vmObject => this;
@_fac9.override _e2dc.BuildContext? get context { 
_36c2.Closure closure = table["getContext"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void dispose() { 
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadDisposableBuildContext({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'disposableBuildContext'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedDisposableBuildContext(luaCallerArguments  [
1
], table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_4544.DisposableBuildContext>(boxer: ({required _4544.DisposableBuildContext vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDisposableBuildContext(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
