import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/rendering/viewport_offset.dart' as _f376;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_configuration.dart' as _b028;
import 'package:flutter/src/widgets/scroll_controller.dart' as _9585;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;
import 'package:flutter/src/widgets/scroll_view.dart' as _2b56;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCustomScrollView extends _36c2.VMManagedBox<_2b56.CustomScrollView> {VMManagedCustomScrollView({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'slivers'
] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>>(object: vmObject.slivers, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scrollDirection'
] = _487f.Axis.values.indexWhere((x) { return x == vmObject.scrollDirection; } );
table  [
'reverse'
] = vmObject.reverse;
table  [
'controller'
] = _36c2.maybeBoxObject<_9585.ScrollController?>(object: vmObject.controller, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'primary'
] = vmObject.primary;
table  [
'physics'
] = _36c2.maybeBoxObject<_dbad.ScrollPhysics?>(object: vmObject.physics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scrollBehavior'
] = _36c2.maybeBoxObject<_b028.ScrollBehavior?>(object: vmObject.scrollBehavior, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'shrinkWrap'
] = vmObject.shrinkWrap;
table  [
'center'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.center, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'anchor'
] = vmObject.anchor;
table  [
'cacheExtent'
] = vmObject.cacheExtent;
table  [
'semanticChildCount'
] = vmObject.semanticChildCount;
table  [
'dragStartBehavior'
] = _02d2.DragStartBehavior.values.indexWhere((x) { return x == vmObject.dragStartBehavior; } );
table  [
'keyboardDismissBehavior'
] = _2b56.ScrollViewKeyboardDismissBehavior.values.indexWhere((x) { return x == vmObject.keyboardDismissBehavior; } );
table  [
'restorationId'
] = vmObject.restorationId;
table  [
'clipBehavior'
] = _a643.Clip.values.indexWhere((x) { return x == vmObject.clipBehavior; } );
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'buildSlivers'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.buildSlivers(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)).map((x) => _36c2.maybeBoxObject<_e2dc.Widget>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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

final _2b56.CustomScrollView vmObject;

 }

class RTManagedCustomScrollView extends _2b56.CustomScrollView implements _36c2.Box<_2b56.CustomScrollView> {RTManagedCustomScrollView({required _fac9.double anchor, _fac9.double? cacheExtent, _ab4a.Key? center, required _a643.Clip clipBehavior, _9585.ScrollController? controller, required _02d2.DragStartBehavior dragStartBehavior, _ab4a.Key? key, required _2b56.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior, _dbad.ScrollPhysics? physics, _fac9.bool? primary, _fac9.String? restorationId, required _fac9.bool reverse, _b028.ScrollBehavior? scrollBehavior, required _487f.Axis scrollDirection, _fac9.int? semanticChildCount, required _fac9.bool shrinkWrap, required _fac9.List<_e2dc.Widget> slivers, required this.table, required this.hydroState}) : super(anchor: anchor,cacheExtent: cacheExtent,center: center,clipBehavior: clipBehavior,controller: controller,dragStartBehavior: dragStartBehavior,key: key,keyboardDismissBehavior: keyboardDismissBehavior,physics: physics,primary: primary,restorationId: restorationId,reverse: reverse,scrollBehavior: scrollBehavior,scrollDirection: scrollDirection,semanticChildCount: semanticChildCount,shrinkWrap: shrinkWrap,slivers: slivers) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'slivers'
] = _36c2.maybeBoxObject(object: this.slivers, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scrollDirection'
] = _487f.Axis.values.indexWhere((x) { return x == this.scrollDirection; } );
table  [
'reverse'
] = _36c2.maybeBoxObject(object: this.reverse, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'controller'
] = _36c2.maybeBoxObject(object: this.controller, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'primary'
] = _36c2.maybeBoxObject(object: this.primary, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'physics'
] = _36c2.maybeBoxObject(object: this.physics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scrollBehavior'
] = _36c2.maybeBoxObject(object: this.scrollBehavior, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'shrinkWrap'
] = _36c2.maybeBoxObject(object: this.shrinkWrap, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'center'
] = _36c2.maybeBoxObject(object: this.center, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'anchor'
] = _36c2.maybeBoxObject(object: this.anchor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'cacheExtent'
] = _36c2.maybeBoxObject(object: this.cacheExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'semanticChildCount'
] = _36c2.maybeBoxObject(object: this.semanticChildCount, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'dragStartBehavior'
] = _02d2.DragStartBehavior.values.indexWhere((x) { return x == this.dragStartBehavior; } );
table  [
'keyboardDismissBehavior'
] = _2b56.ScrollViewKeyboardDismissBehavior.values.indexWhere((x) { return x == this.keyboardDismissBehavior; } );
table  [
'restorationId'
] = _36c2.maybeBoxObject(object: this.restorationId, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'clipBehavior'
] = _a643.Clip.values.indexWhere((x) { return x == this.clipBehavior; } );
table  [
'key'
] = _36c2.maybeBoxObject(object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_buildSlivers'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.buildSlivers(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _487f.AxisDirection.values.indexWhere((x) {
      return x ==
          super.getDirection(_36c2.maybeUnBoxAndBuildArgument<
              _e2dc.BuildContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
    })
  ];
});
table['_dart_buildViewport'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.buildViewport(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_f376.ViewportOffset,
                _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
            _36c2.maybeUnBoxEnum(
                values: _487f.AxisDirection.values,
                boxedEnum: luaCallerArguments[3]),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>,
                _e2dc.Widget>(luaCallerArguments[4], parentState: hydroState)),
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

_2b56.CustomScrollView unwrap() => this;
_2b56.CustomScrollView get vmObject => this;
@_fac9.override _fac9.List<_e2dc.Widget> buildSlivers(context) { 
_36c2.Closure closure = table["buildSlivers"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _487f.AxisDirection getDirection(context) { 
_36c2.Closure closure = table["getDirection"];
return _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _e2dc.Widget buildViewport(context, offset, axisDirection, slivers) { 
_36c2.Closure closure = table["buildViewport"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadCustomScrollView({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'customScrollView'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
















return  [RTManagedCustomScrollView(table: luaCallerArguments  [
0
], hydroState: hydroState, anchor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'anchor'
] : null?.toDouble(), cacheExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cacheExtent'
] : null?.toDouble(), center: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'center'
] : null, parentState: hydroState), clipBehavior: _36c2.maybeUnBoxEnum(values: _a643.Clip.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'clipBehavior'
] : null), controller: _36c2.maybeUnBoxAndBuildArgument<_9585.ScrollController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'controller'
] : null, parentState: hydroState), dragStartBehavior: _36c2.maybeUnBoxEnum(values: _02d2.DragStartBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'dragStartBehavior'
] : null), key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), keyboardDismissBehavior: _36c2.maybeUnBoxEnum(values: _2b56.ScrollViewKeyboardDismissBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'keyboardDismissBehavior'
] : null), physics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'physics'
] : null, parentState: hydroState), primary: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'primary'
] : null, restorationId: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'restorationId'
] : null, reverse: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'reverse'
] : null, scrollBehavior: _36c2.maybeUnBoxAndBuildArgument<_b028.ScrollBehavior?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scrollBehavior'
] : null, parentState: hydroState), scrollDirection: _36c2.maybeUnBoxEnum(values: _487f.Axis.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scrollDirection'
] : null), semanticChildCount: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'semanticChildCount'
] : null, shrinkWrap: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'shrinkWrap'
] : null, slivers: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'slivers'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_2b56.CustomScrollView>(boxer: ({required _2b56.CustomScrollView vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedCustomScrollView(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
