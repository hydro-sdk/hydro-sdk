import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/services/hardware_keyboard.dart' as _9e29;
import 'package:flutter/src/services/keyboard_key.dart' as _e468;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedKeyRepeatEvent extends _36c2.VMManagedBox<_9e29.KeyRepeatEvent> {VMManagedKeyRepeatEvent({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'physicalKey'
] = _36c2.maybeBoxObject<_e468.PhysicalKeyboardKey>(object: vmObject.physicalKey, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'logicalKey'
] = _36c2.maybeBoxObject<_e468.LogicalKeyboardKey>(object: vmObject.logicalKey, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'character'
] = vmObject.character;
table  [
'timeStamp'
] = _36c2.maybeBoxObject<_fac9.Duration>(object: vmObject.timeStamp, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'synthesized'
] = vmObject.synthesized;
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
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

final _9e29.KeyRepeatEvent vmObject;

 }

class RTManagedKeyRepeatEvent extends _9e29.KeyRepeatEvent implements _36c2.Box<_9e29.KeyRepeatEvent> {RTManagedKeyRepeatEvent({_fac9.String? character, required _e468.LogicalKeyboardKey logicalKey, required _e468.PhysicalKeyboardKey physicalKey, required _fac9.Duration timeStamp, required this.table, required this.hydroState}) : super(character: character,logicalKey: logicalKey,physicalKey: physicalKey,timeStamp: timeStamp) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'physicalKey'
] = _36c2.maybeBoxObject(object: this.physicalKey, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'logicalKey'
] = _36c2.maybeBoxObject(object: this.logicalKey, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'character'
] = _36c2.maybeBoxObject(object: this.character, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'timeStamp'
] = _36c2.maybeBoxObject(object: this.timeStamp, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'synthesized'
] = _36c2.maybeBoxObject(object: synthesized, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
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

_9e29.KeyRepeatEvent unwrap() => this;
_9e29.KeyRepeatEvent get vmObject => this;
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
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
void loadKeyRepeatEvent({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'keyRepeatEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedKeyRepeatEvent(table: luaCallerArguments  [
0
], hydroState: hydroState, character: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'character'
] : null, logicalKey: _36c2.maybeUnBoxAndBuildArgument<_e468.LogicalKeyboardKey, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'logicalKey'
] : null, parentState: hydroState), physicalKey: _36c2.maybeUnBoxAndBuildArgument<_e468.PhysicalKeyboardKey, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'physicalKey'
] : null, parentState: hydroState), timeStamp: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'timeStamp'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_9e29.KeyRepeatEvent>(boxer: ({required _9e29.KeyRepeatEvent vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedKeyRepeatEvent(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
