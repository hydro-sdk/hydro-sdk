import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/widgets/widget_inspector.dart' as _8c83;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInspectorSerializationDelegate extends _36c2.VMManagedBox<_8c83.InspectorSerializationDelegate> {VMManagedInspectorSerializationDelegate({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'service'
] = _36c2.maybeBoxObject<_8c83.WidgetInspectorService>(object: vmObject.service, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'groupName'
] = vmObject.groupName;
table  [
'summaryTree'
] = vmObject.summaryTree;
table  [
'maxDescendentsTruncatableNode'
] = vmObject.maxDescendentsTruncatableNode;
table  [
'includeProperties'
] = vmObject.includeProperties;
table  [
'subtreeDepth'
] = vmObject.subtreeDepth;
table  [
'expandPropertyValues'
] = vmObject.expandPropertyValues;
table  [
'additionalNodeProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Map>(object: vmObject.additionalNodeProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'delegateForNode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_eaf3.DiagnosticsSerializationDelegate>(object: vmObject.delegateForNode(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'filterChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.filterChildren(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)).map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'filterProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.filterProperties(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)).map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'truncateNodesList'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.truncateNodesList(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)).map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_eaf3.DiagnosticsSerializationDelegate>(object: vmObject.copyWith(includeProperties: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'includeProperties'
] : null, subtreeDepth: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'subtreeDepth'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getSubtreeDepth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.subtreeDepth,]; } );
table  [
'getIncludeProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.includeProperties,]; } );
table  [
'getExpandPropertyValues'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.expandPropertyValues,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8c83.InspectorSerializationDelegate vmObject;

 }

class RTManagedInspectorSerializationDelegate extends _8c83.InspectorSerializationDelegate implements _36c2.Box<_8c83.InspectorSerializationDelegate> {RTManagedInspectorSerializationDelegate({_fac9.Map<_fac9.String,_fac9.Object>? Function(_eaf3.DiagnosticsNode , _8c83.InspectorSerializationDelegate )? addAdditionalPropertiesCallback, required _fac9.bool expandPropertyValues, _fac9.String? groupName, required _fac9.bool includeProperties, required _fac9.int maxDescendentsTruncatableNode, required _fac9.int subtreeDepth, required _fac9.bool summaryTree, required _8c83.WidgetInspectorService service, required this.table, required this.hydroState}) : super(addAdditionalPropertiesCallback: addAdditionalPropertiesCallback,expandPropertyValues: expandPropertyValues,groupName: groupName,includeProperties: includeProperties,maxDescendentsTruncatableNode: maxDescendentsTruncatableNode,subtreeDepth: subtreeDepth,summaryTree: summaryTree,service: service) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'service'
] = _36c2.maybeBoxObject(object: this.service, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'groupName'
] = _36c2.maybeBoxObject(object: this.groupName, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'summaryTree'
] = _36c2.maybeBoxObject(object: this.summaryTree, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'maxDescendentsTruncatableNode'
] = _36c2.maybeBoxObject(object: this.maxDescendentsTruncatableNode, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'includeProperties'
] = _36c2.maybeBoxObject(object: this.includeProperties, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'subtreeDepth'
] = _36c2.maybeBoxObject(object: this.subtreeDepth, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'expandPropertyValues'
] = _36c2.maybeBoxObject(object: this.expandPropertyValues, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_additionalNodeProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.additionalNodeProperties(_36c2.maybeUnBoxAndBuildArgument<
            _eaf3.DiagnosticsNode,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_delegateForNode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.delegateForNode(_36c2.maybeUnBoxAndBuildArgument<
            _eaf3.DiagnosticsNode,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_filterChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.filterChildren(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
                    _eaf3.DiagnosticsNode>(luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode,
                _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_filterProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.filterProperties(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
                    _eaf3.DiagnosticsNode>(luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode,
                _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_truncateNodesList'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.truncateNodesList(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
                    _eaf3.DiagnosticsNode>(luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode?,
                _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            includeProperties:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['includeProperties']
                        : null,
                    parentState: hydroState),
            subtreeDepth:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['subtreeDepth']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getSubtreeDepth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [subtreeDepth];
});
table['_dart_getIncludeProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [includeProperties];
});
table['_dart_getExpandPropertyValues'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [expandPropertyValues];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_8c83.InspectorSerializationDelegate unwrap() => this;
_8c83.InspectorSerializationDelegate get vmObject => this;
@_fac9.override _fac9.Map<_fac9.String,_fac9.Object?> additionalNodeProperties(node) { 
_36c2.Closure closure = table["additionalNodeProperties"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.Object?>, _fac9.String>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _eaf3.DiagnosticsSerializationDelegate delegateForNode(node) { 
_36c2.Closure closure = table["delegateForNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsSerializationDelegate, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> filterChildren(nodes, owner) { 
_36c2.Closure closure = table["filterChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> filterProperties(nodes, owner) { 
_36c2.Closure closure = table["filterProperties"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> truncateNodesList(nodes, owner) { 
_36c2.Closure closure = table["truncateNodesList"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _eaf3.DiagnosticsSerializationDelegate copyWith({_fac9.bool? includeProperties, _fac9.int? subtreeDepth}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsSerializationDelegate, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get subtreeDepth { 
_36c2.Closure closure = table["getSubtreeDepth"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get includeProperties { 
_36c2.Closure closure = table["getIncludeProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get expandPropertyValues { 
_36c2.Closure closure = table["getExpandPropertyValues"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadInspectorSerializationDelegate({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'inspectorSerializationDelegate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedaddAdditionalPropertiesCallback=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'addAdditionalPropertiesCallback'
] : null;







return  [RTManagedInspectorSerializationDelegate(table: luaCallerArguments  [
0
], hydroState: hydroState, addAdditionalPropertiesCallback: unpackedaddAdditionalPropertiesCallback != null ? (_, __) => _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.Object>?, _fac9.String>(((final _fac9.List<_fac9.dynamic>? val,) => val != null && val.length >= 1 ?val[0] : null)(unpackedaddAdditionalPropertiesCallback.dispatch([luaCallerArguments[0],_,__],parentState:hydroState,),), parentState: hydroState) : null , expandPropertyValues: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'expandPropertyValues'
] : null, groupName: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'groupName'
] : null, includeProperties: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'includeProperties'
] : null, maxDescendentsTruncatableNode: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxDescendentsTruncatableNode'
] : null, subtreeDepth: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'subtreeDepth'
] : null, summaryTree: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'summaryTree'
] : null, service: _36c2.maybeUnBoxAndBuildArgument<_8c83.WidgetInspectorService, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'service'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_8c83.InspectorSerializationDelegate>(boxer: ({required _8c83.InspectorSerializationDelegate vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedInspectorSerializationDelegate(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
