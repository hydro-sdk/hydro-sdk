import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/gradient.dart' as _8a60;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSweepGradient extends _36c2.VMManagedBox<_8a60.SweepGradient> {VMManagedSweepGradient({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'center'
] = _36c2.maybeBoxObject<_ca85.AlignmentGeometry>(object: vmObject.center, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'startAngle'
] = vmObject.startAngle;
table  [
'endAngle'
] = vmObject.endAngle;
table  [
'tileMode'
] = _a643.TileMode.values.indexWhere((x) { return x == vmObject.tileMode; } );
table  [
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
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_8a60.SweepGradient>(object: vmObject.scale(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'lerpFrom'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.lerpFrom(_36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_8a60.Gradient?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'lerpTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.lerpTo(_36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_8a60.Gradient?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8a60.SweepGradient vmObject;

 }

class RTManagedSweepGradient extends _8a60.SweepGradient implements _36c2.Box<_8a60.SweepGradient> {RTManagedSweepGradient({required _ca85.AlignmentGeometry center, required _fac9.double endAngle, required _fac9.double startAngle, _fac9.List<_fac9.double>? stops, required _a643.TileMode tileMode, _8a60.GradientTransform? transform, required _fac9.List<_a643.Color> colors, required this.table, required this.hydroState}) : super(center: center,endAngle: endAngle,startAngle: startAngle,stops: stops,tileMode: tileMode,transform: transform,colors: colors) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'center'
] = _36c2.maybeBoxObject(object: this.center, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'startAngle'
] = _36c2.maybeBoxObject(object: this.startAngle, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'endAngle'
] = _36c2.maybeBoxObject(object: this.endAngle, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'tileMode'
] = _a643.TileMode.values.indexWhere((x) { return x == this.tileMode; } );
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
        object: super.createShader(
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
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_8a60.SweepGradient unwrap() => this;
_8a60.SweepGradient get vmObject => this;
@_fac9.override _a643.Shader createShader(rect, {_a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["createShader"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Shader, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _8a60.SweepGradient scale(factor) { 
_36c2.Closure closure = table["scale"];
return _36c2.maybeUnBoxAndBuildArgument<_8a60.SweepGradient, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _8a60.Gradient? lerpFrom(a, t) { 
_36c2.Closure closure = table["lerpFrom"];
return _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _8a60.Gradient? lerpTo(b, t) { 
_36c2.Closure closure = table["lerpTo"];
return _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadSweepGradient({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'sweepGradient'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 






return  [RTManagedSweepGradient(table: luaCallerArguments  [
0
], hydroState: hydroState, center: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'center'
] : null, parentState: hydroState), endAngle: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'endAngle'
] : null?.toDouble(), startAngle: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'startAngle'
] : null?.toDouble(), stops: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.double>?, _fac9.double>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'stops'
] : null, parentState: hydroState), tileMode: _36c2.maybeUnBoxEnum(values: _a643.TileMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'tileMode'
] : null), transform: _36c2.maybeUnBoxAndBuildArgument<_8a60.GradientTransform?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'transform'
] : null, parentState: hydroState), colors: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Color>, _a643.Color>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'colors'
] : null, parentState: hydroState))]; } );
table  [
'sweepGradientLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _8a60.SweepGradient.lerp(_36c2.maybeUnBoxAndBuildArgument<_8a60.SweepGradient?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_8a60.SweepGradient?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_8a60.SweepGradient?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_8a60.SweepGradient>(boxer: ({required _8a60.SweepGradient vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSweepGradient(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
