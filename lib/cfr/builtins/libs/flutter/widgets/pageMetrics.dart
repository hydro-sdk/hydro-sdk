import 'dart:core' as _fac9;

import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/widgets/page_view.dart' as _4ea2;
import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPageMetrics extends _36c2.VMManagedBox<_4ea2.PageMetrics> {VMManagedPageMetrics({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'viewportFraction'
] = vmObject.viewportFraction;
table  [
'axisDirection'
] = _487f.AxisDirection.values.indexWhere((x) { return x == vmObject.axisDirection; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




return [_36c2.maybeBoxObject<_4ea2.PageMetrics>(object: vmObject.copyWith(axisDirection: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'axisDirection'
] : null), maxScrollExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxScrollExtent'
] : null?.toDouble(), minScrollExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minScrollExtent'
] : null?.toDouble(), pixels: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'pixels'
] : null?.toDouble(), viewportDimension: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewportDimension'
] : null?.toDouble(), viewportFraction: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewportFraction'
] : null?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getPage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.page;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getMinScrollExtent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.minScrollExtent,]; } );
table  [
'getMaxScrollExtent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.maxScrollExtent,]; } );
table  [
'getHasContentDimensions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasContentDimensions,]; } );
table  [
'getPixels'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.pixels,]; } );
table  [
'getHasPixels'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasPixels,]; } );
table  [
'getViewportDimension'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.viewportDimension,]; } );
table  [
'getHasViewportDimension'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasViewportDimension,]; } );
table  [
'getAxisDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.AxisDirection.values.indexWhere((x) { return x == vmObject.axisDirection; } ),]; } );
table  [
'getAxis'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.Axis.values.indexWhere((x) { return x == vmObject.axis; } ),]; } );
table  [
'getOutOfRange'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.outOfRange,]; } );
table  [
'getAtEdge'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.atEdge,]; } );
table  [
'getExtentBefore'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.extentBefore,]; } );
table  [
'getExtentInside'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.extentInside,]; } );
table  [
'getExtentAfter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.extentAfter,]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _4ea2.PageMetrics vmObject;

 }

class RTManagedPageMetrics extends _4ea2.PageMetrics implements _36c2.Box<_4ea2.PageMetrics> {RTManagedPageMetrics({required _487f.AxisDirection axisDirection, _fac9.double? maxScrollExtent, _fac9.double? minScrollExtent, _fac9.double? pixels, _fac9.double? viewportDimension, required _fac9.double viewportFraction, required this.table, required this.hydroState}) : super(axisDirection: axisDirection,maxScrollExtent: maxScrollExtent,minScrollExtent: minScrollExtent,pixels: pixels,viewportDimension: viewportDimension,viewportFraction: viewportFraction) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'viewportFraction'
] = _36c2.maybeBoxObject(object: this.viewportFraction, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'axisDirection'
] = _487f.AxisDirection.values.indexWhere((x) { return x == this.axisDirection; } );
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            axisDirection: _36c2.maybeUnBoxEnum(
                values: _487f.AxisDirection.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['axisDirection']
                    : null),
            maxScrollExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['maxScrollExtent']
                    : null,
                parentState: hydroState),
            minScrollExtent:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minScrollExtent'] : null,
                    parentState: hydroState),
            pixels: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pixels'] : null,
                parentState: hydroState),
            viewportDimension: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewportDimension'] : null, parentState: hydroState),
            viewportFraction: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewportFraction'] : null, parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getPage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.page];
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
table['_dart_getMinScrollExtent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.minScrollExtent];
});
table['_dart_getMaxScrollExtent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.maxScrollExtent];
});
table['_dart_getHasContentDimensions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasContentDimensions];
});
table['_dart_getPixels'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.pixels];
});
table['_dart_getHasPixels'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasPixels];
});
table['_dart_getViewportDimension'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.viewportDimension];
});
table['_dart_getHasViewportDimension'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasViewportDimension];
});
table['_dart_getAxisDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [axisDirection];
});
table['_dart_getAxis'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.axis];
});
table['_dart_getOutOfRange'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.outOfRange];
});
table['_dart_getAtEdge'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.atEdge];
});
table['_dart_getExtentBefore'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.extentBefore];
});
table['_dart_getExtentInside'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.extentInside];
});
table['_dart_getExtentAfter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.extentAfter];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_4ea2.PageMetrics unwrap() => this;
_4ea2.PageMetrics get vmObject => this;
@_fac9.override _4ea2.PageMetrics copyWith({_487f.AxisDirection? axisDirection, _fac9.double? maxScrollExtent, _fac9.double? minScrollExtent, _fac9.double? pixels, _fac9.double? viewportDimension, _fac9.double? viewportFraction}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_4ea2.PageMetrics, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double? get page { 
_36c2.Closure closure = table["getPage"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get minScrollExtent { 
_36c2.Closure closure = table["getMinScrollExtent"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double get maxScrollExtent { 
_36c2.Closure closure = table["getMaxScrollExtent"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.bool get hasContentDimensions { 
_36c2.Closure closure = table["getHasContentDimensions"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get pixels { 
_36c2.Closure closure = table["getPixels"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.bool get hasPixels { 
_36c2.Closure closure = table["getHasPixels"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get viewportDimension { 
_36c2.Closure closure = table["getViewportDimension"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.bool get hasViewportDimension { 
_36c2.Closure closure = table["getHasViewportDimension"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _487f.AxisDirection get axisDirection { 
_36c2.Closure closure = table["getAxisDirection"];
return _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _487f.Axis get axis { 
_36c2.Closure closure = table["getAxis"];
return _36c2.maybeUnBoxEnum(values: _487f.Axis.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _fac9.bool get outOfRange { 
_36c2.Closure closure = table["getOutOfRange"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get atEdge { 
_36c2.Closure closure = table["getAtEdge"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get extentBefore { 
_36c2.Closure closure = table["getExtentBefore"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double get extentInside { 
_36c2.Closure closure = table["getExtentInside"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double get extentAfter { 
_36c2.Closure closure = table["getExtentAfter"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadPageMetrics({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'pageMetrics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 





return  [RTManagedPageMetrics(table: luaCallerArguments  [
0
], hydroState: hydroState, axisDirection: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'axisDirection'
] : null), maxScrollExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxScrollExtent'
] : null?.toDouble(), minScrollExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minScrollExtent'
] : null?.toDouble(), pixels: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'pixels'
] : null?.toDouble(), viewportDimension: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewportDimension'
] : null?.toDouble(), viewportFraction: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewportFraction'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_4ea2.PageMetrics>(boxer: ({required _4ea2.PageMetrics vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPageMetrics(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
