import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/stadium_border.dart' as _5909;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedStadiumBorder extends _36c2.VMManagedBox<_5909.StadiumBorder> {VMManagedStadiumBorder({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'side'
] = _36c2.maybeBoxObject<_6be9.BorderSide>(object: vmObject.side, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getDimensions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(object: vmObject.dimensions, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'scale'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_6be9.ShapeBorder>(object: vmObject.scale(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'lerpFrom'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.lerpFrom(_36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_6be9.ShapeBorder?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'lerpTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.lerpTo(_36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_6be9.ShapeBorder?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_5909.StadiumBorder>(object: vmObject.copyWith(side: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'side'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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
], parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'textDirection'
] : null));
return []; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _5909.StadiumBorder vmObject;

 }

class RTManagedStadiumBorder extends _5909.StadiumBorder implements _36c2.Box<_5909.StadiumBorder> {RTManagedStadiumBorder({required _6be9.BorderSide side, required this.table, required this.hydroState}) : super(side: side) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'side'
] = _36c2.maybeBoxObject(object: this.side, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getDimensions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.dimensions];
});
table['_dart_scale'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.scale(
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
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            side: _36c2
                .maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['side']
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
  super.paint(
      _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState),
      textDirection: _36c2.maybeUnBoxEnum(
          values: _a643.TextDirection.values,
          boxedEnum: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['textDirection']
              : null));
  return [];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
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
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_5909.StadiumBorder unwrap() => this;
_5909.StadiumBorder get vmObject => this;
@_fac9.override _96d1.EdgeInsetsGeometry get dimensions { 
_36c2.Closure closure = table["getDimensions"];
return _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _6be9.ShapeBorder scale(t) { 
_36c2.Closure closure = table["scale"];
return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _6be9.ShapeBorder? lerpFrom(a, t) { 
_36c2.Closure closure = table["lerpFrom"];
return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _6be9.ShapeBorder? lerpTo(b, t) { 
_36c2.Closure closure = table["lerpTo"];
return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _5909.StadiumBorder copyWith({_6be9.BorderSide? side}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_5909.StadiumBorder, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Path getInnerPath(rect, {_a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["getInnerPath"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Path getOuterPath(rect, {_a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["getOuterPath"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void paint(canvas, rect, {_a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["paint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _6be9.ShapeBorder? add(other, {_fac9.bool reversed = false}) { 
_36c2.Closure closure = table["add"];
return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadStadiumBorder({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'stadiumBorder'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedStadiumBorder(table: luaCallerArguments  [
0
], hydroState: hydroState, side: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'side'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_5909.StadiumBorder>(boxer: ({required _5909.StadiumBorder vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedStadiumBorder(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
