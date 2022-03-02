import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedNavigator extends _36c2.VMManagedBox<_a37d.Navigator> {VMManagedNavigator({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'pages'
] = _36c2.maybeBoxObject<_fac9.List<_a37d.Page<_fac9.dynamic>>>(object: vmObject.pages, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'transitionDelegate'
] = _36c2.maybeBoxObject<_a37d.TransitionDelegate>(object: vmObject.transitionDelegate, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'initialRoute'
] = vmObject.initialRoute;
table  [
'observers'
] = _36c2.maybeBoxObject<_fac9.List<_a37d.NavigatorObserver>>(object: vmObject.observers, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'restorationScopeId'
] = vmObject.restorationScopeId;
table  [
'reportsRouteUpdateToEngine'
] = vmObject.reportsRouteUpdateToEngine;
table  [
'requestFocus'
] = vmObject.requestFocus;
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'createState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a37d.NavigatorState>(object: vmObject.createState(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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

final _a37d.Navigator vmObject;

 }

class RTManagedNavigator extends _a37d.Navigator implements _36c2.Box<_a37d.Navigator> {RTManagedNavigator({_fac9.String? initialRoute, _ab4a.Key? key, required _fac9.List<_a37d.NavigatorObserver> observers, required _fac9.List<_a37d.Route<_fac9.dynamic>> Function(_a37d.NavigatorState navigator, _fac9.String initialRoute) onGenerateInitialRoutes, _a37d.Route<_fac9.dynamic>? Function(_a37d.RouteSettings settings)? onGenerateRoute, _fac9.bool Function(_a37d.Route<_fac9.dynamic> route, _fac9.dynamic result)? onPopPage, _a37d.Route<_fac9.dynamic>? Function(_a37d.RouteSettings settings)? onUnknownRoute, required _fac9.List<_a37d.Page<_fac9.dynamic>> pages, required _fac9.bool reportsRouteUpdateToEngine, required _fac9.bool requestFocus, _fac9.String? restorationScopeId, required _a37d.TransitionDelegate<_fac9.dynamic> transitionDelegate, required this.table, required this.hydroState}) : super(initialRoute: initialRoute,key: key,observers: observers,onGenerateInitialRoutes: onGenerateInitialRoutes,onGenerateRoute: onGenerateRoute,onPopPage: onPopPage,onUnknownRoute: onUnknownRoute,pages: pages,reportsRouteUpdateToEngine: reportsRouteUpdateToEngine,requestFocus: requestFocus,restorationScopeId: restorationScopeId,transitionDelegate: transitionDelegate) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'pages'
] = _36c2.maybeBoxObject(object: this.pages, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'transitionDelegate'
] = _36c2.maybeBoxObject(object: this.transitionDelegate, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'initialRoute'
] = _36c2.maybeBoxObject(object: this.initialRoute, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'observers'
] = _36c2.maybeBoxObject(object: this.observers, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'restorationScopeId'
] = _36c2.maybeBoxObject(object: this.restorationScopeId, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'reportsRouteUpdateToEngine'
] = _36c2.maybeBoxObject(object: this.reportsRouteUpdateToEngine, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'requestFocus'
] = _36c2.maybeBoxObject(object: this.requestFocus, hydroState: hydroState, table: _36c2.HydroTable());
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

_a37d.Navigator unwrap() => this;
_a37d.Navigator get vmObject => this;
@_fac9.override _a37d.NavigatorState createState() { 
_36c2.Closure closure = table["createState"];
return _36c2.maybeUnBoxAndBuildArgument<_a37d.NavigatorState, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadNavigator({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'navigator'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


_36c2.Closure unpackedonGenerateInitialRoutes=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onGenerateInitialRoutes'
] : null;
_36c2.Closure? unpackedonGenerateRoute=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onGenerateRoute'
] : null;
_36c2.Closure? unpackedonPopPage=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onPopPage'
] : null;
_36c2.Closure? unpackedonUnknownRoute=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onUnknownRoute'
] : null;





return  [RTManagedNavigator(table: luaCallerArguments  [
0
], hydroState: hydroState, initialRoute: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'initialRoute'
] : null, key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), observers: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a37d.NavigatorObserver>, _a37d.NavigatorObserver>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'observers'
] : null, parentState: hydroState), onGenerateInitialRoutes: (navigator, initialRoute) => _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a37d.Route<_fac9.dynamic>>, _a37d.Route<_fac9.dynamic>>(unpackedonGenerateInitialRoutes.dispatch([luaCallerArguments[0],navigator,initialRoute],parentState:hydroState,)[0], parentState: hydroState), onGenerateRoute: unpackedonGenerateRoute != null ? (settings) => _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(((final _fac9.List<_fac9.dynamic>? val,) => val != null && val.length >= 1 ?val[0] : null)(unpackedonGenerateRoute.dispatch([luaCallerArguments[0],settings],parentState:hydroState,),), parentState: hydroState) : null , onPopPage: unpackedonPopPage != null ? (route, result) => unpackedonPopPage.dispatch([luaCallerArguments[0],route,result],parentState:hydroState,)[0] : null , onUnknownRoute: unpackedonUnknownRoute != null ? (settings) => _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(((final _fac9.List<_fac9.dynamic>? val,) => val != null && val.length >= 1 ?val[0] : null)(unpackedonUnknownRoute.dispatch([luaCallerArguments[0],settings],parentState:hydroState,),), parentState: hydroState) : null , pages: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a37d.Page<_fac9.dynamic>>, _a37d.Page<_fac9.dynamic>>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'pages'
] : null, parentState: hydroState), reportsRouteUpdateToEngine: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'reportsRouteUpdateToEngine'
] : null, requestFocus: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'requestFocus'
] : null, restorationScopeId: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'restorationScopeId'
] : null, transitionDelegate: _36c2.maybeUnBoxAndBuildArgument<_a37d.TransitionDelegate<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'transitionDelegate'
] : null, parentState: hydroState))]; } );
table  [
'navigatorPushNamed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_36c2.maybeBoxObject<_7de1.Future>(object: _a37d.Navigator.pushNamed(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
], arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'arguments'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'navigatorRestorablePushNamed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_a37d.Navigator.restorablePushNamed(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
], arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'arguments'
] : null, parentState: hydroState)),]; } );
table  [
'navigatorPushReplacementNamed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_36c2.maybeBoxObject<_7de1.Future>(object: _a37d.Navigator.pushReplacementNamed(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
], arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'arguments'
] : null, parentState: hydroState), result: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'result'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'navigatorRestorablePushReplacementNamed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_a37d.Navigator.restorablePushReplacementNamed(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
], arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'arguments'
] : null, parentState: hydroState), result: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'result'
] : null),]; } );
table  [
'navigatorPopAndPushNamed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_36c2.maybeBoxObject<_7de1.Future>(object: _a37d.Navigator.popAndPushNamed(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
], arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'arguments'
] : null, parentState: hydroState), result: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'result'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'navigatorRestorablePopAndPushNamed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_a37d.Navigator.restorablePopAndPushNamed(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
], arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'arguments'
] : null, parentState: hydroState), result: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'result'
] : null),]; } );
table  [
'navigatorPushNamedAndRemoveUntil'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

_36c2.Closure unpackedpredicate=luaCallerArguments  [
3
];
return [_36c2.maybeBoxObject<_7de1.Future>(object: _a37d.Navigator.pushNamedAndRemoveUntil(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
], (route) => unpackedpredicate.dispatch([luaCallerArguments[0],route],parentState:hydroState,)[0], arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 5 ? luaCallerArguments  [
4
]  [
'arguments'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'navigatorRestorablePushNamedAndRemoveUntil'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

_36c2.Closure unpackedpredicate=luaCallerArguments  [
3
];
return [_a37d.Navigator.restorablePushNamedAndRemoveUntil(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
], (route) => unpackedpredicate.dispatch([luaCallerArguments[0],route],parentState:hydroState,)[0], arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 5 ? luaCallerArguments  [
4
]  [
'arguments'
] : null, parentState: hydroState)),]; } );
table  [
'navigatorPush'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: _a37d.Navigator.push(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'navigatorRestorablePush'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_36c2.Closure unpackedrouteBuilder=luaCallerArguments  [
2
];
return [_a37d.Navigator.restorablePush(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(unpackedrouteBuilder.dispatch([luaCallerArguments[0],context,arguments],parentState:hydroState,)[0], parentState: hydroState), arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'arguments'
] : null, parentState: hydroState)),]; } );
table  [
'navigatorPushReplacement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_36c2.maybeBoxObject<_7de1.Future>(object: _a37d.Navigator.pushReplacement(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), result: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'result'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'navigatorRestorablePushReplacement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_36c2.Closure unpackedrouteBuilder=luaCallerArguments  [
2
];

return [_a37d.Navigator.restorablePushReplacement(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(unpackedrouteBuilder.dispatch([luaCallerArguments[0],context,arguments],parentState:hydroState,)[0], parentState: hydroState), arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'arguments'
] : null, parentState: hydroState), result: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'result'
] : null),]; } );
table  [
'navigatorPushAndRemoveUntil'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

_36c2.Closure unpackedpredicate=luaCallerArguments  [
3
];return [_36c2.maybeBoxObject<_7de1.Future>(object: _a37d.Navigator.pushAndRemoveUntil(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), (route) => unpackedpredicate.dispatch([luaCallerArguments[0],route],parentState:hydroState,)[0]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'navigatorRestorablePushAndRemoveUntil'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_36c2.Closure unpackednewRouteBuilder=luaCallerArguments  [
2
];
_36c2.Closure unpackedpredicate=luaCallerArguments  [
3
];
return [_a37d.Navigator.restorablePushAndRemoveUntil(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(unpackednewRouteBuilder.dispatch([luaCallerArguments[0],context,arguments],parentState:hydroState,)[0], parentState: hydroState), (route) => unpackedpredicate.dispatch([luaCallerArguments[0],route],parentState:hydroState,)[0], arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 5 ? luaCallerArguments  [
4
]  [
'arguments'
] : null, parentState: hydroState)),]; } );
table  [
'navigatorReplace'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

_a37d.Navigator.replace(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), newRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'newRoute'
] : null, parentState: hydroState), oldRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'oldRoute'
] : null, parentState: hydroState));
return []; } );
table  [
'navigatorRestorableReplace'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

_36c2.Closure unpackednewRouteBuilder=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'newRouteBuilder'
] : null;
return [_a37d.Navigator.restorableReplace(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'arguments'
] : null, parentState: hydroState), newRouteBuilder: (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(unpackednewRouteBuilder.dispatch([luaCallerArguments[0],context,arguments],parentState:hydroState,)[0], parentState: hydroState), oldRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'oldRoute'
] : null, parentState: hydroState)),]; } );
table  [
'navigatorReplaceRouteBelow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

_a37d.Navigator.replaceRouteBelow(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), anchorRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'anchorRoute'
] : null, parentState: hydroState), newRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'newRoute'
] : null, parentState: hydroState));
return []; } );
table  [
'navigatorRestorableReplaceRouteBelow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


_36c2.Closure unpackednewRouteBuilder=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'newRouteBuilder'
] : null;return [_a37d.Navigator.restorableReplaceRouteBelow(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'arguments'
] : null, parentState: hydroState), anchorRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'anchorRoute'
] : null, parentState: hydroState), newRouteBuilder: (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(unpackednewRouteBuilder.dispatch([luaCallerArguments[0],context,arguments],parentState:hydroState,)[0], parentState: hydroState)),]; } );
table  [
'navigatorCanPop'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_a37d.Navigator.canPop(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'navigatorMaybePop'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: _a37d.Navigator.maybePop(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'navigatorPop'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_a37d.Navigator.pop(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]);
return []; } );
table  [
'navigatorPopUntil'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_36c2.Closure unpackedpredicate=luaCallerArguments  [
2
];_a37d.Navigator.popUntil(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), (route) => unpackedpredicate.dispatch([luaCallerArguments[0],route],parentState:hydroState,)[0]);
return []; } );
table  [
'navigatorRemoveRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_a37d.Navigator.removeRoute(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'navigatorRemoveRouteBelow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_a37d.Navigator.removeRouteBelow(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'navigatorOf'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a37d.NavigatorState>(object: _a37d.Navigator.of(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), rootNavigator: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'rootNavigator'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'navigatorMaybeOf'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = _a37d.Navigator.maybeOf(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), rootNavigator: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'rootNavigator'
] : null);if(returnValue!= null){return [_36c2.maybeBoxObject<_a37d.NavigatorState?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'navigatorDefaultGenerateInitialRoutes'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: _a37d.Navigator.defaultGenerateInitialRoutes(_36c2.maybeUnBoxAndBuildArgument<_a37d.NavigatorState, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]).map((x) => _36c2.maybeBoxObject<_a37d.Route>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
_36c2.registerBoxer<_a37d.Navigator>(boxer: ({required _a37d.Navigator vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedNavigator(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
