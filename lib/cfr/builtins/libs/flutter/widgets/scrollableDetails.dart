import 'dart:core' as _fac9;

import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/widgets/scroll_controller.dart' as _9585;
import 'package:flutter/src/widgets/scrollable.dart' as _538d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollableDetails extends _36c2.VMManagedBox<_538d.ScrollableDetails> {VMManagedScrollableDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'direction'
] = _487f.AxisDirection.values.indexWhere((x) { return x == vmObject.direction; } );
table  [
'controller'
] = _36c2.maybeBoxObject<_9585.ScrollController>(object: vmObject.controller, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _538d.ScrollableDetails vmObject;

 }

class RTManagedScrollableDetails extends _538d.ScrollableDetails implements _36c2.Box<_538d.ScrollableDetails> {RTManagedScrollableDetails({required _9585.ScrollController controller, required _487f.AxisDirection direction, required this.table, required this.hydroState}) : super(controller: controller,direction: direction) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'direction'
] = _487f.AxisDirection.values.indexWhere((x) { return x == this.direction; } );
table  [
'controller'
] = _36c2.maybeBoxObject(object: this.controller, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_538d.ScrollableDetails unwrap() => this;
_538d.ScrollableDetails get vmObject => this;
 }
void loadScrollableDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'scrollableDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedScrollableDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, controller: _36c2.maybeUnBoxAndBuildArgument<_9585.ScrollController, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'controller'
] : null, parentState: hydroState), direction: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'direction'
] : null))]; } );
_36c2.registerBoxer<_538d.ScrollableDetails>(boxer: ({required _538d.ScrollableDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedScrollableDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
