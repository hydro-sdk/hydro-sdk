import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/text_editing.dart' as _7986;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextSelection extends _36c2.VMManagedBox<_7986.TextSelection> {
  VMManagedTextSelection(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['baseOffset'] = vmObject.baseOffset;
    table['extentOffset'] = vmObject.extentOffset;
    table['affinity'] = _a643.TextAffinity.values.indexWhere((x) {
      return x == vmObject.affinity;
    });
    table['isDirectional'] = vmObject.isDirectional;
    table['start'] = vmObject.start;
    table['end'] = vmObject.end;
    table['getBase'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.TextPosition>(
            object: vmObject.base,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.TextPosition>(
            object: vmObject.extent,
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
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7986.TextSelection>(
            object: vmObject.copyWith(
                affinity: _36c2.maybeUnBoxEnum(
                    values: _a643.TextAffinity.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['affinity']
                        : null),
                baseOffset: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['baseOffset']
                    : null,
                extentOffset: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['extentOffset']
                    : null,
                isDirectional: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['isDirectional']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['expandTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7986.TextSelection>(
            object: vmObject.expandTo(
                _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                luaCallerArguments[2]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['extendTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7986.TextSelection>(
            object: vmObject.extendTo(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['textBefore'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.textBefore(luaCallerArguments[1]),
      ];
    });
    table['textAfter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.textAfter(luaCallerArguments[1]),
      ];
    });
    table['textInside'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.textInside(luaCallerArguments[1]),
      ];
    });
    table['getIsValid'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isValid,
      ];
    });
    table['getIsCollapsed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isCollapsed,
      ];
    });
    table['getIsNormalized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isNormalized,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7986.TextSelection vmObject;
}

class RTManagedTextSelection extends _7986.TextSelection
    implements _36c2.Box<_7986.TextSelection> {
  RTManagedTextSelection(
      {required _a643.TextAffinity affinity,
      required _fac9.bool isDirectional,
      required _fac9.int baseOffset,
      required _fac9.int extentOffset,
      required this.table,
      required this.hydroState})
      : super(
            affinity: affinity,
            isDirectional: isDirectional,
            baseOffset: baseOffset,
            extentOffset: extentOffset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['baseOffset'] = _36c2.maybeBoxObject(
        object: this.baseOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extentOffset'] = _36c2.maybeBoxObject(
        object: this.extentOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['affinity'] = _a643.TextAffinity.values.indexWhere((x) {
      return x == this.affinity;
    });
    table['isDirectional'] = _36c2.maybeBoxObject(
        object: this.isDirectional,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['start'] = _36c2.maybeBoxObject(
        object: start, hydroState: hydroState, table: _36c2.HydroTable());
    table['end'] = _36c2.maybeBoxObject(
        object: end, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getBase'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.base];
    });
    table['_dart_getExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.extent];
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
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                affinity: _36c2.maybeUnBoxEnum(
                    values: _a643.TextAffinity.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['affinity']
                        : null),
                baseOffset: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['baseOffset'] : null,
                    parentState: hydroState),
                extentOffset:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['extentOffset']
                            : null,
                        parentState: hydroState),
                isDirectional: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isDirectional'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_expandTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.expandTo(
                _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_extendTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.extendTo(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_textBefore'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.textBefore(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_textAfter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.textAfter(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_textInside'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.textInside(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getIsValid'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isValid];
    });
    table['_dart_getIsCollapsed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isCollapsed];
    });
    table['_dart_getIsNormalized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isNormalized];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _7986.TextSelection unwrap() => this;
  _7986.TextSelection get vmObject => this;
  @_fac9.override
  _a643.TextPosition get base {
    _36c2.Closure closure = table["getBase"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.TextPosition get extent {
    _36c2.Closure closure = table["getExtent"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
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

  @_fac9.override
  _7986.TextSelection copyWith(
      {_a643.TextAffinity? affinity,
      _fac9.int? baseOffset,
      _fac9.int? extentOffset,
      _fac9.bool? isDirectional}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7986.TextSelection expandTo(position, [_fac9.bool extentAtIndex = false]) {
    _36c2.Closure closure = table["expandTo"];
    return _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7986.TextSelection extendTo(position) {
    _36c2.Closure closure = table["extendTo"];
    return _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String textBefore(text) {
    _36c2.Closure closure = table["textBefore"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String textAfter(text) {
    _36c2.Closure closure = table["textAfter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String textInside(text) {
    _36c2.Closure closure = table["textInside"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isValid {
    _36c2.Closure closure = table["getIsValid"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isCollapsed {
    _36c2.Closure closure = table["getIsCollapsed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isNormalized {
    _36c2.Closure closure = table["getIsNormalized"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTextSelection(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textSelection'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextSelection(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          affinity: _36c2.maybeUnBoxEnum(
              values: _a643.TextAffinity.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['affinity']
                  : null),
          isDirectional: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['isDirectional']
              : null,
          baseOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['baseOffset']
              : null,
          extentOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['extentOffset']
              : null)
    ];
  });
  _36c2.registerBoxer<_7986.TextSelection>(boxer: (
      {required _7986.TextSelection vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextSelection(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
