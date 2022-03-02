import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/alignment.dart' as _ca85;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAlignment extends _36c2.VMManagedBox<_ca85.Alignment> {VMManagedAlignment({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'x'
] = vmObject.x;
table  [
'y'
] = vmObject.y;
table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_ca85.AlignmentGeometry>(object: vmObject.add(_36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'alongOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.alongOffset(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'alongSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.alongSize(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withinRect'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.withinRect(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'inscribe'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.inscribe(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
2
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

final _ca85.Alignment vmObject;

 }

class RTManagedAlignment extends _ca85.Alignment implements _36c2.Box<_ca85.Alignment> {RTManagedAlignment(_fac9.double x$, _fac9.double y$, {required this.table, required this.hydroState}) : super(x$,y$,) { table  [
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
table['_dart_add'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.add(_36c2.maybeUnBoxAndBuildArgument<
            _ca85.AlignmentGeometry,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_alongOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.alongOffset(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_alongSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.alongSize(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_withinRect'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withinRect(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_inscribe'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.inscribe(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_resolve'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.resolve(_36c2.maybeUnBoxEnum(
            values: _a643.TextDirection.values,
            boxedEnum: luaCallerArguments[1])),
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
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_ca85.Alignment unwrap() => this;
_ca85.Alignment get vmObject => this;
@_fac9.override _ca85.AlignmentGeometry add(other) { 
_36c2.Closure closure = table["add"];
return _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Offset alongOffset(other) { 
_36c2.Closure closure = table["alongOffset"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Offset alongSize(other) { 
_36c2.Closure closure = table["alongSize"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Offset withinRect(rect) { 
_36c2.Closure closure = table["withinRect"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Rect inscribe(size, rect) { 
_36c2.Closure closure = table["inscribe"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _ca85.Alignment resolve(direction) { 
_36c2.Closure closure = table["resolve"];
return _36c2.maybeUnBoxAndBuildArgument<_ca85.Alignment, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadAlignment({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'alignment'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedAlignment(luaCallerArguments  [
1
]?.toDouble(), luaCallerArguments  [
2
]?.toDouble(), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
table  [
'alignmentLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _ca85.Alignment.lerp(_36c2.maybeUnBoxAndBuildArgument<_ca85.Alignment?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_ca85.Alignment?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_ca85.Alignment?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_ca85.Alignment>(boxer: ({required _ca85.Alignment vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAlignment(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
