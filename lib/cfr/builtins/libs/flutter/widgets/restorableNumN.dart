import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/restoration_properties.dart' as _28c9;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRestorableNumN extends _36c2.VMManagedBox<_28c9.RestorableNumN<_fac9.num?>> {VMManagedRestorableNumN({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'createDefaultValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.createDefaultValue(),]; } );
table  [
'didUpdateValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didUpdateValue(luaCallerArguments  [
1
]);
return []; } );
table  [
'fromPrimitives'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.fromPrimitives(_36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'toPrimitives'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.toPrimitives();if(returnValue!= null){return [_36c2.maybeBoxObject<_fac9.Object?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'initWithValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.initWithValue(luaCallerArguments  [
1
]);
return []; } );
table  [
'getValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.value,]; } );
table  [
'setValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.value=(luaCallerArguments  [
1
]);
return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'getEnabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.enabled,]; } );
table  [
'addListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.addListener(() => unpackedlistener.dispatch([luaCallerArguments[0],],parentState:hydroState,));
return []; } );
table  [
'removeListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.removeListener(() => unpackedlistener.dispatch([luaCallerArguments[0],],parentState:hydroState,));
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _28c9.RestorableNumN<_fac9.num?> vmObject;

 }

class RTManagedRestorableNumN extends _28c9.RestorableNumN implements _36c2.Box<_28c9.RestorableNumN> {RTManagedRestorableNumN(_fac9.num? defaultValue, {required this.table, required this.hydroState}) : super(defaultValue,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_createDefaultValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.createDefaultValue()];
});
table['_dart_didUpdateValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didUpdateValue(luaCallerArguments[1]);
  return [];
});
table['_dart_fromPrimitives'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    super.fromPrimitives(
        _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
  ];
});
table['_dart_toPrimitives'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toPrimitives(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_initWithValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.initWithValue(luaCallerArguments[1]);
  return [];
});
table['_dart_getValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.value];
});
table['_dart_setValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.value = (luaCallerArguments[1]);
  return [];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
});
table['_dart_getEnabled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.enabled];
});
table['_dart_getState'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.state];
});
table['_dart_getIsRegistered'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isRegistered];
});
table['_dart_addListener'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedlistener = luaCallerArguments[1];
  super.addListener(() => unpackedlistener.dispatch(
        [
          luaCallerArguments[0],
        ],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_removeListener'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedlistener = luaCallerArguments[1];
  super.removeListener(() => unpackedlistener.dispatch(
        [
          luaCallerArguments[0],
        ],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_notifyListeners'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.notifyListeners();
  return [];
});
table['_dart_getHasListeners'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasListeners];
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

_28c9.RestorableNumN unwrap() => this;
_28c9.RestorableNumN get vmObject => this;
@_fac9.override _fac9.num? createDefaultValue() { 
_36c2.Closure closure = table["createDefaultValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didUpdateValue(oldValue) { 
_36c2.Closure closure = table["didUpdateValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.num? fromPrimitives(serialized) { 
_36c2.Closure closure = table["fromPrimitives"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.Object? toPrimitives() { 
_36c2.Closure closure = table["toPrimitives"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void initWithValue(value) { super.initWithValue(value);
_36c2.Closure closure = table["initWithValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.num? get value { 
_36c2.Closure closure = table["getValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set value(newValue) { 
_36c2.Closure closure = table["setValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get enabled { 
_36c2.Closure closure = table["getEnabled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e2dc.State<_e2dc.StatefulWidget> get state { 
_36c2.Closure closure = table["getState"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_e2dc.StatefulWidget>, _e2dc.StatefulWidget>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get isRegistered { 
_36c2.Closure closure = table["getIsRegistered"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void addListener(listener) { 
_36c2.Closure closure = table["addListener"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void removeListener(listener) { 
_36c2.Closure closure = table["removeListener"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void notifyListeners() { 
_36c2.Closure closure = table["notifyListeners"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasListeners { 
_36c2.Closure closure = table["getHasListeners"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadRestorableNumN({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'restorableNumN'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedRestorableNumN(luaCallerArguments  [
1
], table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_28c9.RestorableNumN>(boxer: ({required _28c9.RestorableNumN vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRestorableNumN(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
