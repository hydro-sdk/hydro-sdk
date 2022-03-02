import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/list_wheel_scroll_view.dart' as _7b25;
import 'package:flutter/src/widgets/scroll_configuration.dart' as _b028;
import 'package:flutter/src/widgets/scroll_controller.dart' as _9585;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedListWheelScrollView extends _36c2.VMManagedBox<_7b25.ListWheelScrollView> {VMManagedListWheelScrollView({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'controller'
] = _36c2.maybeBoxObject<_9585.ScrollController?>(object: vmObject.controller, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'physics'
] = _36c2.maybeBoxObject<_dbad.ScrollPhysics?>(object: vmObject.physics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'diameterRatio'
] = vmObject.diameterRatio;
table  [
'perspective'
] = vmObject.perspective;
table  [
'offAxisFraction'
] = vmObject.offAxisFraction;
table  [
'useMagnifier'
] = vmObject.useMagnifier;
table  [
'magnification'
] = vmObject.magnification;
table  [
'overAndUnderCenterOpacity'
] = vmObject.overAndUnderCenterOpacity;
table  [
'itemExtent'
] = vmObject.itemExtent;
table  [
'squeeze'
] = vmObject.squeeze;
table  [
'renderChildrenOutsideViewport'
] = vmObject.renderChildrenOutsideViewport;
table  [
'childDelegate'
] = _36c2.maybeBoxObject<_7b25.ListWheelChildDelegate>(object: vmObject.childDelegate, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'clipBehavior'
] = _a643.Clip.values.indexWhere((x) { return x == vmObject.clipBehavior; } );
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
'createState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.State>(object: vmObject.createState(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'createElement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.StatefulElement>(object: vmObject.createElement(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
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

final _7b25.ListWheelScrollView vmObject;

 }

class RTManagedListWheelScrollView extends _7b25.ListWheelScrollView implements _36c2.Box<_7b25.ListWheelScrollView> {RTManagedListWheelScrollView({required _a643.Clip clipBehavior, _9585.ScrollController? controller, required _fac9.double diameterRatio, _ab4a.Key? key, required _fac9.double magnification, required _fac9.double offAxisFraction, void Function(_fac9.int value)? onSelectedItemChanged, required _fac9.double overAndUnderCenterOpacity, required _fac9.double perspective, _dbad.ScrollPhysics? physics, required _fac9.bool renderChildrenOutsideViewport, _fac9.String? restorationId, _b028.ScrollBehavior? scrollBehavior, required _fac9.double squeeze, required _fac9.bool useMagnifier, required _fac9.List<_e2dc.Widget> children, required _fac9.double itemExtent, required this.table, required this.hydroState}) : super(clipBehavior: clipBehavior,controller: controller,diameterRatio: diameterRatio,key: key,magnification: magnification,offAxisFraction: offAxisFraction,onSelectedItemChanged: onSelectedItemChanged,overAndUnderCenterOpacity: overAndUnderCenterOpacity,perspective: perspective,physics: physics,renderChildrenOutsideViewport: renderChildrenOutsideViewport,restorationId: restorationId,scrollBehavior: scrollBehavior,squeeze: squeeze,useMagnifier: useMagnifier,children: children,itemExtent: itemExtent) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'controller'
] = _36c2.maybeBoxObject(object: this.controller, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'physics'
] = _36c2.maybeBoxObject(object: this.physics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'diameterRatio'
] = _36c2.maybeBoxObject(object: this.diameterRatio, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'perspective'
] = _36c2.maybeBoxObject(object: this.perspective, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'offAxisFraction'
] = _36c2.maybeBoxObject(object: this.offAxisFraction, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'useMagnifier'
] = _36c2.maybeBoxObject(object: this.useMagnifier, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'magnification'
] = _36c2.maybeBoxObject(object: this.magnification, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'overAndUnderCenterOpacity'
] = _36c2.maybeBoxObject(object: this.overAndUnderCenterOpacity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'itemExtent'
] = _36c2.maybeBoxObject(object: this.itemExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'squeeze'
] = _36c2.maybeBoxObject(object: this.squeeze, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'renderChildrenOutsideViewport'
] = _36c2.maybeBoxObject(object: this.renderChildrenOutsideViewport, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'childDelegate'
] = _36c2.maybeBoxObject(object: childDelegate, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'clipBehavior'
] = _a643.Clip.values.indexWhere((x) { return x == this.clipBehavior; } );
table  [
'restorationId'
] = _36c2.maybeBoxObject(object: this.restorationId, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scrollBehavior'
] = _36c2.maybeBoxObject(object: this.scrollBehavior, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'key'
] = _36c2.maybeBoxObject(object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_createState'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.createState(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
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
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
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

_7b25.ListWheelScrollView unwrap() => this;
_7b25.ListWheelScrollView get vmObject => this;
@_fac9.override _e2dc.State<_7b25.ListWheelScrollView> createState() { 
_36c2.Closure closure = table["createState"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_7b25.ListWheelScrollView>, _7b25.ListWheelScrollView>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e2dc.StatefulElement createElement() { 
_36c2.Closure closure = table["createElement"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
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
void loadListWheelScrollView({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'listWheelScrollView'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 





_36c2.Closure? unpackedonSelectedItemChanged=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSelectedItemChanged'
] : null;










return  [RTManagedListWheelScrollView(table: luaCallerArguments  [
0
], hydroState: hydroState, clipBehavior: _36c2.maybeUnBoxEnum(values: _a643.Clip.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'clipBehavior'
] : null), controller: _36c2.maybeUnBoxAndBuildArgument<_9585.ScrollController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'controller'
] : null, parentState: hydroState), diameterRatio: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'diameterRatio'
] : null?.toDouble(), key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), magnification: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'magnification'
] : null?.toDouble(), offAxisFraction: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'offAxisFraction'
] : null?.toDouble(), onSelectedItemChanged: unpackedonSelectedItemChanged != null ? (value) => unpackedonSelectedItemChanged.dispatch([luaCallerArguments[0],value],parentState:hydroState,) : null , overAndUnderCenterOpacity: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'overAndUnderCenterOpacity'
] : null?.toDouble(), perspective: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'perspective'
] : null?.toDouble(), physics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'physics'
] : null, parentState: hydroState), renderChildrenOutsideViewport: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'renderChildrenOutsideViewport'
] : null, restorationId: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'restorationId'
] : null, scrollBehavior: _36c2.maybeUnBoxAndBuildArgument<_b028.ScrollBehavior?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scrollBehavior'
] : null, parentState: hydroState), squeeze: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'squeeze'
] : null?.toDouble(), useMagnifier: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'useMagnifier'
] : null, children: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'children'
] : null, parentState: hydroState), itemExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'itemExtent'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_7b25.ListWheelScrollView>(boxer: ({required _7b25.ListWheelScrollView vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedListWheelScrollView(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
