import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPage extends _36c2.VMManagedBox<_a37d.Page<_fac9.dynamic>> {VMManagedPage({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.LocalKey?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'restorationId'
] = vmObject.restorationId;
table  [
'name'
] = vmObject.name;
table  [
'arguments'
] = _36c2.maybeBoxObject<_fac9.Object?>(object: vmObject.arguments, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'canUpdate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.canUpdate(_36c2.maybeUnBoxAndBuildArgument<_a37d.Page<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'createRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a37d.Route>(object: vmObject.createRoute(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a37d.RouteSettings>(object: vmObject.copyWith(arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'arguments'
] : null, parentState: hydroState), name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _a37d.Page<_fac9.dynamic> vmObject;

 }

class RTManagedPage extends _a37d.Page implements _36c2.Box<_a37d.Page> {RTManagedPage({_fac9.Object? arguments, _ab4a.LocalKey? key, _fac9.String? name, _fac9.String? restorationId, required this.table, required this.hydroState}) : super(arguments: arguments,key: key,name: name,restorationId: restorationId) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'key'
] = _36c2.maybeBoxObject(object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'restorationId'
] = _36c2.maybeBoxObject(object: this.restorationId, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'name'
] = _36c2.maybeBoxObject(object: this.name, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'arguments'
] = _36c2.maybeBoxObject(object: this.arguments, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_canUpdate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.canUpdate(_36c2.maybeUnBoxAndBuildArgument<
            _a37d.Page<_fac9.dynamic>,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_createRoute'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: createRoute(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['arguments']
                        : null,
                    parentState: hydroState),
            name:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['name']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_a37d.Page unwrap() => this;
_a37d.Page get vmObject => this;
@_fac9.override _fac9.bool canUpdate(other) { 
_36c2.Closure closure = table["canUpdate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a37d.Route<_fac9.dynamic> createRoute(context) { 
_36c2.Closure closure = table["createRoute"];
return _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a37d.RouteSettings copyWith({_fac9.Object? arguments, _fac9.String? name}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_a37d.RouteSettings, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadPage({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'page'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedPage(table: luaCallerArguments  [
0
], hydroState: hydroState, arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'arguments'
] : null, parentState: hydroState), key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.LocalKey?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null, restorationId: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'restorationId'
] : null)]; } );
_36c2.registerBoxer<_a37d.Page>(boxer: ({required _a37d.Page vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPage(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
