import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/rendering/viewport_offset.dart' as _f376;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_configuration.dart' as _b028;
import 'package:flutter/src/widgets/scroll_controller.dart' as _9585;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;
import 'package:flutter/src/widgets/scroll_position.dart' as _6c49;
import 'package:flutter/src/widgets/scrollable.dart' as _538d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollable extends _36c2.VMManagedBox<_538d.Scrollable> {VMManagedScrollable({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'axisDirection'
] = _487f.AxisDirection.values.indexWhere((x) { return x == vmObject.axisDirection; } );
table  [
'controller'
] = _36c2.maybeBoxObject<_9585.ScrollController?>(object: vmObject.controller, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'physics'
] = _36c2.maybeBoxObject<_dbad.ScrollPhysics?>(object: vmObject.physics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'excludeFromSemantics'
] = vmObject.excludeFromSemantics;
table  [
'semanticChildCount'
] = vmObject.semanticChildCount;
table  [
'dragStartBehavior'
] = _02d2.DragStartBehavior.values.indexWhere((x) { return x == vmObject.dragStartBehavior; } );
table  [
'restorationId'
] = vmObject.restorationId;
table  [
'scrollBehavior'
] = _36c2.maybeBoxObject<_b028.ScrollBehavior?>(object: vmObject.scrollBehavior, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getAxis'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.Axis.values.indexWhere((x) { return x == vmObject.axis; } ),]; } );
table  [
'createState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_538d.ScrollableState>(object: vmObject.createState(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'createElement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.StatefulElement>(object: vmObject.createElement(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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

final _538d.Scrollable vmObject;

 }

class RTManagedScrollable extends _538d.Scrollable implements _36c2.Box<_538d.Scrollable> {RTManagedScrollable({required _487f.AxisDirection axisDirection, _9585.ScrollController? controller, required _02d2.DragStartBehavior dragStartBehavior, required _fac9.bool excludeFromSemantics, _fac9.double Function(_538d.ScrollIncrementDetails details)? incrementCalculator, _ab4a.Key? key, _dbad.ScrollPhysics? physics, _fac9.String? restorationId, _b028.ScrollBehavior? scrollBehavior, _fac9.int? semanticChildCount, required _e2dc.Widget Function(_e2dc.BuildContext context, _f376.ViewportOffset position) viewportBuilder, required this.table, required this.hydroState}) : super(axisDirection: axisDirection,controller: controller,dragStartBehavior: dragStartBehavior,excludeFromSemantics: excludeFromSemantics,incrementCalculator: incrementCalculator,key: key,physics: physics,restorationId: restorationId,scrollBehavior: scrollBehavior,semanticChildCount: semanticChildCount,viewportBuilder: viewportBuilder) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'axisDirection'
] = _487f.AxisDirection.values.indexWhere((x) { return x == this.axisDirection; } );
table  [
'controller'
] = _36c2.maybeBoxObject(object: this.controller, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'physics'
] = _36c2.maybeBoxObject(object: this.physics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'excludeFromSemantics'
] = _36c2.maybeBoxObject(object: this.excludeFromSemantics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'semanticChildCount'
] = _36c2.maybeBoxObject(object: this.semanticChildCount, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'dragStartBehavior'
] = _02d2.DragStartBehavior.values.indexWhere((x) { return x == this.dragStartBehavior; } );
table  [
'restorationId'
] = _36c2.maybeBoxObject(object: this.restorationId, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scrollBehavior'
] = _36c2.maybeBoxObject(object: this.scrollBehavior, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'key'
] = _36c2.maybeBoxObject(object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getAxis'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.axis];
});
table['_dart_createState'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.createState(),
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

_538d.Scrollable unwrap() => this;
_538d.Scrollable get vmObject => this;
@_fac9.override _487f.Axis get axis { 
_36c2.Closure closure = table["getAxis"];
return _36c2.maybeUnBoxEnum(values: _487f.Axis.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _538d.ScrollableState createState() { 
_36c2.Closure closure = table["createState"];
return _36c2.maybeUnBoxAndBuildArgument<_538d.ScrollableState, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e2dc.StatefulElement createElement() { 
_36c2.Closure closure = table["createElement"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadScrollable({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'scrollable'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



_36c2.Closure? unpackedincrementCalculator=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'incrementCalculator'
] : null;





_36c2.Closure unpackedviewportBuilder=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewportBuilder'
] : null;
return  [RTManagedScrollable(table: luaCallerArguments  [
0
], hydroState: hydroState, axisDirection: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'axisDirection'
] : null), controller: _36c2.maybeUnBoxAndBuildArgument<_9585.ScrollController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'controller'
] : null, parentState: hydroState), dragStartBehavior: _36c2.maybeUnBoxEnum(values: _02d2.DragStartBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'dragStartBehavior'
] : null), excludeFromSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'excludeFromSemantics'
] : null, incrementCalculator: unpackedincrementCalculator != null ? (details) => unpackedincrementCalculator.dispatch([luaCallerArguments[0],details],parentState:hydroState,)[0]?.toDouble() : null , key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), physics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'physics'
] : null, parentState: hydroState), restorationId: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'restorationId'
] : null, scrollBehavior: _36c2.maybeUnBoxAndBuildArgument<_b028.ScrollBehavior?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scrollBehavior'
] : null, parentState: hydroState), semanticChildCount: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'semanticChildCount'
] : null, viewportBuilder: (context, position) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(unpackedviewportBuilder.dispatch([luaCallerArguments[0],context,position],parentState:hydroState,)[0], parentState: hydroState))]; } );
table  [
'scrollableOf'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = _538d.Scrollable.of(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_538d.ScrollableState?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'scrollableRecommendDeferredLoadingForContext'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_538d.Scrollable.recommendDeferredLoadingForContext(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'scrollableEnsureVisible'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return [_36c2.maybeBoxObject<_7de1.Future>(object: _538d.Scrollable.ensureVisible(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), alignment: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'alignment'
] : null?.toDouble(), alignmentPolicy: _36c2.maybeUnBoxEnum(values: _6c49.ScrollPositionAlignmentPolicy.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'alignmentPolicy'
] : null), curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'curve'
] : null, parentState: hydroState), duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'duration'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
_36c2.registerBoxer<_538d.Scrollable>(boxer: ({required _538d.Scrollable vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedScrollable(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
