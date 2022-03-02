import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/notification_listener.dart' as _c8d8;
import 'package:flutter/src/widgets/overscroll_indicator.dart' as _a0c8;
import 'package:flutter/src/widgets/scroll_notification.dart' as _593c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedOverscrollIndicatorNotification extends _36c2.VMManagedBox<_a0c8.OverscrollIndicatorNotification> {VMManagedOverscrollIndicatorNotification({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'leading'
] = vmObject.leading;
table  [
'paintOffset'
] = vmObject.paintOffset;
table  [
'disallowGlow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.disallowGlow();
return []; } );
table  [
'disallowIndicator'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.disallowIndicator();
return []; } );
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

final _a0c8.OverscrollIndicatorNotification vmObject;

 }

class RTManagedOverscrollIndicatorNotification extends _a0c8.OverscrollIndicatorNotification implements _36c2.Box<_a0c8.OverscrollIndicatorNotification> {RTManagedOverscrollIndicatorNotification({required _fac9.bool leading, required this.table, required this.hydroState}) : super(leading: leading) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'leading'
] = _36c2.maybeBoxObject(object: this.leading, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'paintOffset'
] = _36c2.maybeBoxObject(object: paintOffset, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_disallowGlow'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.disallowGlow();
  return [];
});
table['_dart_disallowIndicator'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.disallowIndicator();
  return [];
});
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

_a0c8.OverscrollIndicatorNotification unwrap() => this;
_a0c8.OverscrollIndicatorNotification get vmObject => this;
@_fac9.override void disallowGlow() { 
_36c2.Closure closure = table["disallowGlow"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void disallowIndicator() { 
_36c2.Closure closure = table["disallowIndicator"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
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
void loadOverscrollIndicatorNotification({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'overscrollIndicatorNotification'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedOverscrollIndicatorNotification(table: luaCallerArguments  [
0
], hydroState: hydroState, leading: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'leading'
] : null)]; } );
_36c2.registerBoxer<_a0c8.OverscrollIndicatorNotification>(boxer: ({required _a0c8.OverscrollIndicatorNotification vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedOverscrollIndicatorNotification(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
