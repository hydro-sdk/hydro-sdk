import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/draggable_scrollable_sheet.dart' as _90c0;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/notification_listener.dart' as _c8d8;
import 'package:flutter/src/widgets/scroll_notification.dart' as _593c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDraggableScrollableNotification extends _36c2.VMManagedBox<_90c0.DraggableScrollableNotification> {VMManagedDraggableScrollableNotification({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'extent'
] = vmObject.extent;
table  [
'minExtent'
] = vmObject.minExtent;
table  [
'maxExtent'
] = vmObject.maxExtent;
table  [
'initialExtent'
] = vmObject.initialExtent;
table  [
'context'
] = _36c2.maybeBoxObject<_e2dc.BuildContext>(object: vmObject.context, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'debugFillDescription'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillDescription(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'visitAncestor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.visitAncestor(_36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'getDepth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.depth,]; } );
table  [
'dispatch'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispatch(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _90c0.DraggableScrollableNotification vmObject;

 }

class RTManagedDraggableScrollableNotification extends _90c0.DraggableScrollableNotification implements _36c2.Box<_90c0.DraggableScrollableNotification> {RTManagedDraggableScrollableNotification({required _e2dc.BuildContext context, required _fac9.double extent, required _fac9.double initialExtent, required _fac9.double maxExtent, required _fac9.double minExtent, required this.table, required this.hydroState}) : super(context: context,extent: extent,initialExtent: initialExtent,maxExtent: maxExtent,minExtent: minExtent) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'extent'
] = _36c2.maybeBoxObject(object: this.extent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'minExtent'
] = _36c2.maybeBoxObject(object: this.minExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'maxExtent'
] = _36c2.maybeBoxObject(object: this.maxExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'initialExtent'
] = _36c2.maybeBoxObject(object: this.initialExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'context'
] = _36c2.maybeBoxObject(object: this.context, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_debugFillDescription'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillDescription(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_visitAncestor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.visitAncestor(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getDepth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.depth];
});
table['_dart_dispatch'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispatch(
      _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(
          luaCallerArguments[1],
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
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_90c0.DraggableScrollableNotification unwrap() => this;
_90c0.DraggableScrollableNotification get vmObject => this;
@_fac9.override void debugFillDescription(description) { super.debugFillDescription(description);
_36c2.Closure closure = table["debugFillDescription"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool visitAncestor(element) { super.visitAncestor(element);
_36c2.Closure closure = table["visitAncestor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get depth { 
_36c2.Closure closure = table["getDepth"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispatch(target) { 
_36c2.Closure closure = table["dispatch"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadDraggableScrollableNotification({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'draggableScrollableNotification'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




return  [RTManagedDraggableScrollableNotification(table: luaCallerArguments  [
0
], hydroState: hydroState, context: _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'context'
] : null, parentState: hydroState), extent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'extent'
] : null?.toDouble(), initialExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'initialExtent'
] : null?.toDouble(), maxExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxExtent'
] : null?.toDouble(), minExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minExtent'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_90c0.DraggableScrollableNotification>(boxer: ({required _90c0.DraggableScrollableNotification vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDraggableScrollableNotification(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
