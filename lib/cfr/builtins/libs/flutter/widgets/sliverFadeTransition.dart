import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/proxy_sliver.dart' as _26cc;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/transitions.dart' as _d7ad;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverFadeTransition extends _36c2.VMManagedBox<_d7ad.SliverFadeTransition> {VMManagedSliverFadeTransition({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'opacity'
] = _36c2.maybeBoxObject<_86ca.Animation>(object: vmObject.opacity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'alwaysIncludeSemantics'
] = vmObject.alwaysIncludeSemantics;
table  [
'child'
] = _36c2.maybeBoxObject<_e2dc.Widget?>(object: vmObject.child, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'createRenderObject'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_26cc.RenderSliverAnimatedOpacity>(object: vmObject.createRenderObject(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'updateRenderObject'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.updateRenderObject(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_26cc.RenderSliverAnimatedOpacity, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'createElement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.SingleChildRenderObjectElement>(object: vmObject.createElement(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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

final _d7ad.SliverFadeTransition vmObject;

 }

class RTManagedSliverFadeTransition extends _d7ad.SliverFadeTransition implements _36c2.Box<_d7ad.SliverFadeTransition> {RTManagedSliverFadeTransition({required _fac9.bool alwaysIncludeSemantics, _ab4a.Key? key, _e2dc.Widget? sliver, required _86ca.Animation<_fac9.double> opacity, required this.table, required this.hydroState}) : super(alwaysIncludeSemantics: alwaysIncludeSemantics,key: key,sliver: sliver,opacity: opacity) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'opacity'
] = _36c2.maybeBoxObject(object: this.opacity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'alwaysIncludeSemantics'
] = _36c2.maybeBoxObject(object: this.alwaysIncludeSemantics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'child'
] = _36c2.maybeBoxObject(object: child, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'key'
] = _36c2.maybeBoxObject(object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_createRenderObject'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.createRenderObject(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_updateRenderObject'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.updateRenderObject(
      _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_26cc.RenderSliverAnimatedOpacity,
          _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
  return [];
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
table['_dart_didUnmountRenderObject'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didUnmountRenderObject(
      _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
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

_d7ad.SliverFadeTransition unwrap() => this;
_d7ad.SliverFadeTransition get vmObject => this;
@_fac9.override _26cc.RenderSliverAnimatedOpacity createRenderObject(context) { 
_36c2.Closure closure = table["createRenderObject"];
return _36c2.maybeUnBoxAndBuildArgument<_26cc.RenderSliverAnimatedOpacity, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void updateRenderObject(context, renderObject) { 
_36c2.Closure closure = table["updateRenderObject"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e2dc.SingleChildRenderObjectElement createElement() { 
_36c2.Closure closure = table["createElement"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.SingleChildRenderObjectElement, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void didUnmountRenderObject(renderObject) { 
_36c2.Closure closure = table["didUnmountRenderObject"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
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
void loadSliverFadeTransition({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'sliverFadeTransition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedSliverFadeTransition(table: luaCallerArguments  [
0
], hydroState: hydroState, alwaysIncludeSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'alwaysIncludeSemantics'
] : null, key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), sliver: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'sliver'
] : null, parentState: hydroState), opacity: _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'opacity'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_d7ad.SliverFadeTransition>(boxer: ({required _d7ad.SliverFadeTransition vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSliverFadeTransition(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
