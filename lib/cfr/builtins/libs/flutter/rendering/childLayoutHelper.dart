import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/layout_helper.dart' as _1d45;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedChildLayoutHelper extends _36c2.VMManagedBox<_1d45.ChildLayoutHelper> {VMManagedChildLayoutHelper({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {  }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _1d45.ChildLayoutHelper vmObject;

 }

void loadChildLayoutHelper({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'childLayoutHelperDryLayoutChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Size>(object: _1d45.ChildLayoutHelper.dryLayoutChild(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'childLayoutHelperLayoutChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Size>(object: _1d45.ChildLayoutHelper.layoutChild(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
_36c2.registerBoxer<_1d45.ChildLayoutHelper>(boxer: ({required _1d45.ChildLayoutHelper vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedChildLayoutHelper(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
