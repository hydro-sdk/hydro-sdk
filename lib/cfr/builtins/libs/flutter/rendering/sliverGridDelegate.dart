import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/sliver_grid.dart' as _a3c0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverGridDelegate extends _36c2.VMManagedBox<_a3c0.SliverGridDelegate> {VMManagedSliverGridDelegate({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a3c0.SliverGridLayout>(object: vmObject.getLayout(_36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'shouldRelayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.shouldRelayout(_36c2.maybeUnBoxAndBuildArgument<_a3c0.SliverGridDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _a3c0.SliverGridDelegate vmObject;

 }

void loadSliverGridDelegate({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_a3c0.SliverGridDelegate>(boxer: ({required _a3c0.SliverGridDelegate vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSliverGridDelegate(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
