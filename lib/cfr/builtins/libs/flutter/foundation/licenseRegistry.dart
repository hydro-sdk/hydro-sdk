import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/licenses.dart' as _7782;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLicenseRegistry
    extends _36c2.VMManagedBox<_7782.LicenseRegistry> {
  VMManagedLicenseRegistry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7782.LicenseRegistry vmObject;
}

void loadLicenseRegistry(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['licenseRegistryAddLicense'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedcollector = luaCallerArguments[1];
    _7782.LicenseRegistry.addLicense(() => _36c2.maybeUnBoxAndBuildArgument<
            _7de1.Stream<_7782.LicenseEntry>, _7782.LicenseEntry>(
        unpackedcollector.dispatch(
          [
            luaCallerArguments[0],
          ],
          parentState: hydroState,
        )[0],
        parentState: hydroState));
    return [];
  });
  table['licenseRegistryLicenses'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Stream>(
          object: _7782.LicenseRegistry.licenses,
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['licenseRegistryReset'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _7782.LicenseRegistry.reset();
    return [];
  });
  _36c2.registerBoxer<_7782.LicenseRegistry>(boxer: (
      {required _7782.LicenseRegistry vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLicenseRegistry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
