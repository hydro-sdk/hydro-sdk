import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/licenses.dart' as _7782;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLicenseEntryWithLineBreaks
    extends _36c2.VMManagedBox<_7782.LicenseEntryWithLineBreaks> {
  VMManagedLicenseEntryWithLineBreaks(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['packages'] = _36c2.maybeBoxObject<_fac9.List<_fac9.String>>(
        object: vmObject.packages,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['text'] = vmObject.text;
    table['getPackages'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.String>>(
            object: vmObject.packages,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getParagraphs'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.paragraphs,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
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

  final _7782.LicenseEntryWithLineBreaks vmObject;
}

class RTManagedLicenseEntryWithLineBreaks
    extends _7782.LicenseEntryWithLineBreaks
    implements _36c2.Box<_7782.LicenseEntryWithLineBreaks> {
  RTManagedLicenseEntryWithLineBreaks(
      _fac9.List<_fac9.String> packages$, _fac9.String text$,
      {required this.table, required this.hydroState})
      : super(
          packages$,
          text$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['packages'] = _36c2.maybeBoxObject(
        object: this.packages,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['text'] = _36c2.maybeBoxObject(
        object: this.text, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getPackages'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.packages];
    });
    table['_dart_getParagraphs'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.paragraphs];
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

  _7782.LicenseEntryWithLineBreaks unwrap() => this;
  _7782.LicenseEntryWithLineBreaks get vmObject => this;
  @_fac9.override
  _fac9.List<_fac9.String> get packages {
    _36c2.Closure closure = table["getPackages"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.Iterable<_7782.LicenseParagraph> get paragraphs {
    _36c2.Closure closure = table["getParagraphs"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Iterable<_7782.LicenseParagraph>, _7782.LicenseParagraph>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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

void loadLicenseEntryWithLineBreaks(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['licenseEntryWithLineBreaks'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedLicenseEntryWithLineBreaks(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>,
              _fac9.String>(luaCallerArguments[1], parentState: hydroState),
          luaCallerArguments[2],
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_7782.LicenseEntryWithLineBreaks>(boxer: (
      {required _7782.LicenseEntryWithLineBreaks vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLicenseEntryWithLineBreaks(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
