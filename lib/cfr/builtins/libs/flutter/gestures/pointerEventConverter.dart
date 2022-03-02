import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/converter.dart' as _8af3;
import 'package:flutter/src/gestures/events.dart' as _0e77;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPointerEventConverter extends _36c2.VMManagedBox<_8af3.PointerEventConverter> {VMManagedPointerEventConverter({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {  }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8af3.PointerEventConverter vmObject;

 }

void loadPointerEventConverter({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'pointerEventConverterExpand'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_fac9.Iterable>(object: _8af3.PointerEventConverter.expand(_36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_a643.PointerData>, _a643.PointerData>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
_36c2.registerBoxer<_8af3.PointerEventConverter>(boxer: ({required _8af3.PointerEventConverter vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPointerEventConverter(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
