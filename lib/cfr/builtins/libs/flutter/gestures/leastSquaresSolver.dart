import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/lsq_solver.dart' as _f397;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLeastSquaresSolver extends _36c2.VMManagedBox<_f397.LeastSquaresSolver> {VMManagedLeastSquaresSolver({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'x'
] = _36c2.maybeBoxObject<_fac9.List<_fac9.double>>(object: vmObject.x, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'y'
] = _36c2.maybeBoxObject<_fac9.List<_fac9.double>>(object: vmObject.y, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'w'
] = _36c2.maybeBoxObject<_fac9.List<_fac9.double>>(object: vmObject.w, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'solve'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.solve(luaCallerArguments  [
1
]);if(returnValue!= null){return [_36c2.maybeBoxObject<_f397.PolynomialFit?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _f397.LeastSquaresSolver vmObject;

 }

class RTManagedLeastSquaresSolver extends _f397.LeastSquaresSolver implements _36c2.Box<_f397.LeastSquaresSolver> {RTManagedLeastSquaresSolver(_fac9.List<_fac9.double> x$, _fac9.List<_fac9.double> y$, _fac9.List<_fac9.double> w$, {required this.table, required this.hydroState}) : super(x$,y$,w$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'x'
] = _36c2.maybeBoxObject(object: this.x, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'y'
] = _36c2.maybeBoxObject(object: this.y, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'w'
] = _36c2.maybeBoxObject(object: this.w, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_solve'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.solve(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_f397.LeastSquaresSolver unwrap() => this;
_f397.LeastSquaresSolver get vmObject => this;
@_fac9.override _f397.PolynomialFit? solve(degree) { 
_36c2.Closure closure = table["solve"];
return _36c2.maybeUnBoxAndBuildArgument<_f397.PolynomialFit?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadLeastSquaresSolver({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'leastSquaresSolver'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedLeastSquaresSolver(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.double>, _fac9.double>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.double>, _fac9.double>(luaCallerArguments  [
2
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.double>, _fac9.double>(luaCallerArguments  [
3
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_f397.LeastSquaresSolver>(boxer: ({required _f397.LeastSquaresSolver vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedLeastSquaresSolver(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
