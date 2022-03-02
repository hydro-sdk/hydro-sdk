import 'dart:core' as _fac9;

import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/widgets/scroll_activity.dart' as _ca8b;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollActivityDelegate extends _36c2.VMManagedBox<_ca8b.ScrollActivityDelegate> {VMManagedScrollActivityDelegate({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getAxisDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.AxisDirection.values.indexWhere((x) { return x == vmObject.axisDirection; } ),]; } );
table  [
'setPixels'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.setPixels(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'applyUserOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.applyUserOffset(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'goIdle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.goIdle();
return []; } );
table  [
'goBallistic'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.goBallistic(luaCallerArguments  [
1
]?.toDouble());
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _ca8b.ScrollActivityDelegate vmObject;

 }

void loadScrollActivityDelegate({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_ca8b.ScrollActivityDelegate>(boxer: ({required _ca8b.ScrollActivityDelegate vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedScrollActivityDelegate(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
