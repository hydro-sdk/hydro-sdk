import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;
import 'package:flutter/src/widgets/scroll_notification.dart' as _593c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedOverscrollNotification extends _36c2.VMManagedBox<_593c.OverscrollNotification> {VMManagedOverscrollNotification({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'dragDetails'
] = _36c2.maybeBoxObject<_4bc7.DragUpdateDetails?>(object: vmObject.dragDetails, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'overscroll'
] = vmObject.overscroll;
table  [
'velocity'
] = vmObject.velocity;
table  [
'metrics'
] = _36c2.maybeBoxObject<_96ae.ScrollMetrics>(object: vmObject.metrics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'context'
] = _36c2.maybeBoxObject<_e2dc.BuildContext?>(object: vmObject.context, hydroState: hydroState, table: _36c2.HydroTable());
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

final _593c.OverscrollNotification vmObject;

 }

class RTManagedOverscrollNotification extends _593c.OverscrollNotification implements _36c2.Box<_593c.OverscrollNotification> {RTManagedOverscrollNotification({_4bc7.DragUpdateDetails? dragDetails, required _fac9.double velocity, required _e2dc.BuildContext context, required _96ae.ScrollMetrics metrics, required _fac9.double overscroll, required this.table, required this.hydroState}) : super(dragDetails: dragDetails,velocity: velocity,context: context,metrics: metrics,overscroll: overscroll) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'dragDetails'
] = _36c2.maybeBoxObject(object: this.dragDetails, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'overscroll'
] = _36c2.maybeBoxObject(object: this.overscroll, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'velocity'
] = _36c2.maybeBoxObject(object: this.velocity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'metrics'
] = _36c2.maybeBoxObject(object: this.metrics, hydroState: hydroState, table: _36c2.HydroTable());
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

_593c.OverscrollNotification unwrap() => this;
_593c.OverscrollNotification get vmObject => this;
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
void loadOverscrollNotification({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'overscrollNotification'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




return  [RTManagedOverscrollNotification(table: luaCallerArguments  [
0
], hydroState: hydroState, dragDetails: _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragUpdateDetails?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'dragDetails'
] : null, parentState: hydroState), velocity: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'velocity'
] : null?.toDouble(), context: _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'context'
] : null, parentState: hydroState), metrics: _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'metrics'
] : null, parentState: hydroState), overscroll: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'overscroll'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_593c.OverscrollNotification>(boxer: ({required _593c.OverscrollNotification vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedOverscrollNotification(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
