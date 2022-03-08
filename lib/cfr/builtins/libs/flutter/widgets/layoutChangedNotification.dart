import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/notification_listener.dart' as _c8d8;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLayoutChangedNotification
    extends _36c2.VMManagedBox<_c8d8.LayoutChangedNotification> {
  VMManagedLayoutChangedNotification(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['dispatch'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatch(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _c8d8.LayoutChangedNotification vmObject;
}

class RTManagedLayoutChangedNotification extends _c8d8.LayoutChangedNotification
    implements _36c2.Box<_c8d8.LayoutChangedNotification> {
  RTManagedLayoutChangedNotification(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_visitAncestor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.visitAncestor(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_dispatch'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispatch(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugFillDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillDescription(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_fac9.String>,
          _fac9.String>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _c8d8.LayoutChangedNotification unwrap() => this;
  _c8d8.LayoutChangedNotification get vmObject => this;
  @_fac9.override
  _fac9.bool visitAncestor(element) {
    super.visitAncestor(element);
    _36c2.Closure closure = table["visitAncestor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispatch(target) {
    _36c2.Closure closure = table["dispatch"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillDescription(description) {
    super.debugFillDescription(description);
    _36c2.Closure closure = table["debugFillDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadLayoutChangedNotification(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['layoutChangedNotification'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedLayoutChangedNotification(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_c8d8.LayoutChangedNotification>(boxer: (
      {required _c8d8.LayoutChangedNotification vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLayoutChangedNotification(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
