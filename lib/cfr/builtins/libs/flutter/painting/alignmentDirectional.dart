import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/alignment.dart' as _ca85;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAlignmentDirectional
    extends _36c2.VMManagedBox<_ca85.AlignmentDirectional> {
  VMManagedAlignmentDirectional(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['start'] = vmObject.start;
    table['y'] = vmObject.y;
    table['add'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ca85.AlignmentGeometry>(
            object: vmObject.add(_36c2.maybeUnBoxAndBuildArgument<
                _ca85.AlignmentGeometry,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ca85.Alignment>(
            object: vmObject.resolve(_36c2.maybeUnBoxEnum(
                values: _a643.TextDirection.values,
                boxedEnum: luaCallerArguments[1])),
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

  final _ca85.AlignmentDirectional vmObject;
}

class RTManagedAlignmentDirectional extends _ca85.AlignmentDirectional
    implements _36c2.Box<_ca85.AlignmentDirectional> {
  RTManagedAlignmentDirectional(_fac9.double start$, _fac9.double y$,
      {required this.table, required this.hydroState})
      : super(
          start$,
          y$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['start'] = _36c2.maybeBoxObject(
        object: this.start, hydroState: hydroState, table: _36c2.HydroTable());
    table['y'] = _36c2.maybeBoxObject(
        object: this.y, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_add'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.add(_36c2.maybeUnBoxAndBuildArgument<
                _ca85.AlignmentGeometry,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.resolve(_36c2.maybeUnBoxEnum(
                values: _a643.TextDirection.values,
                boxedEnum: luaCallerArguments[1])),
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

  _ca85.AlignmentDirectional unwrap() => this;
  _ca85.AlignmentDirectional get vmObject => this;
  @_fac9.override
  _ca85.AlignmentGeometry add(other) {
    _36c2.Closure closure = table["add"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _ca85.Alignment resolve(direction) {
    _36c2.Closure closure = table["resolve"];
    return _36c2.maybeUnBoxAndBuildArgument<_ca85.Alignment, _fac9.dynamic>(
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

void loadAlignmentDirectional(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['alignmentDirectional'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAlignmentDirectional(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble(),
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['alignmentDirectionalLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _ca85.AlignmentDirectional.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentDirectional?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentDirectional?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_ca85.AlignmentDirectional?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_ca85.AlignmentDirectional>(boxer: (
      {required _ca85.AlignmentDirectional vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAlignmentDirectional(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
