import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/proxy_box.dart' as _bf98;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;
import 'package:flutter/src/services/text_editing.dart' as _7986;
import 'package:flutter/src/widgets/basic.dart' as _3960;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSemantics extends _36c2.VMManagedBox<_3960.Semantics> {VMManagedSemantics({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'properties'
] = _36c2.maybeBoxObject<_4c98.SemanticsProperties>(object: vmObject.properties, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'container'
] = vmObject.container;
table  [
'explicitChildNodes'
] = vmObject.explicitChildNodes;
table  [
'excludeSemantics'
] = vmObject.excludeSemantics;
table  [
'child'
] = _36c2.maybeBoxObject<_e2dc.Widget?>(object: vmObject.child, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'createRenderObject'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_bf98.RenderSemanticsAnnotations>(object: vmObject.createRenderObject(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'updateRenderObject'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.updateRenderObject(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_bf98.RenderSemanticsAnnotations, _fac9.dynamic>(luaCallerArguments  [
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

final _3960.Semantics vmObject;

 }

class RTManagedSemantics extends _3960.Semantics implements _36c2.Box<_3960.Semantics> {RTManagedSemantics({_4c98.AttributedString? attributedDecreasedValue, _4c98.AttributedString? attributedHint, _4c98.AttributedString? attributedIncreasedValue, _4c98.AttributedString? attributedLabel, _4c98.AttributedString? attributedValue, _fac9.bool? button, _fac9.bool? checked, _e2dc.Widget? child, required _fac9.bool container, _fac9.int? currentValueLength, _fac9.Map<_4c98.CustomSemanticsAction,void Function()>? customSemanticsActions, _fac9.String? decreasedValue, _fac9.bool? enabled, required _fac9.bool excludeSemantics, required _fac9.bool explicitChildNodes, _fac9.bool? focusable, _fac9.bool? focused, _fac9.bool? header, _fac9.bool? hidden, _fac9.String? hint, _fac9.bool? image, _fac9.bool? inMutuallyExclusiveGroup, _fac9.String? increasedValue, _ab4a.Key? key, _fac9.bool? keyboardKey, _fac9.String? label, _fac9.bool? link, _fac9.bool? liveRegion, _fac9.int? maxValueLength, _fac9.bool? multiline, _fac9.bool? namesRoute, _fac9.bool? obscured, void Function()? onCopy, void Function()? onCut, void Function()? onDecrease, void Function()? onDidGainAccessibilityFocus, void Function()? onDidLoseAccessibilityFocus, void Function()? onDismiss, void Function()? onIncrease, void Function()? onLongPress, _fac9.String? onLongPressHint, void Function(_fac9.bool extendSelection)? onMoveCursorBackwardByCharacter, void Function(_fac9.bool extendSelection)? onMoveCursorForwardByCharacter, void Function()? onPaste, void Function()? onScrollDown, void Function()? onScrollLeft, void Function()? onScrollRight, void Function()? onScrollUp, void Function(_7986.TextSelection selection)? onSetSelection, void Function(_fac9.String text)? onSetText, void Function()? onTap, _fac9.String? onTapHint, _fac9.bool? readOnly, _fac9.bool? scopesRoute, _fac9.bool? selected, _fac9.bool? slider, _4c98.SemanticsSortKey? sortKey, _4c98.SemanticsTag? tagForChildren, _a643.TextDirection? textDirection, _fac9.bool? textField, _fac9.bool? toggled, _fac9.String? value, required this.table, required this.hydroState}) : super(attributedDecreasedValue: attributedDecreasedValue,attributedHint: attributedHint,attributedIncreasedValue: attributedIncreasedValue,attributedLabel: attributedLabel,attributedValue: attributedValue,button: button,checked: checked,child: child,container: container,currentValueLength: currentValueLength,customSemanticsActions: customSemanticsActions,decreasedValue: decreasedValue,enabled: enabled,excludeSemantics: excludeSemantics,explicitChildNodes: explicitChildNodes,focusable: focusable,focused: focused,header: header,hidden: hidden,hint: hint,image: image,inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,increasedValue: increasedValue,key: key,keyboardKey: keyboardKey,label: label,link: link,liveRegion: liveRegion,maxValueLength: maxValueLength,multiline: multiline,namesRoute: namesRoute,obscured: obscured,onCopy: onCopy,onCut: onCut,onDecrease: onDecrease,onDidGainAccessibilityFocus: onDidGainAccessibilityFocus,onDidLoseAccessibilityFocus: onDidLoseAccessibilityFocus,onDismiss: onDismiss,onIncrease: onIncrease,onLongPress: onLongPress,onLongPressHint: onLongPressHint,onMoveCursorBackwardByCharacter: onMoveCursorBackwardByCharacter,onMoveCursorForwardByCharacter: onMoveCursorForwardByCharacter,onPaste: onPaste,onScrollDown: onScrollDown,onScrollLeft: onScrollLeft,onScrollRight: onScrollRight,onScrollUp: onScrollUp,onSetSelection: onSetSelection,onSetText: onSetText,onTap: onTap,onTapHint: onTapHint,readOnly: readOnly,scopesRoute: scopesRoute,selected: selected,slider: slider,sortKey: sortKey,tagForChildren: tagForChildren,textDirection: textDirection,textField: textField,toggled: toggled,value: value) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'properties'
] = _36c2.maybeBoxObject(object: properties, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'container'
] = _36c2.maybeBoxObject(object: this.container, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'explicitChildNodes'
] = _36c2.maybeBoxObject(object: this.explicitChildNodes, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'excludeSemantics'
] = _36c2.maybeBoxObject(object: this.excludeSemantics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'child'
] = _36c2.maybeBoxObject(object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
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
      _36c2.maybeUnBoxAndBuildArgument<_bf98.RenderSemanticsAnnotations,
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

_3960.Semantics unwrap() => this;
_3960.Semantics get vmObject => this;
@_fac9.override _bf98.RenderSemanticsAnnotations createRenderObject(context) { 
_36c2.Closure closure = table["createRenderObject"];
return _36c2.maybeUnBoxAndBuildArgument<_bf98.RenderSemanticsAnnotations, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadSemantics({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'semantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 































_36c2.Closure? unpackedonCopy=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onCopy'
] : null;
_36c2.Closure? unpackedonCut=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onCut'
] : null;
_36c2.Closure? unpackedonDecrease=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDecrease'
] : null;
_36c2.Closure? unpackedonDidGainAccessibilityFocus=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDidGainAccessibilityFocus'
] : null;
_36c2.Closure? unpackedonDidLoseAccessibilityFocus=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDidLoseAccessibilityFocus'
] : null;
_36c2.Closure? unpackedonDismiss=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDismiss'
] : null;
_36c2.Closure? unpackedonIncrease=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onIncrease'
] : null;
_36c2.Closure? unpackedonLongPress=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPress'
] : null;

_36c2.Closure? unpackedonMoveCursorBackwardByCharacter=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onMoveCursorBackwardByCharacter'
] : null;
_36c2.Closure? unpackedonMoveCursorForwardByCharacter=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onMoveCursorForwardByCharacter'
] : null;
_36c2.Closure? unpackedonPaste=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onPaste'
] : null;
_36c2.Closure? unpackedonScrollDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScrollDown'
] : null;
_36c2.Closure? unpackedonScrollLeft=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScrollLeft'
] : null;
_36c2.Closure? unpackedonScrollRight=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScrollRight'
] : null;
_36c2.Closure? unpackedonScrollUp=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScrollUp'
] : null;
_36c2.Closure? unpackedonSetSelection=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSetSelection'
] : null;
_36c2.Closure? unpackedonSetText=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSetText'
] : null;
_36c2.Closure? unpackedonTap=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTap'
] : null;











return  [RTManagedSemantics(table: luaCallerArguments  [
0
], hydroState: hydroState, attributedDecreasedValue: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedDecreasedValue'
] : null, parentState: hydroState), attributedHint: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedHint'
] : null, parentState: hydroState), attributedIncreasedValue: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedIncreasedValue'
] : null, parentState: hydroState), attributedLabel: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedLabel'
] : null, parentState: hydroState), attributedValue: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedValue'
] : null, parentState: hydroState), button: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'button'
] : null, checked: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'checked'
] : null, child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'child'
] : null, parentState: hydroState), container: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'container'
] : null, currentValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'currentValueLength'
] : null, customSemanticsActions: _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_4c98.CustomSemanticsAction,void Function()>?, _4c98.CustomSemanticsAction>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'customSemanticsActions'
] : null, parentState: hydroState), decreasedValue: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'decreasedValue'
] : null, enabled: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'enabled'
] : null, excludeSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'excludeSemantics'
] : null, explicitChildNodes: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'explicitChildNodes'
] : null, focusable: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'focusable'
] : null, focused: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'focused'
] : null, header: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'header'
] : null, hidden: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'hidden'
] : null, hint: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'hint'
] : null, image: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'image'
] : null, inMutuallyExclusiveGroup: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'inMutuallyExclusiveGroup'
] : null, increasedValue: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'increasedValue'
] : null, key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), keyboardKey: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'keyboardKey'
] : null, label: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'label'
] : null, link: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'link'
] : null, liveRegion: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'liveRegion'
] : null, maxValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxValueLength'
] : null, multiline: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'multiline'
] : null, namesRoute: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'namesRoute'
] : null, obscured: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'obscured'
] : null, onCopy: unpackedonCopy != null ? () => unpackedonCopy.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onCut: unpackedonCut != null ? () => unpackedonCut.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDecrease: unpackedonDecrease != null ? () => unpackedonDecrease.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDidGainAccessibilityFocus: unpackedonDidGainAccessibilityFocus != null ? () => unpackedonDidGainAccessibilityFocus.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDidLoseAccessibilityFocus: unpackedonDidLoseAccessibilityFocus != null ? () => unpackedonDidLoseAccessibilityFocus.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDismiss: unpackedonDismiss != null ? () => unpackedonDismiss.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onIncrease: unpackedonIncrease != null ? () => unpackedonIncrease.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onLongPress: unpackedonLongPress != null ? () => unpackedonLongPress.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onLongPressHint: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPressHint'
] : null, onMoveCursorBackwardByCharacter: unpackedonMoveCursorBackwardByCharacter != null ? (extendSelection) => unpackedonMoveCursorBackwardByCharacter.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null , onMoveCursorForwardByCharacter: unpackedonMoveCursorForwardByCharacter != null ? (extendSelection) => unpackedonMoveCursorForwardByCharacter.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null , onPaste: unpackedonPaste != null ? () => unpackedonPaste.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onScrollDown: unpackedonScrollDown != null ? () => unpackedonScrollDown.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onScrollLeft: unpackedonScrollLeft != null ? () => unpackedonScrollLeft.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onScrollRight: unpackedonScrollRight != null ? () => unpackedonScrollRight.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onScrollUp: unpackedonScrollUp != null ? () => unpackedonScrollUp.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onSetSelection: unpackedonSetSelection != null ? (selection) => unpackedonSetSelection.dispatch([luaCallerArguments[0],selection],parentState:hydroState,) : null , onSetText: unpackedonSetText != null ? (text) => unpackedonSetText.dispatch([luaCallerArguments[0],text],parentState:hydroState,) : null , onTap: unpackedonTap != null ? () => unpackedonTap.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onTapHint: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTapHint'
] : null, readOnly: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'readOnly'
] : null, scopesRoute: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scopesRoute'
] : null, selected: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'selected'
] : null, slider: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'slider'
] : null, sortKey: _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsSortKey?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'sortKey'
] : null, parentState: hydroState), tagForChildren: _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsTag?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'tagForChildren'
] : null, parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textDirection'
] : null), textField: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textField'
] : null, toggled: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'toggled'
] : null, value: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'value'
] : null)]; } );
_36c2.registerBoxer<_3960.Semantics>(boxer: ({required _3960.Semantics vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSemantics(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
