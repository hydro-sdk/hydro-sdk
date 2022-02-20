import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/layer.dart' as _7d70;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnnotationResult
    extends _36c2.VMManagedBox<_7d70.AnnotationResult<_fac9.dynamic>> {
  VMManagedAnnotationResult(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['add'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.add(_36c2.maybeUnBoxAndBuildArgument<
          _7d70.AnnotationEntry<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getEntries'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.entries,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getAnnotations'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.annotations,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7d70.AnnotationResult<_fac9.dynamic> vmObject;
}

class RTManagedAnnotationResult extends _7d70.AnnotationResult
    implements _36c2.Box<_7d70.AnnotationResult> {
  RTManagedAnnotationResult({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_add'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.add(_36c2.maybeUnBoxAndBuildArgument<
          _7d70.AnnotationEntry<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getEntries'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.entries];
    });
    table['_dart_getAnnotations'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.annotations];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _7d70.AnnotationResult unwrap() => this;
  _7d70.AnnotationResult get vmObject => this;
  @_fac9.override
  void add(entry) {
    _36c2.Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Iterable<_7d70.AnnotationEntry<_fac9.dynamic>> get entries {
    _36c2.Closure closure = table["getEntries"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Iterable<_7d70.AnnotationEntry<_fac9.dynamic>>,
            _7d70.AnnotationEntry<_fac9.dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Iterable<_fac9.dynamic> get annotations {
    _36c2.Closure closure = table["getAnnotations"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.dynamic>,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadAnnotationResult(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['annotationResult'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAnnotationResult(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_7d70.AnnotationResult>(boxer: (
      {required _7d70.AnnotationResult vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAnnotationResult(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
