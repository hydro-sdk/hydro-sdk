import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/box_shadow.dart' as _9068;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBoxShadow extends _36c2.VMManagedBox<_9068.BoxShadow> {VMManagedBoxShadow({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'spreadRadius'
] = vmObject.spreadRadius;
table  [
'blurStyle'
] = _a643.BlurStyle.values.indexWhere((x) { return x == vmObject.blurStyle; } );
table  [
'color'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.color, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'offset'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.offset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'blurRadius'
] = vmObject.blurRadius;
table  [
'toPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Paint>(object: vmObject.toPaint(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'scale'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_9068.BoxShadow>(object: vmObject.scale(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getBlurSigma'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.blurSigma,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _9068.BoxShadow vmObject;

 }

class RTManagedBoxShadow extends _9068.BoxShadow implements _36c2.Box<_9068.BoxShadow> {RTManagedBoxShadow({required _fac9.double blurRadius, required _a643.BlurStyle blurStyle, required _a643.Color color, required _a643.Offset offset, required _fac9.double spreadRadius, required this.table, required this.hydroState}) : super(blurRadius: blurRadius,blurStyle: blurStyle,color: color,offset: offset,spreadRadius: spreadRadius) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'spreadRadius'
] = _36c2.maybeBoxObject(object: this.spreadRadius, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'blurStyle'
] = _a643.BlurStyle.values.indexWhere((x) { return x == this.blurStyle; } );
table  [
'color'
] = _36c2.maybeBoxObject(object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'offset'
] = _36c2.maybeBoxObject(object: this.offset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'blurRadius'
] = _36c2.maybeBoxObject(object: this.blurRadius, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_toPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toPaint(),
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
table['_dart_getBlurSigma'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.blurSigma];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_9068.BoxShadow unwrap() => this;
_9068.BoxShadow get vmObject => this;
@_fac9.override _a643.Paint toPaint() { 
_36c2.Closure closure = table["toPaint"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Paint, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _9068.BoxShadow scale(factor) { 
_36c2.Closure closure = table["scale"];
return _36c2.maybeUnBoxAndBuildArgument<_9068.BoxShadow, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get blurSigma { 
_36c2.Closure closure = table["getBlurSigma"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
 }
void loadBoxShadow({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'boxShadow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




return  [RTManagedBoxShadow(table: luaCallerArguments  [
0
], hydroState: hydroState, blurRadius: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'blurRadius'
] : null?.toDouble(), blurStyle: _36c2.maybeUnBoxEnum(values: _a643.BlurStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'blurStyle'
] : null), color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'color'
] : null, parentState: hydroState), offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'offset'
] : null, parentState: hydroState), spreadRadius: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'spreadRadius'
] : null?.toDouble())]; } );
table  [
'boxShadowLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _9068.BoxShadow.lerp(_36c2.maybeUnBoxAndBuildArgument<_9068.BoxShadow?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_9068.BoxShadow?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_9068.BoxShadow?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'boxShadowLerpList'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _9068.BoxShadow.lerpList(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_9068.BoxShadow>?, _9068.BoxShadow>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_9068.BoxShadow>?, _9068.BoxShadow>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: returnValue.map((x) => _36c2.maybeBoxObject<_9068.BoxShadow>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_9068.BoxShadow>(boxer: ({required _9068.BoxShadow vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBoxShadow(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
