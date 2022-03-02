import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/alignment.dart' as _ca85;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAlignmentGeometry extends _36c2.VMManagedBox<_ca85.AlignmentGeometry> {VMManagedAlignmentGeometry({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_ca85.AlignmentGeometry>(object: vmObject.add(_36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'resolve'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_ca85.Alignment>(object: vmObject.resolve(_36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
1
])), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _ca85.AlignmentGeometry vmObject;

 }

void loadAlignmentGeometry({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'alignmentGeometryLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _ca85.AlignmentGeometry.lerp(_36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_ca85.AlignmentGeometry?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_ca85.AlignmentGeometry>(boxer: ({required _ca85.AlignmentGeometry vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAlignmentGeometry(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
