import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/dismissible.dart' as _be7c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDismissUpdateDetails
    extends _36c2.VMManagedBox<_be7c.DismissUpdateDetails> {
  VMManagedDismissUpdateDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['direction'] = _be7c.DismissDirection.values.indexWhere((x) {
      return x == vmObject.direction;
    });
    table['reached'] = vmObject.reached;
    table['previousReached'] = vmObject.previousReached;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _be7c.DismissUpdateDetails vmObject;
}

class RTManagedDismissUpdateDetails extends _be7c.DismissUpdateDetails
    implements _36c2.Box<_be7c.DismissUpdateDetails> {
  RTManagedDismissUpdateDetails(
      {required _be7c.DismissDirection direction,
      required _fac9.bool previousReached,
      required _fac9.bool reached,
      required this.table,
      required this.hydroState})
      : super(
            direction: direction,
            previousReached: previousReached,
            reached: reached) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['direction'] = _be7c.DismissDirection.values.indexWhere((x) {
      return x == this.direction;
    });
    table['reached'] = _36c2.maybeBoxObject(
        object: this.reached,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['previousReached'] = _36c2.maybeBoxObject(
        object: this.previousReached,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _be7c.DismissUpdateDetails unwrap() => this;
  _be7c.DismissUpdateDetails get vmObject => this;
}

void loadDismissUpdateDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dismissUpdateDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDismissUpdateDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          direction: _36c2.maybeUnBoxEnum(
              values: _be7c.DismissDirection.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['direction']
                  : null),
          previousReached: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['previousReached']
              : null,
          reached: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['reached']
              : null)
    ];
  });
  _36c2.registerBoxer<_be7c.DismissUpdateDetails>(boxer: (
      {required _be7c.DismissUpdateDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDismissUpdateDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
