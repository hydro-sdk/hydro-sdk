import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/colors.dart' as _898f;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedColorSwatch extends _36c2.VMManagedBox<_898f.ColorSwatch<_fac9.dynamic>> {VMManagedColorSwatch({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'value'
] = vmObject.value;
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'withAlpha'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withAlpha(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withOpacity'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withOpacity(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withRed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withRed(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withGreen'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withGreen(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withBlue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withBlue(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'computeLuminance'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.computeLuminance(),]; } );
table  [
'getAlpha'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.alpha,]; } );
table  [
'getOpacity'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.opacity,]; } );
table  [
'getRed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.red,]; } );
table  [
'getGreen'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.green,]; } );
table  [
'getBlue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.blue,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _898f.ColorSwatch<_fac9.dynamic> vmObject;

 }

class RTManagedColorSwatch extends _898f.ColorSwatch implements _36c2.Box<_898f.ColorSwatch> {RTManagedColorSwatch(_fac9.int primary, _fac9.Map<_fac9.dynamic,_a643.Color> _swatch, {required this.table, required this.hydroState}) : super(primary,_swatch,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'value'
] = _36c2.maybeBoxObject(object: value, hydroState: hydroState, table: _36c2.HydroTable());
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
table['_dart_withAlpha'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withAlpha(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_withOpacity'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withOpacity(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_withRed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withRed(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_withGreen'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withGreen(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_withBlue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withBlue(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_computeLuminance'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeLuminance(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getAlpha'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.alpha];
});
table['_dart_getOpacity'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.opacity];
});
table['_dart_getRed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.red];
});
table['_dart_getGreen'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.green];
});
table['_dart_getBlue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.blue];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_898f.ColorSwatch unwrap() => this;
_898f.ColorSwatch get vmObject => this;
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Color withAlpha(a) { 
_36c2.Closure closure = table["withAlpha"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Color withOpacity(opacity) { 
_36c2.Closure closure = table["withOpacity"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Color withRed(r) { 
_36c2.Closure closure = table["withRed"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Color withGreen(g) { 
_36c2.Closure closure = table["withGreen"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Color withBlue(b) { 
_36c2.Closure closure = table["withBlue"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double computeLuminance() { 
_36c2.Closure closure = table["computeLuminance"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.int get alpha { 
_36c2.Closure closure = table["getAlpha"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get opacity { 
_36c2.Closure closure = table["getOpacity"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.int get red { 
_36c2.Closure closure = table["getRed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get green { 
_36c2.Closure closure = table["getGreen"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get blue { 
_36c2.Closure closure = table["getBlue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadColorSwatch({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'colorSwatch'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedColorSwatch(luaCallerArguments  [
1
], _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.dynamic,_a643.Color>, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_898f.ColorSwatch>(boxer: ({required _898f.ColorSwatch vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedColorSwatch(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
