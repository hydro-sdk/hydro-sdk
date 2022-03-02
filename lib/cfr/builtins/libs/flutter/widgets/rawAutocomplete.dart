import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/services/text_input.dart' as _8577;
import 'package:flutter/src/widgets/autocomplete.dart' as _2a05;
import 'package:flutter/src/widgets/editable_text.dart' as _d800;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRawAutocomplete extends _36c2.VMManagedBox<_2a05.RawAutocomplete<_fac9.Object>> {VMManagedRawAutocomplete({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'focusNode'
] = _36c2.maybeBoxObject<_b485.FocusNode?>(object: vmObject.focusNode, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'textEditingController'
] = _36c2.maybeBoxObject<_d800.TextEditingController?>(object: vmObject.textEditingController, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'initialValue'
] = _36c2.maybeBoxObject<_8577.TextEditingValue?>(object: vmObject.initialValue, hydroState: hydroState, table: _36c2.HydroTable());
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

final _2a05.RawAutocomplete<_fac9.Object> vmObject;

 }

class RTManagedRawAutocomplete extends _2a05.RawAutocomplete implements _36c2.Box<_2a05.RawAutocomplete> {RTManagedRawAutocomplete({required _fac9.String Function(_fac9.Object option) displayStringForOption, _e2dc.Widget Function(_e2dc.BuildContext context, _d800.TextEditingController textEditingController, _b485.FocusNode focusNode, void Function() onFieldSubmitted)? fieldViewBuilder, _b485.FocusNode? focusNode, _8577.TextEditingValue? initialValue, _ab4a.Key? key, void Function(_fac9.Object option)? onSelected, _d800.TextEditingController? textEditingController, required _7de1.FutureOr<_fac9.Iterable<_fac9.Object>> Function(_8577.TextEditingValue textEditingValue) optionsBuilder, required _e2dc.Widget Function(_e2dc.BuildContext context, void Function(_fac9.Object option) onSelected, _fac9.Iterable<_fac9.Object> options) optionsViewBuilder, required this.table, required this.hydroState}) : super(displayStringForOption: displayStringForOption,fieldViewBuilder: fieldViewBuilder,focusNode: focusNode,initialValue: initialValue,key: key,onSelected: onSelected,textEditingController: textEditingController,optionsBuilder: optionsBuilder,optionsViewBuilder: optionsViewBuilder) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'focusNode'
] = _36c2.maybeBoxObject(object: this.focusNode, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'textEditingController'
] = _36c2.maybeBoxObject(object: this.textEditingController, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'initialValue'
] = _36c2.maybeBoxObject(object: this.initialValue, hydroState: hydroState, table: _36c2.HydroTable());
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

_2a05.RawAutocomplete unwrap() => this;
_2a05.RawAutocomplete get vmObject => this;
@_fac9.override _e2dc.State<_2a05.RawAutocomplete<_fac9.Object>> createState() { 
_36c2.Closure closure = table["createState"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_2a05.RawAutocomplete<_fac9.Object>>, _2a05.RawAutocomplete<_fac9.Object>>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadRawAutocomplete({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'rawAutocomplete'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackeddisplayStringForOption=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'displayStringForOption'
] : null;
_36c2.Closure? unpackedfieldViewBuilder=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fieldViewBuilder'
] : null;



_36c2.Closure? unpackedonSelected=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSelected'
] : null;

_36c2.Closure unpackedoptionsBuilder=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'optionsBuilder'
] : null;
_36c2.Closure unpackedoptionsViewBuilder=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'optionsViewBuilder'
] : null;
return  [RTManagedRawAutocomplete(table: luaCallerArguments  [
0
], hydroState: hydroState, displayStringForOption: (option) => unpackeddisplayStringForOption.dispatch([luaCallerArguments[0],option],parentState:hydroState,)[0], fieldViewBuilder: unpackedfieldViewBuilder != null ? (context, textEditingController, focusNode, onFieldSubmitted) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(unpackedfieldViewBuilder.dispatch([luaCallerArguments[0],context,textEditingController,focusNode,onFieldSubmitted],parentState:hydroState,)[0], parentState: hydroState) : null , focusNode: _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'focusNode'
] : null, parentState: hydroState), initialValue: _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'initialValue'
] : null, parentState: hydroState), key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), onSelected: unpackedonSelected != null ? (option) => unpackedonSelected.dispatch([luaCallerArguments[0],option],parentState:hydroState,) : null , textEditingController: _36c2.maybeUnBoxAndBuildArgument<_d800.TextEditingController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textEditingController'
] : null, parentState: hydroState), optionsBuilder: (textEditingValue) => _36c2.maybeUnBoxAndBuildArgument<_7de1.FutureOr<_fac9.Iterable<_fac9.dynamic>>, _fac9.Iterable<_fac9.dynamic>>(unpackedoptionsBuilder.dispatch([luaCallerArguments[0],textEditingValue],parentState:hydroState,)[0], parentState: hydroState), optionsViewBuilder: (context, onSelected, options) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(unpackedoptionsViewBuilder.dispatch([luaCallerArguments[0],context,onSelected,options],parentState:hydroState,)[0], parentState: hydroState))]; } );
table  [
'rawAutocompleteOnFieldSubmitted'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _2a05.RawAutocomplete.onFieldSubmitted(_36c2.maybeUnBoxAndBuildArgument<_e2dc.GlobalKey<_e2dc.State<_e2dc.StatefulWidget>>, _e2dc.State<_e2dc.StatefulWidget>>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'rawAutocompleteDefaultStringForOption'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_2a05.RawAutocomplete.defaultStringForOption(luaCallerArguments  [
1
]),]; } );
_36c2.registerBoxer<_2a05.RawAutocomplete>(boxer: ({required _2a05.RawAutocomplete vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRawAutocomplete(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
