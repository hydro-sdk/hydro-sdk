import 'dart:core' as _fac9;

import 'package:flutter/src/services/keyboard_key.dart' as _e468;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;
import 'package:flutter/src/services/raw_keyboard_linux.dart' as _a336;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGLFWKeyHelper extends _36c2.VMManagedBox<_a336.GLFWKeyHelper> {VMManagedGLFWKeyHelper({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getDebugToolkit'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugToolkit,]; } );
table  [
'isModifierPressed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return [vmObject.isModifierPressed(_36c2.maybeUnBoxEnum(values: _94e8.ModifierKey.values, boxedEnum: luaCallerArguments  [
1
]), luaCallerArguments  [
2
], side: _36c2.maybeUnBoxEnum(values: _94e8.KeyboardSide.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'side'
] : null), isDown: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'isDown'
] : null, keyCode: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'keyCode'
] : null),]; } );
table  [
'getModifierSide'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_94e8.KeyboardSide.values.indexWhere((x) { return x == vmObject.getModifierSide(_36c2.maybeUnBoxEnum(values: _94e8.ModifierKey.values, boxedEnum: luaCallerArguments  [
1
])); } ),]; } );
table  [
'numpadKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.numpadKey(luaCallerArguments  [
1
]);if(returnValue!= null){return [_36c2.maybeBoxObject<_e468.LogicalKeyboardKey?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'logicalKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.logicalKey(luaCallerArguments  [
1
]);if(returnValue!= null){return [_36c2.maybeBoxObject<_e468.LogicalKeyboardKey?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getPlatformPlane'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.platformPlane,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _a336.GLFWKeyHelper vmObject;

 }

class RTManagedGLFWKeyHelper extends _a336.GLFWKeyHelper implements _36c2.Box<_a336.GLFWKeyHelper> {RTManagedGLFWKeyHelper({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getDebugToolkit'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugToolkit];
});
table['_dart_isModifierPressed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.isModifierPressed(
            _36c2.maybeUnBoxEnum(
                values: _94e8.ModifierKey.values,
                boxedEnum: luaCallerArguments[1]),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            side: _36c2.maybeUnBoxEnum(
                values: _94e8.KeyboardSide.values,
                boxedEnum: luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['side']
                    : null),
            isDown: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                luaCallerArguments.length >= 4 ? luaCallerArguments[3]['isDown'] : null,
                parentState: hydroState),
            keyCode: _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['keyCode'] : null, parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getModifierSide'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _94e8.KeyboardSide.values.indexWhere((x) {
      return x ==
          super.getModifierSide(_36c2.maybeUnBoxEnum(
              values: _94e8.ModifierKey.values,
              boxedEnum: luaCallerArguments[1]));
    })
  ];
});
table['_dart_numpadKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.numpadKey(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_logicalKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.logicalKey(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getPlatformPlane'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.platformPlane];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_a336.GLFWKeyHelper unwrap() => this;
_a336.GLFWKeyHelper get vmObject => this;
@_fac9.override _fac9.String get debugToolkit { 
_36c2.Closure closure = table["getDebugToolkit"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool isModifierPressed(key, modifiers, {_94e8.KeyboardSide side = _94e8.KeyboardSide.any, required _fac9.bool isDown, required _fac9.int keyCode}) { 
_36c2.Closure closure = table["isModifierPressed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _94e8.KeyboardSide getModifierSide(key) { 
_36c2.Closure closure = table["getModifierSide"];
return _36c2.maybeUnBoxEnum(values: _94e8.KeyboardSide.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _e468.LogicalKeyboardKey? numpadKey(keyCode) { 
_36c2.Closure closure = table["numpadKey"];
return _36c2.maybeUnBoxAndBuildArgument<_e468.LogicalKeyboardKey?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e468.LogicalKeyboardKey? logicalKey(keyCode) { 
_36c2.Closure closure = table["logicalKey"];
return _36c2.maybeUnBoxAndBuildArgument<_e468.LogicalKeyboardKey?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get platformPlane { 
_36c2.Closure closure = table["getPlatformPlane"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadGLFWKeyHelper({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'gLFWKeyHelper'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedGLFWKeyHelper(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_a336.GLFWKeyHelper>(boxer: ({required _a336.GLFWKeyHelper vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedGLFWKeyHelper(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
