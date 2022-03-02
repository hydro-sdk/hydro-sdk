import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;
import 'package:flutter/src/gestures/force_press.dart' as _6dde;
import 'package:flutter/src/gestures/long_press.dart' as _0586;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/gestures/scale.dart' as _bb2d;
import 'package:flutter/src/gestures/tap.dart' as _1275;
import 'package:flutter/src/rendering/proxy_box.dart' as _bf98;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/gesture_detector.dart' as _eed0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGestureDetector extends _36c2.VMManagedBox<_eed0.GestureDetector> {VMManagedGestureDetector({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'child'
] = _36c2.maybeBoxObject<_e2dc.Widget?>(object: vmObject.child, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'behavior'
] = _bf98.HitTestBehavior.values.indexWhere((x) { return x == vmObject.behavior; } );
table  [
'excludeFromSemantics'
] = vmObject.excludeFromSemantics;
table  [
'dragStartBehavior'
] = _02d2.DragStartBehavior.values.indexWhere((x) { return x == vmObject.dragStartBehavior; } );
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'build'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.Widget>(object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'createElement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.StatelessElement>(object: vmObject.createElement(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toStringShallow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.toStringShallow(joiner: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'joiner'
] : null, minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } );
table  [
'toStringDeep'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [vmObject.toStringDeep(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null), prefixLineOne: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'prefixLineOne'
] : null, prefixOtherLines: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'prefixOtherLines'
] : null),]; } );
table  [
'toDiagnosticsNode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.toDiagnosticsNode(name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null, style: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticsTreeStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'style'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _eed0.GestureDetector vmObject;

 }

class RTManagedGestureDetector extends _eed0.GestureDetector implements _36c2.Box<_eed0.GestureDetector> {RTManagedGestureDetector({_bf98.HitTestBehavior? behavior, _e2dc.Widget? child, required _02d2.DragStartBehavior dragStartBehavior, required _fac9.bool excludeFromSemantics, _ab4a.Key? key, void Function()? onDoubleTap, void Function()? onDoubleTapCancel, void Function(_1275.TapDownDetails details)? onDoubleTapDown, void Function(_6dde.ForcePressDetails details)? onForcePressEnd, void Function(_6dde.ForcePressDetails details)? onForcePressPeak, void Function(_6dde.ForcePressDetails details)? onForcePressStart, void Function(_6dde.ForcePressDetails details)? onForcePressUpdate, void Function()? onHorizontalDragCancel, void Function(_4bc7.DragDownDetails details)? onHorizontalDragDown, void Function(_4bc7.DragEndDetails details)? onHorizontalDragEnd, void Function(_4bc7.DragStartDetails details)? onHorizontalDragStart, void Function(_4bc7.DragUpdateDetails details)? onHorizontalDragUpdate, void Function()? onLongPress, void Function()? onLongPressCancel, void Function(_0586.LongPressDownDetails details)? onLongPressDown, void Function(_0586.LongPressEndDetails details)? onLongPressEnd, void Function(_0586.LongPressMoveUpdateDetails details)? onLongPressMoveUpdate, void Function(_0586.LongPressStartDetails details)? onLongPressStart, void Function()? onLongPressUp, void Function()? onPanCancel, void Function(_4bc7.DragDownDetails details)? onPanDown, void Function(_4bc7.DragEndDetails details)? onPanEnd, void Function(_4bc7.DragStartDetails details)? onPanStart, void Function(_4bc7.DragUpdateDetails details)? onPanUpdate, void Function(_bb2d.ScaleEndDetails details)? onScaleEnd, void Function(_bb2d.ScaleStartDetails details)? onScaleStart, void Function(_bb2d.ScaleUpdateDetails details)? onScaleUpdate, void Function()? onSecondaryLongPress, void Function()? onSecondaryLongPressCancel, void Function(_0586.LongPressDownDetails details)? onSecondaryLongPressDown, void Function(_0586.LongPressEndDetails details)? onSecondaryLongPressEnd, void Function(_0586.LongPressMoveUpdateDetails details)? onSecondaryLongPressMoveUpdate, void Function(_0586.LongPressStartDetails details)? onSecondaryLongPressStart, void Function()? onSecondaryLongPressUp, void Function()? onSecondaryTap, void Function()? onSecondaryTapCancel, void Function(_1275.TapDownDetails details)? onSecondaryTapDown, void Function(_1275.TapUpDetails details)? onSecondaryTapUp, void Function()? onTap, void Function()? onTapCancel, void Function(_1275.TapDownDetails details)? onTapDown, void Function(_1275.TapUpDetails details)? onTapUp, void Function()? onTertiaryLongPress, void Function()? onTertiaryLongPressCancel, void Function(_0586.LongPressDownDetails details)? onTertiaryLongPressDown, void Function(_0586.LongPressEndDetails details)? onTertiaryLongPressEnd, void Function(_0586.LongPressMoveUpdateDetails details)? onTertiaryLongPressMoveUpdate, void Function(_0586.LongPressStartDetails details)? onTertiaryLongPressStart, void Function()? onTertiaryLongPressUp, void Function()? onTertiaryTapCancel, void Function(_1275.TapDownDetails details)? onTertiaryTapDown, void Function(_1275.TapUpDetails details)? onTertiaryTapUp, void Function()? onVerticalDragCancel, void Function(_4bc7.DragDownDetails details)? onVerticalDragDown, void Function(_4bc7.DragEndDetails details)? onVerticalDragEnd, void Function(_4bc7.DragStartDetails details)? onVerticalDragStart, void Function(_4bc7.DragUpdateDetails details)? onVerticalDragUpdate, required this.table, required this.hydroState}) : super(behavior: behavior,child: child,dragStartBehavior: dragStartBehavior,excludeFromSemantics: excludeFromSemantics,key: key,onDoubleTap: onDoubleTap,onDoubleTapCancel: onDoubleTapCancel,onDoubleTapDown: onDoubleTapDown,onForcePressEnd: onForcePressEnd,onForcePressPeak: onForcePressPeak,onForcePressStart: onForcePressStart,onForcePressUpdate: onForcePressUpdate,onHorizontalDragCancel: onHorizontalDragCancel,onHorizontalDragDown: onHorizontalDragDown,onHorizontalDragEnd: onHorizontalDragEnd,onHorizontalDragStart: onHorizontalDragStart,onHorizontalDragUpdate: onHorizontalDragUpdate,onLongPress: onLongPress,onLongPressCancel: onLongPressCancel,onLongPressDown: onLongPressDown,onLongPressEnd: onLongPressEnd,onLongPressMoveUpdate: onLongPressMoveUpdate,onLongPressStart: onLongPressStart,onLongPressUp: onLongPressUp,onPanCancel: onPanCancel,onPanDown: onPanDown,onPanEnd: onPanEnd,onPanStart: onPanStart,onPanUpdate: onPanUpdate,onScaleEnd: onScaleEnd,onScaleStart: onScaleStart,onScaleUpdate: onScaleUpdate,onSecondaryLongPress: onSecondaryLongPress,onSecondaryLongPressCancel: onSecondaryLongPressCancel,onSecondaryLongPressDown: onSecondaryLongPressDown,onSecondaryLongPressEnd: onSecondaryLongPressEnd,onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate,onSecondaryLongPressStart: onSecondaryLongPressStart,onSecondaryLongPressUp: onSecondaryLongPressUp,onSecondaryTap: onSecondaryTap,onSecondaryTapCancel: onSecondaryTapCancel,onSecondaryTapDown: onSecondaryTapDown,onSecondaryTapUp: onSecondaryTapUp,onTap: onTap,onTapCancel: onTapCancel,onTapDown: onTapDown,onTapUp: onTapUp,onTertiaryLongPress: onTertiaryLongPress,onTertiaryLongPressCancel: onTertiaryLongPressCancel,onTertiaryLongPressDown: onTertiaryLongPressDown,onTertiaryLongPressEnd: onTertiaryLongPressEnd,onTertiaryLongPressMoveUpdate: onTertiaryLongPressMoveUpdate,onTertiaryLongPressStart: onTertiaryLongPressStart,onTertiaryLongPressUp: onTertiaryLongPressUp,onTertiaryTapCancel: onTertiaryTapCancel,onTertiaryTapDown: onTertiaryTapDown,onTertiaryTapUp: onTertiaryTapUp,onVerticalDragCancel: onVerticalDragCancel,onVerticalDragDown: onVerticalDragDown,onVerticalDragEnd: onVerticalDragEnd,onVerticalDragStart: onVerticalDragStart,onVerticalDragUpdate: onVerticalDragUpdate) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'child'
] = _36c2.maybeBoxObject(object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'behavior'
] = _bf98.HitTestBehavior.values.indexWhere((x) { return x == this.behavior; } );
table  [
'excludeFromSemantics'
] = _36c2.maybeBoxObject(object: this.excludeFromSemantics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'dragStartBehavior'
] = _02d2.DragStartBehavior.values.indexWhere((x) { return x == this.dragStartBehavior; } );
table  [
'key'
] = _36c2.maybeBoxObject(object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_build'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.build(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_createElement'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.createElement(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toStringShort'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringShort(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
table['_dart_toStringShallow'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringShallow(
            joiner:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['joiner']
                        : null,
                    parentState: hydroState),
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toStringDeep'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['prefixLineOne']
                        : null,
                    parentState: hydroState),
            prefixOtherLines:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['prefixOtherLines']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toDiagnosticsNode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toDiagnosticsNode(
            name:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['name']
                        : null,
                    parentState: hydroState),
            style: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticsTreeStyle.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['style']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugDescribeChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugDescribeChildren(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_eed0.GestureDetector unwrap() => this;
_eed0.GestureDetector get vmObject => this;
@_fac9.override _e2dc.Widget build(context) { 
_36c2.Closure closure = table["build"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e2dc.StatelessElement createElement() { 
_36c2.Closure closure = table["createElement"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.StatelessElement, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShallow({_fac9.String joiner = ', ', _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) { 
_36c2.Closure closure = table["toStringShallow"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringDeep({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug, _fac9.String prefixLineOne = '', _fac9.String? prefixOtherLines}) { 
_36c2.Closure closure = table["toStringDeep"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() { 
_36c2.Closure closure = table["debugDescribeChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadGestureDetector({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'gestureDetector'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




_36c2.Closure? unpackedonDoubleTap=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDoubleTap'
] : null;
_36c2.Closure? unpackedonDoubleTapCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDoubleTapCancel'
] : null;
_36c2.Closure? unpackedonDoubleTapDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDoubleTapDown'
] : null;
_36c2.Closure? unpackedonForcePressEnd=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onForcePressEnd'
] : null;
_36c2.Closure? unpackedonForcePressPeak=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onForcePressPeak'
] : null;
_36c2.Closure? unpackedonForcePressStart=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onForcePressStart'
] : null;
_36c2.Closure? unpackedonForcePressUpdate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onForcePressUpdate'
] : null;
_36c2.Closure? unpackedonHorizontalDragCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onHorizontalDragCancel'
] : null;
_36c2.Closure? unpackedonHorizontalDragDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onHorizontalDragDown'
] : null;
_36c2.Closure? unpackedonHorizontalDragEnd=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onHorizontalDragEnd'
] : null;
_36c2.Closure? unpackedonHorizontalDragStart=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onHorizontalDragStart'
] : null;
_36c2.Closure? unpackedonHorizontalDragUpdate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onHorizontalDragUpdate'
] : null;
_36c2.Closure? unpackedonLongPress=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPress'
] : null;
_36c2.Closure? unpackedonLongPressCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPressCancel'
] : null;
_36c2.Closure? unpackedonLongPressDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPressDown'
] : null;
_36c2.Closure? unpackedonLongPressEnd=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPressEnd'
] : null;
_36c2.Closure? unpackedonLongPressMoveUpdate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPressMoveUpdate'
] : null;
_36c2.Closure? unpackedonLongPressStart=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPressStart'
] : null;
_36c2.Closure? unpackedonLongPressUp=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPressUp'
] : null;
_36c2.Closure? unpackedonPanCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onPanCancel'
] : null;
_36c2.Closure? unpackedonPanDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onPanDown'
] : null;
_36c2.Closure? unpackedonPanEnd=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onPanEnd'
] : null;
_36c2.Closure? unpackedonPanStart=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onPanStart'
] : null;
_36c2.Closure? unpackedonPanUpdate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onPanUpdate'
] : null;
_36c2.Closure? unpackedonScaleEnd=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScaleEnd'
] : null;
_36c2.Closure? unpackedonScaleStart=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScaleStart'
] : null;
_36c2.Closure? unpackedonScaleUpdate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScaleUpdate'
] : null;
_36c2.Closure? unpackedonSecondaryLongPress=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryLongPress'
] : null;
_36c2.Closure? unpackedonSecondaryLongPressCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryLongPressCancel'
] : null;
_36c2.Closure? unpackedonSecondaryLongPressDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryLongPressDown'
] : null;
_36c2.Closure? unpackedonSecondaryLongPressEnd=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryLongPressEnd'
] : null;
_36c2.Closure? unpackedonSecondaryLongPressMoveUpdate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryLongPressMoveUpdate'
] : null;
_36c2.Closure? unpackedonSecondaryLongPressStart=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryLongPressStart'
] : null;
_36c2.Closure? unpackedonSecondaryLongPressUp=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryLongPressUp'
] : null;
_36c2.Closure? unpackedonSecondaryTap=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryTap'
] : null;
_36c2.Closure? unpackedonSecondaryTapCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryTapCancel'
] : null;
_36c2.Closure? unpackedonSecondaryTapDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryTapDown'
] : null;
_36c2.Closure? unpackedonSecondaryTapUp=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSecondaryTapUp'
] : null;
_36c2.Closure? unpackedonTap=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTap'
] : null;
_36c2.Closure? unpackedonTapCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTapCancel'
] : null;
_36c2.Closure? unpackedonTapDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTapDown'
] : null;
_36c2.Closure? unpackedonTapUp=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTapUp'
] : null;
_36c2.Closure? unpackedonTertiaryLongPress=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryLongPress'
] : null;
_36c2.Closure? unpackedonTertiaryLongPressCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryLongPressCancel'
] : null;
_36c2.Closure? unpackedonTertiaryLongPressDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryLongPressDown'
] : null;
_36c2.Closure? unpackedonTertiaryLongPressEnd=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryLongPressEnd'
] : null;
_36c2.Closure? unpackedonTertiaryLongPressMoveUpdate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryLongPressMoveUpdate'
] : null;
_36c2.Closure? unpackedonTertiaryLongPressStart=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryLongPressStart'
] : null;
_36c2.Closure? unpackedonTertiaryLongPressUp=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryLongPressUp'
] : null;
_36c2.Closure? unpackedonTertiaryTapCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryTapCancel'
] : null;
_36c2.Closure? unpackedonTertiaryTapDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryTapDown'
] : null;
_36c2.Closure? unpackedonTertiaryTapUp=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTertiaryTapUp'
] : null;
_36c2.Closure? unpackedonVerticalDragCancel=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onVerticalDragCancel'
] : null;
_36c2.Closure? unpackedonVerticalDragDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onVerticalDragDown'
] : null;
_36c2.Closure? unpackedonVerticalDragEnd=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onVerticalDragEnd'
] : null;
_36c2.Closure? unpackedonVerticalDragStart=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onVerticalDragStart'
] : null;
_36c2.Closure? unpackedonVerticalDragUpdate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onVerticalDragUpdate'
] : null;
return  [RTManagedGestureDetector(table: luaCallerArguments  [
0
], hydroState: hydroState, behavior: _36c2.maybeUnBoxEnum(values: _bf98.HitTestBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'behavior'
] : null), child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'child'
] : null, parentState: hydroState), dragStartBehavior: _36c2.maybeUnBoxEnum(values: _02d2.DragStartBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'dragStartBehavior'
] : null), excludeFromSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'excludeFromSemantics'
] : null, key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), onDoubleTap: unpackedonDoubleTap != null ? () => unpackedonDoubleTap.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDoubleTapCancel: unpackedonDoubleTapCancel != null ? () => unpackedonDoubleTapCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDoubleTapDown: unpackedonDoubleTapDown != null ? (details) => unpackedonDoubleTapDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onForcePressEnd: unpackedonForcePressEnd != null ? (details) => unpackedonForcePressEnd.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onForcePressPeak: unpackedonForcePressPeak != null ? (details) => unpackedonForcePressPeak.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onForcePressStart: unpackedonForcePressStart != null ? (details) => unpackedonForcePressStart.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onForcePressUpdate: unpackedonForcePressUpdate != null ? (details) => unpackedonForcePressUpdate.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onHorizontalDragCancel: unpackedonHorizontalDragCancel != null ? () => unpackedonHorizontalDragCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onHorizontalDragDown: unpackedonHorizontalDragDown != null ? (details) => unpackedonHorizontalDragDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onHorizontalDragEnd: unpackedonHorizontalDragEnd != null ? (details) => unpackedonHorizontalDragEnd.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onHorizontalDragStart: unpackedonHorizontalDragStart != null ? (details) => unpackedonHorizontalDragStart.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onHorizontalDragUpdate: unpackedonHorizontalDragUpdate != null ? (details) => unpackedonHorizontalDragUpdate.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onLongPress: unpackedonLongPress != null ? () => unpackedonLongPress.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onLongPressCancel: unpackedonLongPressCancel != null ? () => unpackedonLongPressCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onLongPressDown: unpackedonLongPressDown != null ? (details) => unpackedonLongPressDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onLongPressEnd: unpackedonLongPressEnd != null ? (details) => unpackedonLongPressEnd.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onLongPressMoveUpdate: unpackedonLongPressMoveUpdate != null ? (details) => unpackedonLongPressMoveUpdate.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onLongPressStart: unpackedonLongPressStart != null ? (details) => unpackedonLongPressStart.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onLongPressUp: unpackedonLongPressUp != null ? () => unpackedonLongPressUp.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onPanCancel: unpackedonPanCancel != null ? () => unpackedonPanCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onPanDown: unpackedonPanDown != null ? (details) => unpackedonPanDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onPanEnd: unpackedonPanEnd != null ? (details) => unpackedonPanEnd.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onPanStart: unpackedonPanStart != null ? (details) => unpackedonPanStart.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onPanUpdate: unpackedonPanUpdate != null ? (details) => unpackedonPanUpdate.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onScaleEnd: unpackedonScaleEnd != null ? (details) => unpackedonScaleEnd.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onScaleStart: unpackedonScaleStart != null ? (details) => unpackedonScaleStart.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onScaleUpdate: unpackedonScaleUpdate != null ? (details) => unpackedonScaleUpdate.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onSecondaryLongPress: unpackedonSecondaryLongPress != null ? () => unpackedonSecondaryLongPress.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onSecondaryLongPressCancel: unpackedonSecondaryLongPressCancel != null ? () => unpackedonSecondaryLongPressCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onSecondaryLongPressDown: unpackedonSecondaryLongPressDown != null ? (details) => unpackedonSecondaryLongPressDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onSecondaryLongPressEnd: unpackedonSecondaryLongPressEnd != null ? (details) => unpackedonSecondaryLongPressEnd.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onSecondaryLongPressMoveUpdate: unpackedonSecondaryLongPressMoveUpdate != null ? (details) => unpackedonSecondaryLongPressMoveUpdate.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onSecondaryLongPressStart: unpackedonSecondaryLongPressStart != null ? (details) => unpackedonSecondaryLongPressStart.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onSecondaryLongPressUp: unpackedonSecondaryLongPressUp != null ? () => unpackedonSecondaryLongPressUp.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onSecondaryTap: unpackedonSecondaryTap != null ? () => unpackedonSecondaryTap.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onSecondaryTapCancel: unpackedonSecondaryTapCancel != null ? () => unpackedonSecondaryTapCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onSecondaryTapDown: unpackedonSecondaryTapDown != null ? (details) => unpackedonSecondaryTapDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onSecondaryTapUp: unpackedonSecondaryTapUp != null ? (details) => unpackedonSecondaryTapUp.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onTap: unpackedonTap != null ? () => unpackedonTap.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onTapCancel: unpackedonTapCancel != null ? () => unpackedonTapCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onTapDown: unpackedonTapDown != null ? (details) => unpackedonTapDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onTapUp: unpackedonTapUp != null ? (details) => unpackedonTapUp.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onTertiaryLongPress: unpackedonTertiaryLongPress != null ? () => unpackedonTertiaryLongPress.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onTertiaryLongPressCancel: unpackedonTertiaryLongPressCancel != null ? () => unpackedonTertiaryLongPressCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onTertiaryLongPressDown: unpackedonTertiaryLongPressDown != null ? (details) => unpackedonTertiaryLongPressDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onTertiaryLongPressEnd: unpackedonTertiaryLongPressEnd != null ? (details) => unpackedonTertiaryLongPressEnd.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onTertiaryLongPressMoveUpdate: unpackedonTertiaryLongPressMoveUpdate != null ? (details) => unpackedonTertiaryLongPressMoveUpdate.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onTertiaryLongPressStart: unpackedonTertiaryLongPressStart != null ? (details) => unpackedonTertiaryLongPressStart.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onTertiaryLongPressUp: unpackedonTertiaryLongPressUp != null ? () => unpackedonTertiaryLongPressUp.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onTertiaryTapCancel: unpackedonTertiaryTapCancel != null ? () => unpackedonTertiaryTapCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onTertiaryTapDown: unpackedonTertiaryTapDown != null ? (details) => unpackedonTertiaryTapDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onTertiaryTapUp: unpackedonTertiaryTapUp != null ? (details) => unpackedonTertiaryTapUp.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onVerticalDragCancel: unpackedonVerticalDragCancel != null ? () => unpackedonVerticalDragCancel.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onVerticalDragDown: unpackedonVerticalDragDown != null ? (details) => unpackedonVerticalDragDown.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onVerticalDragEnd: unpackedonVerticalDragEnd != null ? (details) => unpackedonVerticalDragEnd.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onVerticalDragStart: unpackedonVerticalDragStart != null ? (details) => unpackedonVerticalDragStart.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null , onVerticalDragUpdate: unpackedonVerticalDragUpdate != null ? (details) => unpackedonVerticalDragUpdate.dispatch([luaCallerArguments[0],details],parentState:hydroState,) : null )]; } );
_36c2.registerBoxer<_eed0.GestureDetector>(boxer: ({required _eed0.GestureDetector vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedGestureDetector(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
