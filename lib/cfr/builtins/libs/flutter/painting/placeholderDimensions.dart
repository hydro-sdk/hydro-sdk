import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/text_painter.dart' as _fe5a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPlaceholderDimensions extends _36c2.VMManagedBox<_fe5a.PlaceholderDimensions> {VMManagedPlaceholderDimensions({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'size'
] = _36c2.maybeBoxObject<_a643.Size>(object: vmObject.size, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'alignment'
] = _a643.PlaceholderAlignment.values.indexWhere((x) { return x == vmObject.alignment; } );
table  [
'baselineOffset'
] = vmObject.baselineOffset;
table  [
'baseline'
] = _a643.TextBaseline.values.indexWhere((x) { return x == vmObject.baseline; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _fe5a.PlaceholderDimensions vmObject;

 }

class RTManagedPlaceholderDimensions extends _fe5a.PlaceholderDimensions implements _36c2.Box<_fe5a.PlaceholderDimensions> {RTManagedPlaceholderDimensions({_a643.TextBaseline? baseline, _fac9.double? baselineOffset, required _a643.PlaceholderAlignment alignment, required _a643.Size size, required this.table, required this.hydroState}) : super(baseline: baseline,baselineOffset: baselineOffset,alignment: alignment,size: size) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'size'
] = _36c2.maybeBoxObject(object: this.size, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'alignment'
] = _a643.PlaceholderAlignment.values.indexWhere((x) { return x == this.alignment; } );
table  [
'baselineOffset'
] = _36c2.maybeBoxObject(object: this.baselineOffset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'baseline'
] = _a643.TextBaseline.values.indexWhere((x) { return x == this.baseline; } );
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

_fe5a.PlaceholderDimensions unwrap() => this;
_fe5a.PlaceholderDimensions get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadPlaceholderDimensions({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'placeholderDimensions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedPlaceholderDimensions(table: luaCallerArguments  [
0
], hydroState: hydroState, baseline: _36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'baseline'
] : null), baselineOffset: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'baselineOffset'
] : null?.toDouble(), alignment: _36c2.maybeUnBoxEnum(values: _a643.PlaceholderAlignment.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'alignment'
] : null), size: _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'size'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_fe5a.PlaceholderDimensions>(boxer: ({required _fe5a.PlaceholderDimensions vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPlaceholderDimensions(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
