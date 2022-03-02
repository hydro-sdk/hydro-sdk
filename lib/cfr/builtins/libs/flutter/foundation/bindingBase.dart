import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/binding.dart' as _8f1c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBindingBase extends _36c2.VMManagedBox<_8f1c.BindingBase> {VMManagedBindingBase({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getWindow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.SingletonFlutterWindow>(object: vmObject.window, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getPlatformDispatcher'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.PlatformDispatcher>(object: vmObject.platformDispatcher, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'reassembleApplication'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.reassembleApplication(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8f1c.BindingBase vmObject;

 }

class RTManagedBindingBase extends _8f1c.BindingBase implements _36c2.Box<_8f1c.BindingBase> {RTManagedBindingBase({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getWindow'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.window];
});
table['_dart_getPlatformDispatcher'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.platformDispatcher];
});
table['_dart_initInstances'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.initInstances();
  return [];
});
table['_dart_initServiceExtensions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.initServiceExtensions();
  return [];
});
table['_dart_getLocked'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.locked];
});
table['_dart_lockEvents'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedcallback = luaCallerArguments[1];
  return [
    _36c2.maybeBoxObject(
        object: super.lockEvents(
            () => _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                unpackedcallback.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )[0],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_unlocked'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.unlocked();
  return [];
});
table['_dart_reassembleApplication'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.reassembleApplication(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_performReassemble'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.performReassemble(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_registerSignalServiceExtension'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedcallback =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['callback'] : null;
  super.registerSignalServiceExtension(
      callback: () =>
          _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
              unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
      name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['name'] : null,
          parentState: hydroState));
  return [];
});
table['_dart_registerBoolServiceExtension'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedgetter =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['getter'] : null;

  _36c2.Closure unpackedsetter =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['setter'] : null;
  super.registerBoolServiceExtension(
      getter: () => _36c2
          .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
              unpackedgetter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
      name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['name'] : null,
          parentState: hydroState),
      setter: (value) =>
          _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
              unpackedsetter.dispatch(
                [luaCallerArguments[0], value],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
  return [];
});
table['_dart_registerNumericServiceExtension'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedgetter =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['getter'] : null;

  _36c2.Closure unpackedsetter =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['setter'] : null;
  super.registerNumericServiceExtension(
      getter: () => _36c2
          .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.double>, _fac9.double>(
              unpackedgetter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
      name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['name'] : null,
          parentState: hydroState),
      setter: (value) =>
          _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
              unpackedsetter.dispatch(
                [luaCallerArguments[0], value],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
  return [];
});
table['_dart_postEvent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.postEvent(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String, _fac9.dynamic>,
          _fac9.String>(luaCallerArguments[2], parentState: hydroState));
  return [];
});
table['_dart_registerStringServiceExtension'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedgetter =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['getter'] : null;

  _36c2.Closure unpackedsetter =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['setter'] : null;
  super.registerStringServiceExtension(
      getter: () => _36c2
          .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.String>, _fac9.String>(
              unpackedgetter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
      name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['name'] : null,
          parentState: hydroState),
      setter: (value) =>
          _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
              unpackedsetter.dispatch(
                [luaCallerArguments[0], value],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
  return [];
});
table['_dart_registerServiceExtension'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedcallback =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['callback'] : null;
  super.registerServiceExtension(
      callback: (parameters) => _36c2.maybeUnBoxAndBuildArgument<
              _7de1.Future<_fac9.Map<_fac9.String, _fac9.dynamic>>,
              _fac9.Map<_fac9.String, _fac9.dynamic>>(
          unpackedcallback.dispatch(
            [luaCallerArguments[0], parameters],
            parentState: hydroState,
          )[0],
          parentState: hydroState),
      name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['name'] : null,
          parentState: hydroState));
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
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_8f1c.BindingBase unwrap() => this;
_8f1c.BindingBase get vmObject => this;
@_fac9.override _a643.SingletonFlutterWindow get window { 
_36c2.Closure closure = table["getWindow"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.SingletonFlutterWindow, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.PlatformDispatcher get platformDispatcher { 
_36c2.Closure closure = table["getPlatformDispatcher"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.PlatformDispatcher, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void initInstances() { super.initInstances();
_36c2.Closure closure = table["initInstances"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void initServiceExtensions() { super.initServiceExtensions();
_36c2.Closure closure = table["initServiceExtensions"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get locked { 
_36c2.Closure closure = table["getLocked"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7de1.Future<void> lockEvents(callback) { 
_36c2.Closure closure = table["lockEvents"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void unlocked() { super.unlocked();
_36c2.Closure closure = table["unlocked"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7de1.Future<void> reassembleApplication() { 
_36c2.Closure closure = table["reassembleApplication"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<void> performReassemble() { super.performReassemble();
_36c2.Closure closure = table["performReassemble"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void registerSignalServiceExtension({required _7de1.Future<void> Function() callback, required _fac9.String name}) { 
_36c2.Closure closure = table["registerSignalServiceExtension"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void registerBoolServiceExtension({required _7de1.Future<_fac9.bool> Function() getter, required _fac9.String name, required _7de1.Future<void> Function(_fac9.bool value) setter}) { 
_36c2.Closure closure = table["registerBoolServiceExtension"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void registerNumericServiceExtension({required _7de1.Future<_fac9.double> Function() getter, required _fac9.String name, required _7de1.Future<void> Function(_fac9.double value) setter}) { 
_36c2.Closure closure = table["registerNumericServiceExtension"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void postEvent(eventKind, eventData) { 
_36c2.Closure closure = table["postEvent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void registerStringServiceExtension({required _7de1.Future<_fac9.String> Function() getter, required _fac9.String name, required _7de1.Future<void> Function(_fac9.String value) setter}) { 
_36c2.Closure closure = table["registerStringServiceExtension"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void registerServiceExtension({required _7de1.Future<_fac9.Map<_fac9.String,_fac9.dynamic>> Function(_fac9.Map<_fac9.String,_fac9.String> parameters) callback, required _fac9.String name}) { 
_36c2.Closure closure = table["registerServiceExtension"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadBindingBase({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'bindingBase'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedBindingBase(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_8f1c.BindingBase>(boxer: ({required _8f1c.BindingBase vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBindingBase(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
