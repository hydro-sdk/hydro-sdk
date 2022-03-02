import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/border_radius.dart' as _9d8a;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/rendering/table_border.dart' as _2738;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTableBorder extends _36c2.VMManagedBox<_2738.TableBorder> {VMManagedTableBorder({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'top'
] = _36c2.maybeBoxObject<_6be9.BorderSide>(object: vmObject.top, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'right'
] = _36c2.maybeBoxObject<_6be9.BorderSide>(object: vmObject.right, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'bottom'
] = _36c2.maybeBoxObject<_6be9.BorderSide>(object: vmObject.bottom, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'left'
] = _36c2.maybeBoxObject<_6be9.BorderSide>(object: vmObject.left, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'horizontalInside'
] = _36c2.maybeBoxObject<_6be9.BorderSide>(object: vmObject.horizontalInside, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'verticalInside'
] = _36c2.maybeBoxObject<_6be9.BorderSide>(object: vmObject.verticalInside, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'borderRadius'
] = _36c2.maybeBoxObject<_9d8a.BorderRadius>(object: vmObject.borderRadius, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getDimensions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_96d1.EdgeInsets>(object: vmObject.dimensions, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getIsUniform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isUniform,]; } );
table  [
'scale'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_2738.TableBorder>(object: vmObject.scale(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'paint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


vmObject.paint(_36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), columns: _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'columns'
] : null, parentState: hydroState), rows: _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'rows'
] : null, parentState: hydroState));
return []; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _2738.TableBorder vmObject;

 }

class RTManagedTableBorder extends _2738.TableBorder implements _36c2.Box<_2738.TableBorder> {RTManagedTableBorder({required _9d8a.BorderRadius borderRadius, required _6be9.BorderSide bottom, required _6be9.BorderSide horizontalInside, required _6be9.BorderSide left, required _6be9.BorderSide right, required _6be9.BorderSide top, required _6be9.BorderSide verticalInside, required this.table, required this.hydroState}) : super(borderRadius: borderRadius,bottom: bottom,horizontalInside: horizontalInside,left: left,right: right,top: top,verticalInside: verticalInside) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'top'
] = _36c2.maybeBoxObject(object: this.top, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'right'
] = _36c2.maybeBoxObject(object: this.right, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'bottom'
] = _36c2.maybeBoxObject(object: this.bottom, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'left'
] = _36c2.maybeBoxObject(object: this.left, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'horizontalInside'
] = _36c2.maybeBoxObject(object: this.horizontalInside, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'verticalInside'
] = _36c2.maybeBoxObject(object: this.verticalInside, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'borderRadius'
] = _36c2.maybeBoxObject(object: this.borderRadius, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getDimensions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.dimensions];
});
table['_dart_getIsUniform'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isUniform];
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
table['_dart_paint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.paint(
      _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments[2],
          parentState: hydroState),
      columns: _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.double>, _fac9.double>(
          luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['columns']
              : null,
          parentState: hydroState),
      rows: _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.double>, _fac9.double>(
          luaCallerArguments.length >= 4 ? luaCallerArguments[3]['rows'] : null,
          parentState: hydroState));
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
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_2738.TableBorder unwrap() => this;
_2738.TableBorder get vmObject => this;
@_fac9.override _96d1.EdgeInsets get dimensions { 
_36c2.Closure closure = table["getDimensions"];
return _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get isUniform { 
_36c2.Closure closure = table["getIsUniform"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _2738.TableBorder scale(t) { 
_36c2.Closure closure = table["scale"];
return _36c2.maybeUnBoxAndBuildArgument<_2738.TableBorder, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void paint(canvas, rect, {required _fac9.Iterable columns, required _fac9.Iterable rows}) { 
_36c2.Closure closure = table["paint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTableBorder({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'tableBorder'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 






return  [RTManagedTableBorder(table: luaCallerArguments  [
0
], hydroState: hydroState, borderRadius: _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadius, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'borderRadius'
] : null, parentState: hydroState), bottom: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'bottom'
] : null, parentState: hydroState), horizontalInside: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'horizontalInside'
] : null, parentState: hydroState), left: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'left'
] : null, parentState: hydroState), right: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'right'
] : null, parentState: hydroState), top: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'top'
] : null, parentState: hydroState), verticalInside: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'verticalInside'
] : null, parentState: hydroState))]; } );
table  [
'tableBorderAll'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_36c2.maybeBoxObject<_2738.TableBorder>(object: _2738.TableBorder.all(borderRadius: _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadius, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'borderRadius'
] : null, parentState: hydroState), color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'color'
] : null, parentState: hydroState), style: _36c2.maybeUnBoxEnum(values: _6be9.BorderStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'style'
] : null), width: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'width'
] : null?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'tableBorderSymmetric'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_2738.TableBorder>(object: _2738.TableBorder.symmetric(inside: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'inside'
] : null, parentState: hydroState), outside: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'outside'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'tableBorderLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _2738.TableBorder.lerp(_36c2.maybeUnBoxAndBuildArgument<_2738.TableBorder?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_2738.TableBorder?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_2738.TableBorder?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_2738.TableBorder>(boxer: ({required _2738.TableBorder vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTableBorder(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
