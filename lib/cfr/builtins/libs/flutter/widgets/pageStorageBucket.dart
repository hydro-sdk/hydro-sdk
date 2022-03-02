import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/page_storage.dart' as _c05c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPageStorageBucket
    extends _36c2.VMManagedBox<_c05c.PageStorageBucket> {
  VMManagedPageStorageBucket(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['writeState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.writeState(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2],
          identifier:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                  luaCallerArguments.length >= 4
                      ? luaCallerArguments[3]['identifier']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['readState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.readState(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            identifier:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['identifier']
                        : null,
                    parentState: hydroState)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _c05c.PageStorageBucket vmObject;
}

class RTManagedPageStorageBucket extends _c05c.PageStorageBucket
    implements _36c2.Box<_c05c.PageStorageBucket> {
  RTManagedPageStorageBucket({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_writeState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.writeState(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2],
          identifier:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                  luaCallerArguments.length >= 4
                      ? luaCallerArguments[3]['identifier']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_readState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        super.readState(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            identifier:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['identifier']
                        : null,
                    parentState: hydroState))
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _c05c.PageStorageBucket unwrap() => this;
  _c05c.PageStorageBucket get vmObject => this;
  @_fac9.override
  void writeState(context, data, {_fac9.Object? identifier}) {
    _36c2.Closure closure = table["writeState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.dynamic readState(context, {_fac9.Object? identifier}) {
    _36c2.Closure closure = table["readState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPageStorageBucket(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['pageStorageBucket'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPageStorageBucket(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_c05c.PageStorageBucket>(boxer: (
      {required _c05c.PageStorageBucket vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPageStorageBucket(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
