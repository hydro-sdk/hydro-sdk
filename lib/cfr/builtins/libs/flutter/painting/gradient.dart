import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/gradient.dart' as _8a60;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGradient extends _36c2.VMManagedBox<_8a60.Gradient> {VMManagedGradient({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'colors'
] = _36c2.maybeBoxObject<_fac9.List<_a643.Color>>(object: vmObject.colors, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'stops'
] = _36c2.maybeBoxObject<_fac9.List<_fac9.double>?>(object: vmObject.stops, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'transform'
] = _36c2.maybeBoxObject<_8a60.GradientTransform?>(object: vmObject.transform, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'createShader'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Shader>(object: vmObject.createShader(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'textDirection'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'scale'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_8a60.Gradient>(object: vmObject.scale(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8a60.Gradient vmObject;

 }

class RTManagedGradient extends _8a60.Gradient implements _36c2.Box<_8a60.Gradient> {RTManagedGradient({_fac9.List<_fac9.double>? stops, _8a60.GradientTransform? transform, required _fac9.List<_a643.Color> colors, required this.table, required this.hydroState}) : super(stops: stops,transform: transform,colors: colors) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'colors'
] = _36c2.maybeBoxObject(object: this.colors, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'stops'
] = _36c2.maybeBoxObject(object: this.stops, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'transform'
] = _36c2.maybeBoxObject(object: this.transform, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_createShader'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: createShader(
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
            _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(
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
            _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_8a60.Gradient unwrap() => this;
_8a60.Gradient get vmObject => this;
@_fac9.override _a643.Shader createShader(rect, {_a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["createShader"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Shader, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _8a60.Gradient scale(factor) { 
_36c2.Closure closure = table["scale"];
return _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _8a60.Gradient? lerpFrom(a, t) { 
_36c2.Closure closure = table["lerpFrom"];
return _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _8a60.Gradient? lerpTo(b, t) { 
_36c2.Closure closure = table["lerpTo"];
return _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadGradient({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'gradient'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedGradient(table: luaCallerArguments  [
0
], hydroState: hydroState, stops: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.double>?, _fac9.double>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'stops'
] : null, parentState: hydroState), transform: _36c2.maybeUnBoxAndBuildArgument<_8a60.GradientTransform?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'transform'
] : null, parentState: hydroState), colors: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Color>, _a643.Color>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'colors'
] : null, parentState: hydroState))]; } );
table  [
'gradientLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _8a60.Gradient.lerp(_36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_8a60.Gradient?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_8a60.Gradient>(boxer: ({required _8a60.Gradient vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedGradient(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
