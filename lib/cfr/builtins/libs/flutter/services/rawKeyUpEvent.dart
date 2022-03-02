import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/services/keyboard_key.dart' as _e468;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRawKeyUpEvent extends _36c2.VMManagedBox<_94e8.RawKeyUpEvent> {VMManagedRawKeyUpEvent({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'character'
] = vmObject.character;
table  [
'data'
] = _36c2.maybeBoxObject<_94e8.RawKeyEventData>(object: vmObject.data, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'isKeyPressed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isKeyPressed(_36c2.maybeUnBoxAndBuildArgument<_e468.LogicalKeyboardKey, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getIsControlPressed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isControlPressed,]; } );
table  [
'getIsShiftPressed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isShiftPressed,]; } );
table  [
'getIsAltPressed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isAltPressed,]; } );
table  [
'getIsMetaPressed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isMetaPressed,]; } );
table  [
'getPhysicalKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e468.PhysicalKeyboardKey>(object: vmObject.physicalKey, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getLogicalKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e468.LogicalKeyboardKey>(object: vmObject.logicalKey, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } );
table  [
'toDiagnosticsNode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.toDiagnosticsNode(name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null, style: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticsTreeStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'style'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _94e8.RawKeyUpEvent vmObject;

 }

class RTManagedRawKeyUpEvent extends _94e8.RawKeyUpEvent implements _36c2.Box<_94e8.RawKeyUpEvent> {RTManagedRawKeyUpEvent({_fac9.String? character, required _94e8.RawKeyEventData data, required this.table, required this.hydroState}) : super(character: character,data: data) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'character'
] = _36c2.maybeBoxObject(object: this.character, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'data'
] = _36c2.maybeBoxObject(object: this.data, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_isKeyPressed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.isKeyPressed(_36c2.maybeUnBoxAndBuildArgument<
            _e468.LogicalKeyboardKey,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_getIsControlPressed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isControlPressed];
});
table['_dart_getIsShiftPressed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isShiftPressed];
});
table['_dart_getIsAltPressed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isAltPressed];
});
table['_dart_getIsMetaPressed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isMetaPressed];
});
table['_dart_getPhysicalKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.physicalKey];
});
table['_dart_getLogicalKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.logicalKey];
});
table['_dart_toStringShort'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringShort(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toDiagnosticsNode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toDiagnosticsNode(
            name:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['name']
                        : null,
                    parentState: hydroState),
            style: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticsTreeStyle.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['style']
                    : null)),
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

_94e8.RawKeyUpEvent unwrap() => this;
_94e8.RawKeyUpEvent get vmObject => this;
@_fac9.override _fac9.bool isKeyPressed(key) { 
_36c2.Closure closure = table["isKeyPressed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isControlPressed { 
_36c2.Closure closure = table["getIsControlPressed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isShiftPressed { 
_36c2.Closure closure = table["getIsShiftPressed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isAltPressed { 
_36c2.Closure closure = table["getIsAltPressed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isMetaPressed { 
_36c2.Closure closure = table["getIsMetaPressed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e468.PhysicalKeyboardKey get physicalKey { 
_36c2.Closure closure = table["getPhysicalKey"];
return _36c2.maybeUnBoxAndBuildArgument<_e468.PhysicalKeyboardKey, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e468.LogicalKeyboardKey get logicalKey { 
_36c2.Closure closure = table["getLogicalKey"];
return _36c2.maybeUnBoxAndBuildArgument<_e468.LogicalKeyboardKey, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadRawKeyUpEvent({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'rawKeyUpEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedRawKeyUpEvent(table: luaCallerArguments  [
0
], hydroState: hydroState, character: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'character'
] : null, data: _36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyEventData, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'data'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_94e8.RawKeyUpEvent>(boxer: ({required _94e8.RawKeyUpEvent vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRawKeyUpEvent(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
