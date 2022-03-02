import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/sliver.dart' as _a8eb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverChildBuilderDelegate extends _36c2.VMManagedBox<_a8eb.SliverChildBuilderDelegate> {VMManagedSliverChildBuilderDelegate({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'childCount'
] = vmObject.childCount;
table  [
'addAutomaticKeepAlives'
] = vmObject.addAutomaticKeepAlives;
table  [
'addRepaintBoundaries'
] = vmObject.addRepaintBoundaries;
table  [
'addSemanticIndexes'
] = vmObject.addSemanticIndexes;
table  [
'semanticIndexOffset'
] = vmObject.semanticIndexOffset;
table  [
'findIndexByKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.findIndexByKey(_36c2.maybeUnBoxAndBuildArgument<_ab4a.Key, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'build'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.build(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]);if(returnValue!= null){return [_36c2.maybeBoxObject<_e2dc.Widget?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getEstimatedChildCount'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.estimatedChildCount;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'shouldRebuild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.shouldRebuild(_36c2.maybeUnBoxAndBuildArgument<_a8eb.SliverChildBuilderDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'estimateMaxScrollOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


final returnValue = vmObject.estimateMaxScrollOffset(luaCallerArguments  [
1
], luaCallerArguments  [
2
], luaCallerArguments  [
3
]?.toDouble(), luaCallerArguments  [
4
]?.toDouble());if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'didFinishLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.didFinishLayout(luaCallerArguments  [
1
], luaCallerArguments  [
2
]);
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _a8eb.SliverChildBuilderDelegate vmObject;

 }

class RTManagedSliverChildBuilderDelegate extends _a8eb.SliverChildBuilderDelegate implements _36c2.Box<_a8eb.SliverChildBuilderDelegate> {RTManagedSliverChildBuilderDelegate( builder, {required _fac9.bool addAutomaticKeepAlives, required _fac9.bool addRepaintBoundaries, required _fac9.bool addSemanticIndexes, _fac9.int? childCount, _fac9.int? Function(_ab4a.Key key)? findChildIndexCallback, required _fac9.int? Function(_e2dc.Widget widget, _fac9.int localIndex) semanticIndexCallback, required _fac9.int semanticIndexOffset, required this.table, required this.hydroState}) : super(builder,addAutomaticKeepAlives: addAutomaticKeepAlives,addRepaintBoundaries: addRepaintBoundaries,addSemanticIndexes: addSemanticIndexes,childCount: childCount,findChildIndexCallback: findChildIndexCallback,semanticIndexCallback: semanticIndexCallback,semanticIndexOffset: semanticIndexOffset) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'childCount'
] = _36c2.maybeBoxObject(object: this.childCount, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'addAutomaticKeepAlives'
] = _36c2.maybeBoxObject(object: this.addAutomaticKeepAlives, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'addRepaintBoundaries'
] = _36c2.maybeBoxObject(object: this.addRepaintBoundaries, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'addSemanticIndexes'
] = _36c2.maybeBoxObject(object: this.addSemanticIndexes, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'semanticIndexOffset'
] = _36c2.maybeBoxObject(object: this.semanticIndexOffset, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_findIndexByKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.findIndexByKey(
            _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_build'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.build(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getEstimatedChildCount'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.estimatedChildCount];
});
table['_dart_shouldRebuild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.shouldRebuild(_36c2.maybeUnBoxAndBuildArgument<
            _a8eb.SliverChildBuilderDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_estimateMaxScrollOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.estimateMaxScrollOffset(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[3],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[4],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_didFinishLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didFinishLayout(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
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
table['_dart_debugFillDescription'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillDescription(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_a8eb.SliverChildBuilderDelegate unwrap() => this;
_a8eb.SliverChildBuilderDelegate get vmObject => this;
@_fac9.override _fac9.int? findIndexByKey(key) { 
_36c2.Closure closure = table["findIndexByKey"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e2dc.Widget? build(context, index) { 
_36c2.Closure closure = table["build"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int? get estimatedChildCount { 
_36c2.Closure closure = table["getEstimatedChildCount"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool shouldRebuild(oldDelegate) { 
_36c2.Closure closure = table["shouldRebuild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double? estimateMaxScrollOffset(firstIndex, lastIndex, leadingScrollOffset, trailingScrollOffset) { 
_36c2.Closure closure = table["estimateMaxScrollOffset"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void didFinishLayout(firstIndex, lastIndex) { 
_36c2.Closure closure = table["didFinishLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillDescription(description) { super.debugFillDescription(description);
_36c2.Closure closure = table["debugFillDescription"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadSliverChildBuilderDelegate({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'sliverChildBuilderDelegate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedbuilder=luaCallerArguments  [
1
];




_36c2.Closure? unpackedfindChildIndexCallback=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'findChildIndexCallback'
] : null;
_36c2.Closure unpackedsemanticIndexCallback=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'semanticIndexCallback'
] : null;

return  [RTManagedSliverChildBuilderDelegate((context, index) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(((final _fac9.List<_fac9.dynamic>? val,) => val != null && val.length >= 1 ?val[0] : null)(unpackedbuilder.dispatch([luaCallerArguments[0],context,index],parentState:hydroState,),), parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState, addAutomaticKeepAlives: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'addAutomaticKeepAlives'
] : null, addRepaintBoundaries: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'addRepaintBoundaries'
] : null, addSemanticIndexes: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'addSemanticIndexes'
] : null, childCount: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'childCount'
] : null, findChildIndexCallback: unpackedfindChildIndexCallback != null ? (key) => ((final _fac9.List<_fac9.dynamic>? val,) => val != null && val.length >= 1 ?val[0] : null)(unpackedfindChildIndexCallback.dispatch([luaCallerArguments[0],key],parentState:hydroState,),) : null , semanticIndexCallback: (widget, localIndex) => ((final _fac9.List<_fac9.dynamic>? val,) => val != null && val.length >= 1 ?val[0] : null)(unpackedsemanticIndexCallback.dispatch([luaCallerArguments[0],widget,localIndex],parentState:hydroState,),), semanticIndexOffset: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'semanticIndexOffset'
] : null)]; } );
_36c2.registerBoxer<_a8eb.SliverChildBuilderDelegate>(boxer: ({required _a8eb.SliverChildBuilderDelegate vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSliverChildBuilderDelegate(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
