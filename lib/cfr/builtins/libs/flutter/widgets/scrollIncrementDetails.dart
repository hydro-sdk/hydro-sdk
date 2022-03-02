import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;
import 'package:flutter/src/widgets/scrollable.dart' as _538d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollIncrementDetails extends _36c2.VMManagedBox<_538d.ScrollIncrementDetails> {VMManagedScrollIncrementDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'type'
] = _538d.ScrollIncrementType.values.indexWhere((x) { return x == vmObject.type; } );
table  [
'metrics'
] = _36c2.maybeBoxObject<_96ae.ScrollMetrics>(object: vmObject.metrics, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _538d.ScrollIncrementDetails vmObject;

 }

class RTManagedScrollIncrementDetails extends _538d.ScrollIncrementDetails implements _36c2.Box<_538d.ScrollIncrementDetails> {RTManagedScrollIncrementDetails({required _96ae.ScrollMetrics metrics, required _538d.ScrollIncrementType type, required this.table, required this.hydroState}) : super(metrics: metrics,type: type) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'type'
] = _538d.ScrollIncrementType.values.indexWhere((x) { return x == this.type; } );
table  [
'metrics'
] = _36c2.maybeBoxObject(object: this.metrics, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_538d.ScrollIncrementDetails unwrap() => this;
_538d.ScrollIncrementDetails get vmObject => this;
 }
void loadScrollIncrementDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'scrollIncrementDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedScrollIncrementDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, metrics: _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'metrics'
] : null, parentState: hydroState), type: _36c2.maybeUnBoxEnum(values: _538d.ScrollIncrementType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'type'
] : null))]; } );
_36c2.registerBoxer<_538d.ScrollIncrementDetails>(boxer: ({required _538d.ScrollIncrementDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedScrollIncrementDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
