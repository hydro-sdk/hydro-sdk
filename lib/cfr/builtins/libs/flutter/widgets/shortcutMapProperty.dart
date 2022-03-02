import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/widgets/actions.dart' as _c0f4;
import 'package:flutter/src/widgets/shortcuts.dart' as _1710;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedShortcutMapProperty extends _36c2.VMManagedBox<_1710.ShortcutMapProperty> {VMManagedShortcutMapProperty({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'expandableValue'
] = vmObject.expandableValue;
table  [
'allowWrap'
] = vmObject.allowWrap;
table  [
'allowNameWrap'
] = vmObject.allowNameWrap;
table  [
'ifNull'
] = vmObject.ifNull;
table  [
'ifEmpty'
] = vmObject.ifEmpty;
table  [
'tooltip'
] = vmObject.tooltip;
table  [
'missingIfNull'
] = vmObject.missingIfNull;
table  [
'defaultValue'
] = _36c2.maybeBoxObject<_fac9.Object?>(object: vmObject.defaultValue, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'name'
] = vmObject.name;
table  [
'showSeparator'
] = vmObject.showSeparator;
table  [
'showName'
] = vmObject.showName;
table  [
'linePrefix'
] = vmObject.linePrefix;
table  [
'style'
] = _eaf3.DiagnosticsTreeStyle.values.indexWhere((x) { return x == vmObject.style; } );
table  [
'getValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Map>(object: vmObject.value, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'valueToString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.valueToString(parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<_eaf3.TextTreeConfiguration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'parentConfiguration'
] : null, parentState: hydroState)),]; } );
table  [
'toJsonMap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Map>(object: vmObject.toJsonMap(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsSerializationDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toDescription'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toDescription(parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<_eaf3.TextTreeConfiguration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'parentConfiguration'
] : null, parentState: hydroState)),]; } );
table  [
'getProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.getProperties().map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.getChildren().map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getPropertyType'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Type>(object: vmObject.propertyType, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getException'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.exception;if(returnValue!= null){return [_36c2.maybeBoxObject<_fac9.Object?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getIsInteresting'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isInteresting,]; } );
table  [
'getLevel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_eaf3.DiagnosticLevel.values.indexWhere((x) { return x == vmObject.level; } ),]; } );
table  [
'isFiltered'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isFiltered(_36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments  [
1
])),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.toString(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null), parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<_eaf3.TextTreeConfiguration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'parentConfiguration'
] : null, parentState: hydroState)),]; } );
table  [
'toStringDeep'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [vmObject.toStringDeep(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null), parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<_eaf3.TextTreeConfiguration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'parentConfiguration'
] : null, parentState: hydroState), prefixLineOne: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'prefixLineOne'
] : null, prefixOtherLines: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'prefixOtherLines'
] : null),]; } );
table  [
'getEmptyBodyDescription'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.emptyBodyDescription;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'getAllowWrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.allowWrap,]; } );
table  [
'getAllowNameWrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.allowNameWrap,]; } );
table  [
'getAllowTruncate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.allowTruncate,]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _1710.ShortcutMapProperty vmObject;

 }

class RTManagedShortcutMapProperty extends _1710.ShortcutMapProperty implements _36c2.Box<_1710.ShortcutMapProperty> {RTManagedShortcutMapProperty(_fac9.String name$, _fac9.Map<_1710.ShortcutActivator,_c0f4.Intent> value$, {required _fac9.Object defaultValue, _fac9.String? description, required _eaf3.DiagnosticLevel level, required _fac9.bool showName, required this.table, required this.hydroState}) : super(name$,value$,defaultValue: defaultValue,description: description,level: level,showName: showName) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'expandableValue'
] = _36c2.maybeBoxObject(object: expandableValue, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'allowWrap'
] = _36c2.maybeBoxObject(object: allowWrap, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'allowNameWrap'
] = _36c2.maybeBoxObject(object: allowNameWrap, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'ifNull'
] = _36c2.maybeBoxObject(object: ifNull, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'ifEmpty'
] = _36c2.maybeBoxObject(object: ifEmpty, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'tooltip'
] = _36c2.maybeBoxObject(object: tooltip, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'missingIfNull'
] = _36c2.maybeBoxObject(object: missingIfNull, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'defaultValue'
] = _36c2.maybeBoxObject(object: this.defaultValue, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'name'
] = _36c2.maybeBoxObject(object: this.name, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'showSeparator'
] = _36c2.maybeBoxObject(object: showSeparator, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'showName'
] = _36c2.maybeBoxObject(object: this.showName, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'linePrefix'
] = _36c2.maybeBoxObject(object: linePrefix, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'style'
] = _eaf3.DiagnosticsTreeStyle.values.indexWhere((x) { return x == style; } );
table['_dart_getValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.value];
});
table['_dart_valueToString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.valueToString(
            parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<
                    _eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['parentConfiguration']
                    : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toJsonMap'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toJsonMap(_36c2.maybeUnBoxAndBuildArgument<
            _eaf3.DiagnosticsSerializationDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toDescription'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toDescription(
            parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<
                    _eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['parentConfiguration']
                    : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getProperties(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getChildren(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getPropertyType'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.propertyType];
});
table['_dart_getException'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.exception];
});
table['_dart_getIsInteresting'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isInteresting];
});
table['_dart_getLevel'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.level];
});
table['_dart_isFiltered'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.isFiltered(_36c2.maybeUnBoxEnum(
            values: _eaf3.DiagnosticLevel.values,
            boxedEnum: luaCallerArguments[1])),
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
                    : null),
            parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<
                    _eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['parentConfiguration']
                    : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toStringDeep'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            parentConfiguration:
                _36c2.maybeUnBoxAndBuildArgument<_eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState),
            prefixLineOne: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixLineOne'] : null,
                parentState: hydroState),
            prefixOtherLines: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixOtherLines'] : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getEmptyBodyDescription'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.emptyBodyDescription];
});
table['_dart_getAllowWrap'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.allowWrap];
});
table['_dart_getAllowNameWrap'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.allowNameWrap];
});
table['_dart_getAllowTruncate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.allowTruncate];
});
table['_dart_getTextTreeConfiguration'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.textTreeConfiguration];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_1710.ShortcutMapProperty unwrap() => this;
_1710.ShortcutMapProperty get vmObject => this;
@_fac9.override _fac9.Map<_1710.ShortcutActivator,_c0f4.Intent> get value { 
_36c2.Closure closure = table["getValue"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_1710.ShortcutActivator,_c0f4.Intent>, _1710.ShortcutActivator>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String valueToString({_eaf3.TextTreeConfiguration? parentConfiguration}) { 
_36c2.Closure closure = table["valueToString"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.Map<_fac9.String,_fac9.Object?> toJsonMap(delegate) { super.toJsonMap(delegate);
_36c2.Closure closure = table["toJsonMap"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.Object?>, _fac9.String>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toDescription({_eaf3.TextTreeConfiguration? parentConfiguration}) { 
_36c2.Closure closure = table["toDescription"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> getProperties() { 
_36c2.Closure closure = table["getProperties"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> getChildren() { 
_36c2.Closure closure = table["getChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.Type get propertyType { 
_36c2.Closure closure = table["getPropertyType"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Type, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.Object? get exception { 
_36c2.Closure closure = table["getException"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get isInteresting { 
_36c2.Closure closure = table["getIsInteresting"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticLevel get level { 
_36c2.Closure closure = table["getLevel"];
return _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _fac9.bool isFiltered(minLevel) { 
_36c2.Closure closure = table["isFiltered"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info, _eaf3.TextTreeConfiguration? parentConfiguration}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringDeep({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug, _eaf3.TextTreeConfiguration? parentConfiguration, _fac9.String prefixLineOne = '', _fac9.String? prefixOtherLines}) { 
_36c2.Closure closure = table["toStringDeep"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String? get emptyBodyDescription { 
_36c2.Closure closure = table["getEmptyBodyDescription"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get allowWrap { 
_36c2.Closure closure = table["getAllowWrap"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get allowNameWrap { 
_36c2.Closure closure = table["getAllowNameWrap"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get allowTruncate { 
_36c2.Closure closure = table["getAllowTruncate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.TextTreeConfiguration? get textTreeConfiguration { 
_36c2.Closure closure = table["getTextTreeConfiguration"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.TextTreeConfiguration?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadShortcutMapProperty({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'shortcutMapProperty'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 





return  [RTManagedShortcutMapProperty(luaCallerArguments  [
1
], _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_1710.ShortcutActivator,_c0f4.Intent>, _1710.ShortcutActivator>(luaCallerArguments  [
2
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState, defaultValue: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'defaultValue'
] : null, parentState: hydroState), description: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'description'
] : null, level: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'level'
] : null), showName: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'showName'
] : null)]; } );
_36c2.registerBoxer<_1710.ShortcutMapProperty>(boxer: ({required _1710.ShortcutMapProperty vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedShortcutMapProperty(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
