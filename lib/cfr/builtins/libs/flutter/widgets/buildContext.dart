import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBuildContext extends _36c2.VMManagedBox<_e2dc.BuildContext> {VMManagedBuildContext({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getWidget'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.Widget>(object: vmObject.widget, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getOwner'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.owner;if(returnValue!= null){return [_36c2.maybeBoxObject<_e2dc.BuildOwner?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getDebugDoingBuild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugDoingBuild,]; } );
table  [
'findRenderObject'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.findRenderObject();if(returnValue!= null){return [_36c2.maybeBoxObject<_9742.RenderObject?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.size;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Size?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'dependOnInheritedElement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_e2dc.InheritedWidget>(object: vmObject.dependOnInheritedElement(_36c2.maybeUnBoxAndBuildArgument<_e2dc.InheritedElement, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), aspect: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'aspect'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'dependOnInheritedWidgetOfExactType'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.dependOnInheritedWidgetOfExactType(aspect: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'aspect'
] : null, parentState: hydroState));if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'getElementForInheritedWidgetOfExactType'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.getElementForInheritedWidgetOfExactType();if(returnValue!= null){return [_36c2.maybeBoxObject<_e2dc.InheritedElement?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'findAncestorWidgetOfExactType'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.findAncestorWidgetOfExactType();if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'findAncestorStateOfType'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.findAncestorStateOfType();if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'findRootAncestorStateOfType'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.findRootAncestorStateOfType();if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'findAncestorRenderObjectOfType'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.findAncestorRenderObjectOfType();if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'visitAncestorElements'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedvisitor=luaCallerArguments  [
1
];vmObject.visitAncestorElements((element) => unpackedvisitor.dispatch([luaCallerArguments[0],element],parentState:hydroState,)[0]);
return []; } );
table  [
'visitChildElements'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedvisitor=luaCallerArguments  [
1
];vmObject.visitChildElements((element) => unpackedvisitor.dispatch([luaCallerArguments[0],element],parentState:hydroState,));
return []; } );
table  [
'describeElement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.describeElement(luaCallerArguments  [
1
], style: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticsTreeStyle.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'style'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'describeWidget'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.describeWidget(luaCallerArguments  [
1
], style: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticsTreeStyle.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'style'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'describeMissingAncestor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.describeMissingAncestor(expectedAncestorType: _36c2.maybeUnBoxAndBuildArgument<_fac9.Type, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'expectedAncestorType'
] : null, parentState: hydroState)).map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'describeOwnershipChain'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.describeOwnershipChain(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _e2dc.BuildContext vmObject;

 }

void loadBuildContext({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_e2dc.BuildContext>(boxer: ({required _e2dc.BuildContext vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBuildContext(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
