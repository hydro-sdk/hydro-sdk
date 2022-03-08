import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/annotations.dart' as _428a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDocumentationIcon
    extends _36c2.VMManagedBox<_428a.DocumentationIcon> {
  VMManagedDocumentationIcon(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['url'] = vmObject.url;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _428a.DocumentationIcon vmObject;
}

class RTManagedDocumentationIcon extends _428a.DocumentationIcon
    implements _36c2.Box<_428a.DocumentationIcon> {
  RTManagedDocumentationIcon(_fac9.String url$,
      {required this.table, required this.hydroState})
      : super(
          url$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['url'] = _36c2.maybeBoxObject(
        object: this.url, hydroState: hydroState, table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _428a.DocumentationIcon unwrap() => this;
  _428a.DocumentationIcon get vmObject => this;
}

void loadDocumentationIcon(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['documentationIcon'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDocumentationIcon(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_428a.DocumentationIcon>(boxer: (
      {required _428a.DocumentationIcon vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDocumentationIcon(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
