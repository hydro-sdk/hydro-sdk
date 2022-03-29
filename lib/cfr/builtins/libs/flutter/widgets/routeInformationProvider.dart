import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/widgets/router.dart' as _f6ef;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRouteInformationProvider
    extends _36c2.VMManagedBox<_f6ef.RouteInformationProvider> {
  VMManagedRouteInformationProvider(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['routerReportsNewRouteInformation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.routerReportsNewRouteInformation(
          _36c2.maybeUnBoxAndBuildArgument<_f6ef.RouteInformation,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          type: _36c2.maybeUnBoxEnum(
              values: _f6ef.RouteInformationReportingType.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['type']
                  : null));
      return [];
    });
    table['getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_f6ef.RouteInformation>(
            object: vmObject.value,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
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

  final _f6ef.RouteInformationProvider vmObject;
}

class RTManagedRouteInformationProvider extends _f6ef.RouteInformationProvider
    implements _36c2.Box<_f6ef.RouteInformationProvider> {
  RTManagedRouteInformationProvider(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_routerReportsNewRouteInformation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.routerReportsNewRouteInformation(
          _36c2.maybeUnBoxAndBuildArgument<_f6ef.RouteInformation,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          type: _36c2.maybeUnBoxEnum(
              values: _f6ef.RouteInformationReportingType.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['type']
                  : null));
      return [];
    });
    table['_dart_getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [value];
    });
    table['_dart_addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _f6ef.RouteInformationProvider unwrap() => this;
  _f6ef.RouteInformationProvider get vmObject => this;
  @_fac9.override
  void routerReportsNewRouteInformation(routeInformation,
      {required _f6ef.RouteInformationReportingType type}) {
    _36c2.Closure closure = table["routerReportsNewRouteInformation"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _f6ef.RouteInformation get value {
    _36c2.Closure closure = table["getValue"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_f6ef.RouteInformation, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void addListener(listener) {
    _36c2.Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeListener(listener) {
    _36c2.Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRouteInformationProvider(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['routeInformationProvider'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRouteInformationProvider(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_f6ef.RouteInformationProvider>(boxer: (
      {required _f6ef.RouteInformationProvider vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRouteInformationProvider(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
