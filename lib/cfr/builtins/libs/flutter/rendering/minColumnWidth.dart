import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/table.dart' as _31d2;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMinColumnWidth extends _36c2.VMManagedBox<_31d2.MinColumnWidth> {
  VMManagedMinColumnWidth(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['a'] = _36c2.maybeBoxObject<_31d2.TableColumnWidth>(
        object: vmObject.a, hydroState: hydroState, table: _36c2.HydroTable());
    table['b'] = _36c2.maybeBoxObject<_31d2.TableColumnWidth>(
        object: vmObject.b, hydroState: hydroState, table: _36c2.HydroTable());
    table['minIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.minIntrinsicWidth(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_be2e.RenderBox>,
                    _be2e.RenderBox>(luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['maxIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maxIntrinsicWidth(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_be2e.RenderBox>,
                    _be2e.RenderBox>(luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['flex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.flex(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.Iterable<_be2e.RenderBox>,
          _be2e.RenderBox>(luaCallerArguments[1], parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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

  final _31d2.MinColumnWidth vmObject;
}

class RTManagedMinColumnWidth extends _31d2.MinColumnWidth
    implements _36c2.Box<_31d2.MinColumnWidth> {
  RTManagedMinColumnWidth(_31d2.TableColumnWidth a$, _31d2.TableColumnWidth b$,
      {required this.table, required this.hydroState})
      : super(
          a$,
          b$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['a'] = _36c2.maybeBoxObject(
        object: this.a, hydroState: hydroState, table: _36c2.HydroTable());
    table['b'] = _36c2.maybeBoxObject(
        object: this.b, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_minIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.minIntrinsicWidth(
                _36c2.maybeUnBoxAndBuildArgument<
                        _fac9.Iterable<_be2e.RenderBox>,
                        _be2e.RenderBox>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_maxIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.maxIntrinsicWidth(
                _36c2.maybeUnBoxAndBuildArgument<
                        _fac9.Iterable<_be2e.RenderBox>,
                        _be2e.RenderBox>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_flex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.flex(_36c2.maybeUnBoxAndBuildArgument<
                    _fac9.Iterable<_be2e.RenderBox>,
                    _be2e.RenderBox>(luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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

  _31d2.MinColumnWidth unwrap() => this;
  _31d2.MinColumnWidth get vmObject => this;
  @_fac9.override
  _fac9.double minIntrinsicWidth(cells, containerWidth) {
    _36c2.Closure closure = table["minIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double maxIntrinsicWidth(cells, containerWidth) {
    _36c2.Closure closure = table["maxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double? flex(cells) {
    _36c2.Closure closure = table["flex"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
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

void loadMinColumnWidth(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['minColumnWidth'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMinColumnWidth(
          _36c2.maybeUnBoxAndBuildArgument<_31d2.TableColumnWidth,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_31d2.TableColumnWidth,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_31d2.MinColumnWidth>(boxer: (
      {required _31d2.MinColumnWidth vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMinColumnWidth(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
