import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedEdgeInsets extends _36c2.VMManagedBox<_96d1.EdgeInsets> {VMManagedEdgeInsets({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'left'
] = vmObject.left;
table  [
'top'
] = vmObject.top;
table  [
'right'
] = vmObject.right;
table  [
'bottom'
] = vmObject.bottom;
table  [
'getTopLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.topLeft, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getTopRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.topRight, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getBottomLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.bottomLeft, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getBottomRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.bottomRight, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getFlipped'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_96d1.EdgeInsets>(object: vmObject.flipped, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'inflateRect'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.inflateRect(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'deflateRect'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.deflateRect(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'subtract'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(object: vmObject.subtract(_36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(object: vmObject.add(_36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'clamp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(object: vmObject.clamp(_36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'resolve'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_96d1.EdgeInsets>(object: vmObject.resolve(_36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
1
])), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_36c2.maybeBoxObject<_96d1.EdgeInsets>(object: vmObject.copyWith(bottom: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'bottom'
] : null?.toDouble(), left: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'left'
] : null?.toDouble(), right: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'right'
] : null?.toDouble(), top: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'top'
] : null?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'along'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.along(_36c2.maybeUnBoxEnum(values: _487f.Axis.values, boxedEnum: luaCallerArguments  [
1
])),]; } );
table  [
'inflateSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.inflateSize(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'deflateSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.deflateSize(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getIsNonNegative'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isNonNegative,]; } );
table  [
'getHorizontal'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.horizontal,]; } );
table  [
'getVertical'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.vertical,]; } );
table  [
'getCollapsedSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.collapsedSize, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _96d1.EdgeInsets vmObject;

 }

void loadEdgeInsets({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'edgeInsetsLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _96d1.EdgeInsets.lerp(_36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_96d1.EdgeInsets?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_96d1.EdgeInsets>(boxer: ({required _96d1.EdgeInsets vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedEdgeInsets(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
