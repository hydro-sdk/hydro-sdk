import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/paragraph.dart' as _105e;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPlaceholderSpanIndexSemanticsTag
    extends _36c2.VMManagedBox<_105e.PlaceholderSpanIndexSemanticsTag> {
  VMManagedPlaceholderSpanIndexSemanticsTag(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['index'] = vmObject.index;
    table['name'] = vmObject.name;
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _105e.PlaceholderSpanIndexSemanticsTag vmObject;
}

class RTManagedPlaceholderSpanIndexSemanticsTag
    extends _105e.PlaceholderSpanIndexSemanticsTag
    implements _36c2.Box<_105e.PlaceholderSpanIndexSemanticsTag> {
  RTManagedPlaceholderSpanIndexSemanticsTag(_fac9.int index$,
      {required this.table, required this.hydroState})
      : super(
          index$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['index'] = _36c2.maybeBoxObject(
        object: this.index, hydroState: hydroState, table: _36c2.HydroTable());
    table['name'] = _36c2.maybeBoxObject(
        object: name, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _105e.PlaceholderSpanIndexSemanticsTag unwrap() => this;
  _105e.PlaceholderSpanIndexSemanticsTag get vmObject => this;
  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPlaceholderSpanIndexSemanticsTag(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['placeholderSpanIndexSemanticsTag'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPlaceholderSpanIndexSemanticsTag(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_105e.PlaceholderSpanIndexSemanticsTag>(boxer: (
      {required _105e.PlaceholderSpanIndexSemanticsTag vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPlaceholderSpanIndexSemanticsTag(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
