import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/table.dart' as _0e67;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTableRow extends _36c2.VMManagedBox<_0e67.TableRow> {
  VMManagedTableRow(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['key'] = _36c2.maybeBoxObject<_ab4a.LocalKey?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decoration'] = _36c2.maybeBoxObject<_13a5.Decoration?>(
        object: vmObject.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['children'] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>?>(
        object: vmObject.children,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _0e67.TableRow vmObject;
}

class RTManagedTableRow extends _0e67.TableRow
    implements _36c2.Box<_0e67.TableRow> {
  RTManagedTableRow(
      {_fac9.List<_e2dc.Widget>? children,
      _13a5.Decoration? decoration,
      _ab4a.LocalKey? key,
      required this.table,
      required this.hydroState})
      : super(children: children, decoration: decoration, key: key) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['decoration'] = _36c2.maybeBoxObject(
        object: this.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['children'] = _36c2.maybeBoxObject(
        object: this.children,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0e67.TableRow unwrap() => this;
  _0e67.TableRow get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTableRow(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['tableRow'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTableRow(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          children: _36c2
              .maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>?, _e2dc.Widget>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['children']
                      : null,
                  parentState: hydroState),
          decoration:
              _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['decoration']
                      : null,
                  parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.LocalKey?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_0e67.TableRow>(boxer: (
      {required _0e67.TableRow vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTableRow(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
