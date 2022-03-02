import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/widgets/binding.dart' as _3e19;
import 'package:flutter/src/widgets/router.dart' as _f6ef;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedWidgetsBindingObserver extends _36c2.VMManagedBox<_3e19.WidgetsBindingObserver> {VMManagedWidgetsBindingObserver({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'didPopRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.didPopRoute(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'didPushRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.didPushRoute(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'didPushRouteInformation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.didPushRouteInformation(_36c2.maybeUnBoxAndBuildArgument<_f6ef.RouteInformation, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'didChangeMetrics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didChangeMetrics();
return []; } );
table  [
'didChangeTextScaleFactor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didChangeTextScaleFactor();
return []; } );
table  [
'didChangePlatformBrightness'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didChangePlatformBrightness();
return []; } );
table  [
'didChangeLocales'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didChangeLocales(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Locale>?, _a643.Locale>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'didChangeAppLifecycleState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didChangeAppLifecycleState(_36c2.maybeUnBoxEnum(values: _a643.AppLifecycleState.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'didHaveMemoryPressure'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didHaveMemoryPressure();
return []; } );
table  [
'didChangeAccessibilityFeatures'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didChangeAccessibilityFeatures();
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _3e19.WidgetsBindingObserver vmObject;

 }

class RTManagedWidgetsBindingObserver extends _3e19.WidgetsBindingObserver implements _36c2.Box<_3e19.WidgetsBindingObserver> {RTManagedWidgetsBindingObserver({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_didPopRoute'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.didPopRoute(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_didPushRoute'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.didPushRoute(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_didPushRouteInformation'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.didPushRouteInformation(_36c2.maybeUnBoxAndBuildArgument<
            _f6ef.RouteInformation,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_didChangeMetrics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didChangeMetrics();
  return [];
});
table['_dart_didChangeTextScaleFactor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didChangeTextScaleFactor();
  return [];
});
table['_dart_didChangePlatformBrightness'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didChangePlatformBrightness();
  return [];
});
table['_dart_didChangeLocales'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didChangeLocales(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Locale>?, _a643.Locale>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_didChangeAppLifecycleState'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didChangeAppLifecycleState(_36c2.maybeUnBoxEnum(
      values: _a643.AppLifecycleState.values,
      boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_didHaveMemoryPressure'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didHaveMemoryPressure();
  return [];
});
table['_dart_didChangeAccessibilityFeatures'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didChangeAccessibilityFeatures();
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_3e19.WidgetsBindingObserver unwrap() => this;
_3e19.WidgetsBindingObserver get vmObject => this;
@_fac9.override _7de1.Future<_fac9.bool> didPopRoute() { 
_36c2.Closure closure = table["didPopRoute"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_fac9.bool> didPushRoute(route) { 
_36c2.Closure closure = table["didPushRoute"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_fac9.bool> didPushRouteInformation(routeInformation) { 
_36c2.Closure closure = table["didPushRouteInformation"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void didChangeMetrics() { 
_36c2.Closure closure = table["didChangeMetrics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didChangeTextScaleFactor() { 
_36c2.Closure closure = table["didChangeTextScaleFactor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didChangePlatformBrightness() { 
_36c2.Closure closure = table["didChangePlatformBrightness"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didChangeLocales(locales) { 
_36c2.Closure closure = table["didChangeLocales"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didChangeAppLifecycleState(state) { 
_36c2.Closure closure = table["didChangeAppLifecycleState"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didHaveMemoryPressure() { 
_36c2.Closure closure = table["didHaveMemoryPressure"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didChangeAccessibilityFeatures() { 
_36c2.Closure closure = table["didChangeAccessibilityFeatures"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadWidgetsBindingObserver({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'widgetsBindingObserver'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedWidgetsBindingObserver(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_3e19.WidgetsBindingObserver>(boxer: ({required _3e19.WidgetsBindingObserver vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedWidgetsBindingObserver(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
