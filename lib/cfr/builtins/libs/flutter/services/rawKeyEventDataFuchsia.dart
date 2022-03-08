import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/services/keyboard_key.dart' as _e468;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;
import 'package:flutter/src/services/raw_keyboard_fuchsia.dart' as _078a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRawKeyEventDataFuchsia
    extends _36c2.VMManagedBox<_078a.RawKeyEventDataFuchsia> {
  VMManagedRawKeyEventDataFuchsia(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['hidUsage'] = vmObject.hidUsage;
    table['codePoint'] = vmObject.codePoint;
    table['modifiers'] = vmObject.modifiers;
    table['getKeyLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.keyLabel,
      ];
    });
    table['getLogicalKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e468.LogicalKeyboardKey>(
            object: vmObject.logicalKey,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPhysicalKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e468.PhysicalKeyboardKey>(
            object: vmObject.physicalKey,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['isModifierPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isModifierPressed(
            _36c2.maybeUnBoxEnum(
                values: _94e8.ModifierKey.values,
                boxedEnum: luaCallerArguments[1]),
            side: _36c2.maybeUnBoxEnum(
                values: _94e8.KeyboardSide.values,
                boxedEnum: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['side']
                    : null)),
      ];
    });
    table['getModifierSide'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.getModifierSide(_36c2.maybeUnBoxEnum(
          values: _94e8.ModifierKey.values, boxedEnum: luaCallerArguments[1]));
      if (returnValue != null) {
        return [
          _94e8.KeyboardSide.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['shouldDispatchEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldDispatchEvent(),
      ];
    });
    table['getIsControlPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isControlPressed,
      ];
    });
    table['getIsShiftPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isShiftPressed,
      ];
    });
    table['getIsAltPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isAltPressed,
      ];
    });
    table['getIsMetaPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isMetaPressed,
      ];
    });
    table['getModifiersPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Map>(
            object: vmObject.modifiersPressed,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _078a.RawKeyEventDataFuchsia vmObject;
}

class RTManagedRawKeyEventDataFuchsia extends _078a.RawKeyEventDataFuchsia
    implements _36c2.Box<_078a.RawKeyEventDataFuchsia> {
  RTManagedRawKeyEventDataFuchsia(
      {required _fac9.int codePoint,
      required _fac9.int hidUsage,
      required _fac9.int modifiers,
      required this.table,
      required this.hydroState})
      : super(codePoint: codePoint, hidUsage: hidUsage, modifiers: modifiers) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['hidUsage'] = _36c2.maybeBoxObject(
        object: this.hidUsage,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['codePoint'] = _36c2.maybeBoxObject(
        object: this.codePoint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['modifiers'] = _36c2.maybeBoxObject(
        object: this.modifiers,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getKeyLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.keyLabel];
    });
    table['_dart_getLogicalKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.logicalKey];
    });
    table['_dart_getPhysicalKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.physicalKey];
    });
    table['_dart_isModifierPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.isModifierPressed(
                _36c2.maybeUnBoxEnum(
                    values: _94e8.ModifierKey.values,
                    boxedEnum: luaCallerArguments[1]),
                side: _36c2.maybeUnBoxEnum(
                    values: _94e8.KeyboardSide.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['side']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getModifierSide'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _94e8.KeyboardSide.values.indexWhere((x) {
          return x ==
              super.getModifierSide(_36c2.maybeUnBoxEnum(
                  values: _94e8.ModifierKey.values,
                  boxedEnum: luaCallerArguments[1]));
        })
      ];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_shouldDispatchEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.shouldDispatchEvent(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getIsControlPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isControlPressed];
    });
    table['_dart_getIsShiftPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isShiftPressed];
    });
    table['_dart_getIsAltPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isAltPressed];
    });
    table['_dart_getIsMetaPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isMetaPressed];
    });
    table['_dart_getModifiersPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.modifiersPressed];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _078a.RawKeyEventDataFuchsia unwrap() => this;
  _078a.RawKeyEventDataFuchsia get vmObject => this;
  @_fac9.override
  _fac9.String get keyLabel {
    _36c2.Closure closure = table["getKeyLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e468.LogicalKeyboardKey get logicalKey {
    _36c2.Closure closure = table["getLogicalKey"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e468.LogicalKeyboardKey, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _e468.PhysicalKeyboardKey get physicalKey {
    _36c2.Closure closure = table["getPhysicalKey"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e468.PhysicalKeyboardKey, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool isModifierPressed(key,
      {_94e8.KeyboardSide side = _94e8.KeyboardSide.any}) {
    _36c2.Closure closure = table["isModifierPressed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _94e8.KeyboardSide? getModifierSide(key) {
    _36c2.Closure closure = table["getModifierSide"];
    return _36c2.maybeUnBoxEnum(
        values: _94e8.KeyboardSide.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool shouldDispatchEvent() {
    _36c2.Closure closure = table["shouldDispatchEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isControlPressed {
    _36c2.Closure closure = table["getIsControlPressed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isShiftPressed {
    _36c2.Closure closure = table["getIsShiftPressed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isAltPressed {
    _36c2.Closure closure = table["getIsAltPressed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isMetaPressed {
    _36c2.Closure closure = table["getIsMetaPressed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Map<_94e8.ModifierKey, _94e8.KeyboardSide> get modifiersPressed {
    _36c2.Closure closure = table["getModifiersPressed"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Map<_94e8.ModifierKey, _94e8.KeyboardSide>,
            _94e8.ModifierKey>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }
}

void loadRawKeyEventDataFuchsia(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['rawKeyEventDataFuchsia'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRawKeyEventDataFuchsia(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          codePoint: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['codePoint']
              : null,
          hidUsage: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hidUsage']
              : null,
          modifiers: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['modifiers']
              : null)
    ];
  });
  _36c2.registerBoxer<_078a.RawKeyEventDataFuchsia>(boxer: (
      {required _078a.RawKeyEventDataFuchsia vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRawKeyEventDataFuchsia(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
