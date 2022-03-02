import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/border_radius.dart' as _9d8a;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/box_border.dart' as _250a;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBoxBorder extends _36c2.VMManagedBox<_250a.BoxBorder> {VMManagedBoxBorder({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getTop'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_6be9.BorderSide>(object: vmObject.top, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getBottom'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_6be9.BorderSide>(object: vmObject.bottom, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getIsUniform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isUniform,]; } );
table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.add(_36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), reversed: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'reversed'
] : null);if(returnValue!= null){return [_36c2.maybeBoxObject<_250a.BoxBorder?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getInnerPath'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Path>(object: vmObject.getInnerPath(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'textDirection'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getOuterPath'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Path>(object: vmObject.getOuterPath(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'textDirection'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'paint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



vmObject.paint(_36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), borderRadius: _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadius?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'borderRadius'
] : null, parentState: hydroState), shape: _36c2.maybeUnBoxEnum(values: _250a.BoxShape.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'shape'
] : null), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'textDirection'
] : null));
return []; } );
table  [
'scale'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_6be9.ShapeBorder>(object: vmObject.scale(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getDimensions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(object: vmObject.dimensions, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _250a.BoxBorder vmObject;

 }

class RTManagedBoxBorder extends _250a.BoxBorder implements _36c2.Box<_250a.BoxBorder> {RTManagedBoxBorder({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getTop'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [top];
});
table['_dart_getBottom'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [bottom];
});
table['_dart_getIsUniform'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [isUniform];
});
table['_dart_add'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.add(
            _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            reversed:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['reversed']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getInnerPath'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getInnerPath(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            textDirection: _36c2.maybeUnBoxEnum(
                values: _a643.TextDirection.values,
                boxedEnum: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['textDirection']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getOuterPath'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getOuterPath(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            textDirection: _36c2.maybeUnBoxEnum(
                values: _a643.TextDirection.values,
                boxedEnum: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['textDirection']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_paint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  paint(_36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
      borderRadius:
          _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadius?, _fac9.dynamic>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['borderRadius']
                  : null,
              parentState: hydroState),
      shape: _36c2.maybeUnBoxEnum(
          values: _250a.BoxShape.values,
          boxedEnum: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['shape']
              : null),
      textDirection: _36c2.maybeUnBoxEnum(
          values: _a643.TextDirection.values,
          boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null));
  return [];
});
table['_dart_scale'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: scale(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_lerpFrom'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.lerpFrom(
            _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_lerpTo'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.lerpTo(
            _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
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
table['_dart_getDimensions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [dimensions];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_250a.BoxBorder unwrap() => this;
_250a.BoxBorder get vmObject => this;
@_fac9.override _6be9.BorderSide get top { 
_36c2.Closure closure = table["getTop"];
return _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _6be9.BorderSide get bottom { 
_36c2.Closure closure = table["getBottom"];
return _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get isUniform { 
_36c2.Closure closure = table["getIsUniform"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _250a.BoxBorder? add(other, {_fac9.bool reversed = false}) { 
_36c2.Closure closure = table["add"];
return _36c2.maybeUnBoxAndBuildArgument<_250a.BoxBorder?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Path getInnerPath(rect, {_a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["getInnerPath"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Path getOuterPath(rect, {_a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["getOuterPath"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void paint(canvas, rect, {_9d8a.BorderRadius? borderRadius, _250a.BoxShape shape = _250a.BoxShape.rectangle, _a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["paint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _6be9.ShapeBorder scale(t) { 
_36c2.Closure closure = table["scale"];
return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _6be9.ShapeBorder? lerpFrom(a, t) { 
_36c2.Closure closure = table["lerpFrom"];
return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _6be9.ShapeBorder? lerpTo(b, t) { 
_36c2.Closure closure = table["lerpTo"];
return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _96d1.EdgeInsetsGeometry get dimensions { 
_36c2.Closure closure = table["getDimensions"];
return _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadBoxBorder({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'boxBorder'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedBoxBorder(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
table  [
'boxBorderLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _250a.BoxBorder.lerp(_36c2.maybeUnBoxAndBuildArgument<_250a.BoxBorder?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_250a.BoxBorder?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_250a.BoxBorder?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_250a.BoxBorder>(boxer: ({required _250a.BoxBorder vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBoxBorder(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
