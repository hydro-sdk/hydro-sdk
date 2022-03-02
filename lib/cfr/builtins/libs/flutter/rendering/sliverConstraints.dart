import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/viewport_offset.dart' as _f376;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverConstraints extends _36c2.VMManagedBox<_021d.SliverConstraints> {VMManagedSliverConstraints({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'axisDirection'
] = _487f.AxisDirection.values.indexWhere((x) { return x == vmObject.axisDirection; } );
table  [
'growthDirection'
] = _021d.GrowthDirection.values.indexWhere((x) { return x == vmObject.growthDirection; } );
table  [
'userScrollDirection'
] = _f376.ScrollDirection.values.indexWhere((x) { return x == vmObject.userScrollDirection; } );
table  [
'scrollOffset'
] = vmObject.scrollOffset;
table  [
'precedingScrollExtent'
] = vmObject.precedingScrollExtent;
table  [
'overlap'
] = vmObject.overlap;
table  [
'remainingPaintExtent'
] = vmObject.remainingPaintExtent;
table  [
'crossAxisExtent'
] = vmObject.crossAxisExtent;
table  [
'crossAxisDirection'
] = _487f.AxisDirection.values.indexWhere((x) { return x == vmObject.crossAxisDirection; } );
table  [
'viewportMainAxisExtent'
] = vmObject.viewportMainAxisExtent;
table  [
'cacheOrigin'
] = vmObject.cacheOrigin;
table  [
'remainingCacheExtent'
] = vmObject.remainingCacheExtent;
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 










return [_36c2.maybeBoxObject<_021d.SliverConstraints>(object: vmObject.copyWith(axisDirection: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'axisDirection'
] : null), cacheOrigin: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cacheOrigin'
] : null?.toDouble(), crossAxisDirection: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'crossAxisDirection'
] : null), crossAxisExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'crossAxisExtent'
] : null?.toDouble(), growthDirection: _36c2.maybeUnBoxEnum(values: _021d.GrowthDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'growthDirection'
] : null), overlap: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'overlap'
] : null?.toDouble(), precedingScrollExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'precedingScrollExtent'
] : null?.toDouble(), remainingCacheExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'remainingCacheExtent'
] : null?.toDouble(), remainingPaintExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'remainingPaintExtent'
] : null?.toDouble(), scrollOffset: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scrollOffset'
] : null?.toDouble(), userScrollDirection: _36c2.maybeUnBoxEnum(values: _f376.ScrollDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'userScrollDirection'
] : null), viewportMainAxisExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewportMainAxisExtent'
] : null?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getAxis'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.Axis.values.indexWhere((x) { return x == vmObject.axis; } ),]; } );
table  [
'getNormalizedGrowthDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_021d.GrowthDirection.values.indexWhere((x) { return x == vmObject.normalizedGrowthDirection; } ),]; } );
table  [
'getIsTight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isTight,]; } );
table  [
'getIsNormalized'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isNormalized,]; } );
table  [
'asBoxConstraints'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.asBoxConstraints(crossAxisExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'crossAxisExtent'
] : null?.toDouble(), maxExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxExtent'
] : null?.toDouble(), minExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minExtent'
] : null?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugAssertIsValid'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedinformationCollector=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'informationCollector'
] : null;
return [vmObject.debugAssertIsValid(informationCollector: unpackedinformationCollector != null ? () => _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(unpackedinformationCollector.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], parentState: hydroState) : null , isAppliedConstraint: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'isAppliedConstraint'
] : null),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _021d.SliverConstraints vmObject;

 }

class RTManagedSliverConstraints extends _021d.SliverConstraints implements _36c2.Box<_021d.SliverConstraints> {RTManagedSliverConstraints({required _487f.AxisDirection axisDirection, required _fac9.double cacheOrigin, required _487f.AxisDirection crossAxisDirection, required _fac9.double crossAxisExtent, required _021d.GrowthDirection growthDirection, required _fac9.double overlap, required _fac9.double precedingScrollExtent, required _fac9.double remainingCacheExtent, required _fac9.double remainingPaintExtent, required _fac9.double scrollOffset, required _f376.ScrollDirection userScrollDirection, required _fac9.double viewportMainAxisExtent, required this.table, required this.hydroState}) : super(axisDirection: axisDirection,cacheOrigin: cacheOrigin,crossAxisDirection: crossAxisDirection,crossAxisExtent: crossAxisExtent,growthDirection: growthDirection,overlap: overlap,precedingScrollExtent: precedingScrollExtent,remainingCacheExtent: remainingCacheExtent,remainingPaintExtent: remainingPaintExtent,scrollOffset: scrollOffset,userScrollDirection: userScrollDirection,viewportMainAxisExtent: viewportMainAxisExtent) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'axisDirection'
] = _487f.AxisDirection.values.indexWhere((x) { return x == this.axisDirection; } );
table  [
'growthDirection'
] = _021d.GrowthDirection.values.indexWhere((x) { return x == this.growthDirection; } );
table  [
'userScrollDirection'
] = _f376.ScrollDirection.values.indexWhere((x) { return x == this.userScrollDirection; } );
table  [
'scrollOffset'
] = _36c2.maybeBoxObject(object: this.scrollOffset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'precedingScrollExtent'
] = _36c2.maybeBoxObject(object: this.precedingScrollExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'overlap'
] = _36c2.maybeBoxObject(object: this.overlap, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'remainingPaintExtent'
] = _36c2.maybeBoxObject(object: this.remainingPaintExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'crossAxisExtent'
] = _36c2.maybeBoxObject(object: this.crossAxisExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'crossAxisDirection'
] = _487f.AxisDirection.values.indexWhere((x) { return x == this.crossAxisDirection; } );
table  [
'viewportMainAxisExtent'
] = _36c2.maybeBoxObject(object: this.viewportMainAxisExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'cacheOrigin'
] = _36c2.maybeBoxObject(object: this.cacheOrigin, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'remainingCacheExtent'
] = _36c2.maybeBoxObject(object: this.remainingCacheExtent, hydroState: hydroState, table: _36c2.HydroTable());
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
            cacheOrigin: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['cacheOrigin']
                    : null,
                parentState: hydroState),
            crossAxisDirection: _36c2.maybeUnBoxEnum(
                values: _487f.AxisDirection.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['crossAxisDirection']
                    : null),
            crossAxisExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['crossAxisExtent'] : null,
                parentState: hydroState),
            growthDirection: _36c2.maybeUnBoxEnum(values: _021d.GrowthDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['growthDirection'] : null),
            overlap: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlap'] : null, parentState: hydroState),
            precedingScrollExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['precedingScrollExtent'] : null, parentState: hydroState),
            remainingCacheExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['remainingCacheExtent'] : null, parentState: hydroState),
            remainingPaintExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['remainingPaintExtent'] : null, parentState: hydroState),
            scrollOffset: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollOffset'] : null, parentState: hydroState),
            userScrollDirection: _36c2.maybeUnBoxEnum(values: _f376.ScrollDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['userScrollDirection'] : null),
            viewportMainAxisExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewportMainAxisExtent'] : null, parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getAxis'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.axis];
});
table['_dart_getNormalizedGrowthDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.normalizedGrowthDirection];
});
table['_dart_getIsTight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isTight];
});
table['_dart_getIsNormalized'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isNormalized];
});
table['_dart_asBoxConstraints'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.asBoxConstraints(
            crossAxisExtent:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['crossAxisExtent']
                        : null,
                    parentState: hydroState),
            maxExtent: _36c2
                .maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxExtent'] : null,
                    parentState: hydroState),
            minExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minExtent'] : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugAssertIsValid'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
      ? luaCallerArguments[1]['informationCollector']
      : null;
  return [
    _36c2.maybeBoxObject(
        object: super.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => _36c2.maybeUnBoxAndBuildArgument<
                        _fac9.Iterable<_eaf3.DiagnosticsNode>,
                        _eaf3.DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null,
            isAppliedConstraint:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['isAppliedConstraint']
                        : null,
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

_021d.SliverConstraints unwrap() => this;
_021d.SliverConstraints get vmObject => this;
@_fac9.override _021d.SliverConstraints copyWith({_487f.AxisDirection? axisDirection, _fac9.double? cacheOrigin, _487f.AxisDirection? crossAxisDirection, _fac9.double? crossAxisExtent, _021d.GrowthDirection? growthDirection, _fac9.double? overlap, _fac9.double? precedingScrollExtent, _fac9.double? remainingCacheExtent, _fac9.double? remainingPaintExtent, _fac9.double? scrollOffset, _f376.ScrollDirection? userScrollDirection, _fac9.double? viewportMainAxisExtent}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _487f.Axis get axis { 
_36c2.Closure closure = table["getAxis"];
return _36c2.maybeUnBoxEnum(values: _487f.Axis.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _021d.GrowthDirection get normalizedGrowthDirection { 
_36c2.Closure closure = table["getNormalizedGrowthDirection"];
return _36c2.maybeUnBoxEnum(values: _021d.GrowthDirection.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _fac9.bool get isTight { 
_36c2.Closure closure = table["getIsTight"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isNormalized { 
_36c2.Closure closure = table["getIsNormalized"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _be2e.BoxConstraints asBoxConstraints({_fac9.double? crossAxisExtent, _fac9.double maxExtent = _fac9.double.infinity, _fac9.double minExtent = 0.0}) { 
_36c2.Closure closure = table["asBoxConstraints"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool debugAssertIsValid({_fac9.Iterable<_eaf3.DiagnosticsNode> Function()? informationCollector, _fac9.bool isAppliedConstraint = false}) { 
_36c2.Closure closure = table["debugAssertIsValid"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadSliverConstraints({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'sliverConstraints'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 











return  [RTManagedSliverConstraints(table: luaCallerArguments  [
0
], hydroState: hydroState, axisDirection: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'axisDirection'
] : null), cacheOrigin: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cacheOrigin'
] : null?.toDouble(), crossAxisDirection: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'crossAxisDirection'
] : null), crossAxisExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'crossAxisExtent'
] : null?.toDouble(), growthDirection: _36c2.maybeUnBoxEnum(values: _021d.GrowthDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'growthDirection'
] : null), overlap: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'overlap'
] : null?.toDouble(), precedingScrollExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'precedingScrollExtent'
] : null?.toDouble(), remainingCacheExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'remainingCacheExtent'
] : null?.toDouble(), remainingPaintExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'remainingPaintExtent'
] : null?.toDouble(), scrollOffset: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scrollOffset'
] : null?.toDouble(), userScrollDirection: _36c2.maybeUnBoxEnum(values: _f376.ScrollDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'userScrollDirection'
] : null), viewportMainAxisExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewportMainAxisExtent'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_021d.SliverConstraints>(boxer: ({required _021d.SliverConstraints vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSliverConstraints(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
