import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/shifted_box.dart' as _a9e4;
import 'package:flutter/src/widgets/desktop_text_selection_toolbar_layout_delegate.dart' as _4e4e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDesktopTextSelectionToolbarLayoutDelegate extends _36c2.VMManagedBox<_4e4e.DesktopTextSelectionToolbarLayoutDelegate> {VMManagedDesktopTextSelectionToolbarLayoutDelegate({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'anchor'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.anchor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getConstraintsForChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.getConstraintsForChild(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getPositionForChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.getPositionForChild(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'shouldRelayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.shouldRelayout(_36c2.maybeUnBoxAndBuildArgument<_4e4e.DesktopTextSelectionToolbarLayoutDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'getSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.getSize(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _4e4e.DesktopTextSelectionToolbarLayoutDelegate vmObject;

 }

class RTManagedDesktopTextSelectionToolbarLayoutDelegate extends _4e4e.DesktopTextSelectionToolbarLayoutDelegate implements _36c2.Box<_4e4e.DesktopTextSelectionToolbarLayoutDelegate> {RTManagedDesktopTextSelectionToolbarLayoutDelegate({required _a643.Offset anchor, required this.table, required this.hydroState}) : super(anchor: anchor) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'anchor'
] = _36c2.maybeBoxObject(object: this.anchor, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getConstraintsForChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getConstraintsForChild(_36c2.maybeUnBoxAndBuildArgument<
            _be2e.BoxConstraints,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getPositionForChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getPositionForChild(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_shouldRelayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.shouldRelayout(_36c2.maybeUnBoxAndBuildArgument<
            _4e4e.DesktopTextSelectionToolbarLayoutDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getSize(_36c2.maybeUnBoxAndBuildArgument<
            _be2e.BoxConstraints,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
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

_4e4e.DesktopTextSelectionToolbarLayoutDelegate unwrap() => this;
_4e4e.DesktopTextSelectionToolbarLayoutDelegate get vmObject => this;
@_fac9.override _be2e.BoxConstraints getConstraintsForChild(constraints) { 
_36c2.Closure closure = table["getConstraintsForChild"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Offset getPositionForChild(size, childSize) { 
_36c2.Closure closure = table["getPositionForChild"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool shouldRelayout(oldDelegate) { 
_36c2.Closure closure = table["shouldRelayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Size getSize(constraints) { 
_36c2.Closure closure = table["getSize"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadDesktopTextSelectionToolbarLayoutDelegate({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'desktopTextSelectionToolbarLayoutDelegate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedDesktopTextSelectionToolbarLayoutDelegate(table: luaCallerArguments  [
0
], hydroState: hydroState, anchor: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'anchor'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_4e4e.DesktopTextSelectionToolbarLayoutDelegate>(boxer: ({required _4e4e.DesktopTextSelectionToolbarLayoutDelegate vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDesktopTextSelectionToolbarLayoutDelegate(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
