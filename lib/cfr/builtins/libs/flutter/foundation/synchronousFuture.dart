import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/synchronous_future.dart' as _6f38;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSynchronousFuture extends _36c2.VMManagedBox<_6f38.SynchronousFuture<_fac9.dynamic>> {VMManagedSynchronousFuture({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'asStream'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Stream>(object: vmObject.asStream(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'catchError'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_36c2.Closure? unpackedtest=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'test'
] : null;return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.catchError(_36c2.maybeUnBoxAndBuildArgument<_fac9.Function, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), test: unpackedtest != null ? (error) => unpackedtest.dispatch([luaCallerArguments[0],error],parentState:hydroState,)[0] : null ), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'then'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedonValue=luaCallerArguments  [
1
];
return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.then((value) => _36c2.maybeUnBoxAndBuildArgument<_7de1.FutureOr<_fac9.dynamic>, _fac9.dynamic>(unpackedonValue.dispatch([luaCallerArguments[0],value],parentState:hydroState,)[0], parentState: hydroState), onError: _36c2.maybeUnBoxAndBuildArgument<_fac9.Function?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'onError'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'timeout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_36c2.Closure? unpackedonTimeout=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'onTimeout'
] : null;return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.timeout(_36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), onTimeout: unpackedonTimeout != null ? () => _36c2.maybeUnBoxAndBuildArgument<_7de1.FutureOr<_fac9.dynamic>, _fac9.dynamic>(unpackedonTimeout.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], parentState: hydroState) : null ), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'whenComplete'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedaction=luaCallerArguments  [
1
];return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.whenComplete(() => _36c2.maybeUnBoxAndBuildArgument<_7de1.FutureOr<_fac9.dynamic>, _fac9.dynamic>(unpackedaction.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _6f38.SynchronousFuture<_fac9.dynamic> vmObject;

 }

class RTManagedSynchronousFuture extends _6f38.SynchronousFuture implements _36c2.Box<_6f38.SynchronousFuture> {RTManagedSynchronousFuture(_fac9.dynamic _value, {required this.table, required this.hydroState}) : super(_value,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_asStream'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.asStream(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_catchError'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedtest =
      luaCallerArguments.length >= 3 ? luaCallerArguments[2]['test'] : null;
  return [
    _36c2.maybeBoxObject(
        object: super.catchError(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Function, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            test: unpackedtest != null
                ? (error) =>
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        unpackedtest.dispatch(
                          [luaCallerArguments[0], error],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                : null),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_then'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedonValue = luaCallerArguments[1];
  return [
    _36c2.maybeBoxObject(
        object: super.then(
            (value) => _36c2.maybeUnBoxAndBuildArgument<
                    _7de1.FutureOr<_fac9.dynamic>, _fac9.dynamic>(
                unpackedonValue.dispatch(
                  [luaCallerArguments[0], value],
                  parentState: hydroState,
                )[0],
                parentState: hydroState),
            onError: _36c2
                .maybeUnBoxAndBuildArgument<_fac9.Function?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['onError']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_timeout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedonTimeout = luaCallerArguments.length >= 3
      ? luaCallerArguments[2]['onTimeout']
      : null;
  return [
    _36c2.maybeBoxObject(
        object: super.timeout(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            onTimeout: unpackedonTimeout != null
                ? () => _36c2.maybeUnBoxAndBuildArgument<
                        _7de1.FutureOr<_fac9.dynamic>, _fac9.dynamic>(
                    unpackedonTimeout.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_whenComplete'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedaction = luaCallerArguments[1];
  return [
    _36c2.maybeBoxObject(
        object: super.whenComplete(() => _36c2.maybeUnBoxAndBuildArgument<
                _7de1.FutureOr<_fac9.dynamic>, _fac9.dynamic>(
            unpackedaction.dispatch(
              [
                luaCallerArguments[0],
              ],
              parentState: hydroState,
            )[0],
            parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_6f38.SynchronousFuture unwrap() => this;
_6f38.SynchronousFuture get vmObject => this;
@_fac9.override _7de1.Stream<_fac9.dynamic> asStream() { 
_36c2.Closure closure = table["asStream"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Stream<_fac9.dynamic>, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_fac9.dynamic> catchError(onError, {_fac9.bool Function(_fac9.Object error)? test}) { 
_36c2.Closure closure = table["catchError"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic>, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<R> then<R>(onValue, {_fac9.Function? onError}) { 
_36c2.Closure closure = table["then"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<R>, R>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_fac9.dynamic> timeout(timeLimit, {_7de1.FutureOr<_fac9.dynamic> Function()? onTimeout}) { 
_36c2.Closure closure = table["timeout"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic>, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_fac9.dynamic> whenComplete(action) { 
_36c2.Closure closure = table["whenComplete"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic>, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadSynchronousFuture({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'synchronousFuture'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedSynchronousFuture(luaCallerArguments  [
1
], table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_6f38.SynchronousFuture>(boxer: ({required _6f38.SynchronousFuture vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSynchronousFuture(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
