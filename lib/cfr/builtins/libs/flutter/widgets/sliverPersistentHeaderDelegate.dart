import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/sliver_persistent_header.dart' as _2805;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/sliver_persistent_header.dart' as _be51;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverPersistentHeaderDelegate extends _36c2.VMManagedBox<_be51.SliverPersistentHeaderDelegate> {VMManagedSliverPersistentHeaderDelegate({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'build'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_36c2.maybeBoxObject<_e2dc.Widget>(object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble(), luaCallerArguments  [
3
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getMinExtent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.minExtent,]; } );
table  [
'getMaxExtent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.maxExtent,]; } );
table  [
'getVsync'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.vsync;if(returnValue!= null){return [_36c2.maybeBoxObject<_e067.TickerProvider?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getSnapConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.snapConfiguration;if(returnValue!= null){return [_36c2.maybeBoxObject<_2805.FloatingHeaderSnapConfiguration?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getStretchConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.stretchConfiguration;if(returnValue!= null){return [_36c2.maybeBoxObject<_2805.OverScrollHeaderStretchConfiguration?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getShowOnScreenConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.showOnScreenConfiguration;if(returnValue!= null){return [_36c2.maybeBoxObject<_2805.PersistentHeaderShowOnScreenConfiguration?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'shouldRebuild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.shouldRebuild(_36c2.maybeUnBoxAndBuildArgument<_be51.SliverPersistentHeaderDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _be51.SliverPersistentHeaderDelegate vmObject;

 }

class RTManagedSliverPersistentHeaderDelegate extends _be51.SliverPersistentHeaderDelegate implements _36c2.Box<_be51.SliverPersistentHeaderDelegate> {RTManagedSliverPersistentHeaderDelegate({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_build'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: build(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                luaCallerArguments[3],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getMinExtent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [minExtent];
});
table['_dart_getMaxExtent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [maxExtent];
});
table['_dart_getVsync'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.vsync];
});
table['_dart_getSnapConfiguration'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.snapConfiguration];
});
table['_dart_getStretchConfiguration'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.stretchConfiguration];
});
table['_dart_getShowOnScreenConfiguration'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.showOnScreenConfiguration];
});
table['_dart_shouldRebuild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: shouldRebuild(_36c2.maybeUnBoxAndBuildArgument<
            _be51.SliverPersistentHeaderDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_be51.SliverPersistentHeaderDelegate unwrap() => this;
_be51.SliverPersistentHeaderDelegate get vmObject => this;
@_fac9.override _e2dc.Widget build(context, shrinkOffset, overlapsContent) { 
_36c2.Closure closure = table["build"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double get minExtent { 
_36c2.Closure closure = table["getMinExtent"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double get maxExtent { 
_36c2.Closure closure = table["getMaxExtent"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _e067.TickerProvider? get vsync { 
_36c2.Closure closure = table["getVsync"];
return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerProvider?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _2805.FloatingHeaderSnapConfiguration? get snapConfiguration { 
_36c2.Closure closure = table["getSnapConfiguration"];
return _36c2.maybeUnBoxAndBuildArgument<_2805.FloatingHeaderSnapConfiguration?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _2805.OverScrollHeaderStretchConfiguration? get stretchConfiguration { 
_36c2.Closure closure = table["getStretchConfiguration"];
return _36c2.maybeUnBoxAndBuildArgument<_2805.OverScrollHeaderStretchConfiguration?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _2805.PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration { 
_36c2.Closure closure = table["getShowOnScreenConfiguration"];
return _36c2.maybeUnBoxAndBuildArgument<_2805.PersistentHeaderShowOnScreenConfiguration?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool shouldRebuild(oldDelegate) { 
_36c2.Closure closure = table["shouldRebuild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadSliverPersistentHeaderDelegate({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'sliverPersistentHeaderDelegate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedSliverPersistentHeaderDelegate(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_be51.SliverPersistentHeaderDelegate>(boxer: ({required _be51.SliverPersistentHeaderDelegate vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSliverPersistentHeaderDelegate(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
