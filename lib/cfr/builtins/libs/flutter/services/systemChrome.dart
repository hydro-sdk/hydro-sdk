import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/system_chrome.dart' as _8d60;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSystemChrome extends _36c2.VMManagedBox<_8d60.SystemChrome> {VMManagedSystemChrome({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {  }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8d60.SystemChrome vmObject;

 }

void loadSystemChrome({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'systemChromeSetPreferredOrientations'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: _8d60.SystemChrome.setPreferredOrientations(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_8d60.DeviceOrientation>, _8d60.DeviceOrientation>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'systemChromeSetApplicationSwitcherDescription'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: _8d60.SystemChrome.setApplicationSwitcherDescription(_36c2.maybeUnBoxAndBuildArgument<_8d60.ApplicationSwitcherDescription, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'systemChromeSetEnabledSystemUIOverlays'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: _8d60.SystemChrome.setEnabledSystemUIOverlays(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_8d60.SystemUiOverlay>, _8d60.SystemUiOverlay>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'systemChromeSetEnabledSystemUIMode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: _8d60.SystemChrome.setEnabledSystemUIMode(_36c2.maybeUnBoxEnum(values: _8d60.SystemUiMode.values, boxedEnum: luaCallerArguments  [
1
]), overlays: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_8d60.SystemUiOverlay>?, _8d60.SystemUiOverlay>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'overlays'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'systemChromeSetSystemUIChangeCallback'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedcallback=luaCallerArguments  [
1
];return [_36c2.maybeBoxObject<_7de1.Future>(object: _8d60.SystemChrome.setSystemUIChangeCallback(unpackedcallback != null ? (systemOverlaysAreVisible) => _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(unpackedcallback.dispatch([luaCallerArguments[0],systemOverlaysAreVisible],parentState:hydroState,)[0], parentState: hydroState) : null ), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'systemChromeRestoreSystemUIOverlays'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: _8d60.SystemChrome.restoreSystemUIOverlays(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'systemChromeSetSystemUIOverlayStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _8d60.SystemChrome.setSystemUIOverlayStyle(_36c2.maybeUnBoxAndBuildArgument<_8d60.SystemUiOverlayStyle, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'systemChromeLatestStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = _8d60.SystemChrome.latestStyle;if(returnValue!= null){return [_36c2.maybeBoxObject<_8d60.SystemUiOverlayStyle?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_8d60.SystemChrome>(boxer: ({required _8d60.SystemChrome vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSystemChrome(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
