import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;
import 'package:flutter/src/widgets/actions.dart' as _c0f4;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/shortcuts.dart' as _1710;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFocusableActionDetector extends _36c2.VMManagedBox<_c0f4.FocusableActionDetector> {VMManagedFocusableActionDetector({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'enabled'
] = vmObject.enabled;
table  [
'focusNode'
] = _36c2.maybeBoxObject<_b485.FocusNode?>(object: vmObject.focusNode, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'autofocus'
] = vmObject.autofocus;
table  [
'descendantsAreFocusable'
] = vmObject.descendantsAreFocusable;
table  [
'actions'
] = _36c2.maybeBoxObject<_fac9.Map?>(object: vmObject.actions, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'shortcuts'
] = _36c2.maybeBoxObject<_fac9.Map?>(object: vmObject.shortcuts, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'mouseCursor'
] = _36c2.maybeBoxObject<_fd33.MouseCursor>(object: vmObject.mouseCursor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'child'
] = _36c2.maybeBoxObject<_e2dc.Widget>(object: vmObject.child, hydroState: hydroState, table: _36c2.HydroTable());
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

final _c0f4.FocusableActionDetector vmObject;

 }

class RTManagedFocusableActionDetector extends _c0f4.FocusableActionDetector implements _36c2.Box<_c0f4.FocusableActionDetector> {RTManagedFocusableActionDetector({_fac9.Map<_fac9.Type,_c0f4.Action<_c0f4.Intent>>? actions, required _fac9.bool autofocus, required _fac9.bool descendantsAreFocusable, required _fac9.bool enabled, _b485.FocusNode? focusNode, _ab4a.Key? key, required _fd33.MouseCursor mouseCursor, void Function(_fac9.bool value)? onFocusChange, void Function(_fac9.bool value)? onShowFocusHighlight, void Function(_fac9.bool value)? onShowHoverHighlight, _fac9.Map<_1710.ShortcutActivator,_c0f4.Intent>? shortcuts, required _e2dc.Widget child, required this.table, required this.hydroState}) : super(actions: actions,autofocus: autofocus,descendantsAreFocusable: descendantsAreFocusable,enabled: enabled,focusNode: focusNode,key: key,mouseCursor: mouseCursor,onFocusChange: onFocusChange,onShowFocusHighlight: onShowFocusHighlight,onShowHoverHighlight: onShowHoverHighlight,shortcuts: shortcuts,child: child) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'enabled'
] = _36c2.maybeBoxObject(object: this.enabled, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'focusNode'
] = _36c2.maybeBoxObject(object: this.focusNode, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'autofocus'
] = _36c2.maybeBoxObject(object: this.autofocus, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'descendantsAreFocusable'
] = _36c2.maybeBoxObject(object: this.descendantsAreFocusable, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'actions'
] = _36c2.maybeBoxObject(object: this.actions, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'shortcuts'
] = _36c2.maybeBoxObject(object: this.shortcuts, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'mouseCursor'
] = _36c2.maybeBoxObject(object: this.mouseCursor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'child'
] = _36c2.maybeBoxObject(object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
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

_c0f4.FocusableActionDetector unwrap() => this;
_c0f4.FocusableActionDetector get vmObject => this;
@_fac9.override _e2dc.State<_c0f4.FocusableActionDetector> createState() { 
_36c2.Closure closure = table["createState"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_c0f4.FocusableActionDetector>, _c0f4.FocusableActionDetector>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadFocusableActionDetector({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'focusableActionDetector'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 






_36c2.Closure? unpackedonFocusChange=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onFocusChange'
] : null;
_36c2.Closure? unpackedonShowFocusHighlight=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onShowFocusHighlight'
] : null;
_36c2.Closure? unpackedonShowHoverHighlight=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onShowHoverHighlight'
] : null;


return  [RTManagedFocusableActionDetector(table: luaCallerArguments  [
0
], hydroState: hydroState, actions: _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.Type,_c0f4.Action<_c0f4.Intent>>?, _fac9.Type>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'actions'
] : null, parentState: hydroState), autofocus: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'autofocus'
] : null, descendantsAreFocusable: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'descendantsAreFocusable'
] : null, enabled: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'enabled'
] : null, focusNode: _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'focusNode'
] : null, parentState: hydroState), key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'mouseCursor'
] : null, parentState: hydroState), onFocusChange: unpackedonFocusChange != null ? (value) => unpackedonFocusChange.dispatch([luaCallerArguments[0],value],parentState:hydroState,) : null , onShowFocusHighlight: unpackedonShowFocusHighlight != null ? (value) => unpackedonShowFocusHighlight.dispatch([luaCallerArguments[0],value],parentState:hydroState,) : null , onShowHoverHighlight: unpackedonShowHoverHighlight != null ? (value) => unpackedonShowHoverHighlight.dispatch([luaCallerArguments[0],value],parentState:hydroState,) : null , shortcuts: _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_1710.ShortcutActivator,_c0f4.Intent>?, _1710.ShortcutActivator>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'shortcuts'
] : null, parentState: hydroState), child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'child'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_c0f4.FocusableActionDetector>(boxer: ({required _c0f4.FocusableActionDetector vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedFocusableActionDetector(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
