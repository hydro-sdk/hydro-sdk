import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/platform_views.dart' as _40e3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedUiKitViewController extends _36c2.VMManagedBox<_40e3.UiKitViewController> {VMManagedUiKitViewController({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'id'
] = vmObject.id;
table  [
'setLayoutDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.setLayoutDirection(_36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
1
])), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'acceptGesture'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.acceptGesture(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'rejectGesture'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.rejectGesture(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.dispose(), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _40e3.UiKitViewController vmObject;

 }

void loadUiKitViewController({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_40e3.UiKitViewController>(boxer: ({required _40e3.UiKitViewController vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedUiKitViewController(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
