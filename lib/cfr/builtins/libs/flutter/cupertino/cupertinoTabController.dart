import 'dart:core' as _fac9;

import 'package:flutter/src/cupertino/tab_scaffold.dart' as _9550;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoTabController extends _36c2.VMManagedBox<_9550.CupertinoTabController> {VMManagedCupertinoTabController({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getIndex'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.index,]; } );
table  [
'setIndex'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.index=(luaCallerArguments  [
1
]);
return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
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

final _9550.CupertinoTabController vmObject;

 }

class RTManagedCupertinoTabController extends _9550.CupertinoTabController implements _36c2.Box<_9550.CupertinoTabController> {RTManagedCupertinoTabController({required _fac9.int initialIndex, required this.table, required this.hydroState}) : super(initialIndex: initialIndex) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getIndex'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.index];
});
table['_dart_setIndex'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.index = (_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
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

_9550.CupertinoTabController unwrap() => this;
_9550.CupertinoTabController get vmObject => this;
@_fac9.override _fac9.int get index { 
_36c2.Closure closure = table["getIndex"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set index(value) { 
_36c2.Closure closure = table["setIndex"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
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
void loadCupertinoTabController({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'cupertinoTabController'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedCupertinoTabController(table: luaCallerArguments  [
0
], hydroState: hydroState, initialIndex: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'initialIndex'
] : null)]; } );
_36c2.registerBoxer<_9550.CupertinoTabController>(boxer: ({required _9550.CupertinoTabController vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedCupertinoTabController(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
