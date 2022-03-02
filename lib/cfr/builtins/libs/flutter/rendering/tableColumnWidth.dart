import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/table.dart' as _31d2;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTableColumnWidth extends _36c2.VMManagedBox<_31d2.TableColumnWidth> {VMManagedTableColumnWidth({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'minIntrinsicWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.minIntrinsicWidth(_36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_be2e.RenderBox>, _be2e.RenderBox>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble()),]; } );
table  [
'maxIntrinsicWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.maxIntrinsicWidth(_36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_be2e.RenderBox>, _be2e.RenderBox>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble()),]; } );
table  [
'flex'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.flex(_36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_be2e.RenderBox>, _be2e.RenderBox>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _31d2.TableColumnWidth vmObject;

 }

class RTManagedTableColumnWidth extends _31d2.TableColumnWidth implements _36c2.Box<_31d2.TableColumnWidth> {RTManagedTableColumnWidth({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_minIntrinsicWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: minIntrinsicWidth(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_be2e.RenderBox>,
                    _be2e.RenderBox>(luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_maxIntrinsicWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: maxIntrinsicWidth(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_be2e.RenderBox>,
                    _be2e.RenderBox>(luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_flex'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.flex(_36c2.maybeUnBoxAndBuildArgument<
            _fac9.Iterable<_be2e.RenderBox>,
            _be2e.RenderBox>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
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

_31d2.TableColumnWidth unwrap() => this;
_31d2.TableColumnWidth get vmObject => this;
@_fac9.override _fac9.double minIntrinsicWidth(cells, containerWidth) { 
_36c2.Closure closure = table["minIntrinsicWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double maxIntrinsicWidth(cells, containerWidth) { 
_36c2.Closure closure = table["maxIntrinsicWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double? flex(cells) { 
_36c2.Closure closure = table["flex"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTableColumnWidth({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'tableColumnWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedTableColumnWidth(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_31d2.TableColumnWidth>(boxer: ({required _31d2.TableColumnWidth vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTableColumnWidth(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
