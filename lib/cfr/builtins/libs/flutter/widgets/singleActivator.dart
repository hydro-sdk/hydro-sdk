import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/services/keyboard_key.dart' as _e468;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;
import 'package:flutter/src/widgets/shortcuts.dart' as _1710;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSingleActivator
    extends _36c2.VMManagedBox<_1710.SingleActivator> {
  VMManagedSingleActivator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['trigger'] = _36c2.maybeBoxObject<_e468.LogicalKeyboardKey>(
        object: vmObject.trigger,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['control'] = vmObject.control;
    table['shift'] = vmObject.shift;
    table['alt'] = vmObject.alt;
    table['meta'] = vmObject.meta;
    table['getTriggers'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.triggers,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['accepts'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.accepts(
            _36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyEvent, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyboard, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['debugDescribeKeys'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugDescribeKeys(),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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

  final _1710.SingleActivator vmObject;
}

class RTManagedSingleActivator extends _1710.SingleActivator
    implements _36c2.Box<_1710.SingleActivator> {
  RTManagedSingleActivator(_e468.LogicalKeyboardKey trigger$,
      {required _fac9.bool alt,
      required _fac9.bool control,
      required _fac9.bool meta,
      required _fac9.bool shift,
      required this.table,
      required this.hydroState})
      : super(trigger$, alt: alt, control: control, meta: meta, shift: shift) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['trigger'] = _36c2.maybeBoxObject(
        object: this.trigger,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['control'] = _36c2.maybeBoxObject(
        object: this.control,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shift'] = _36c2.maybeBoxObject(
        object: this.shift, hydroState: hydroState, table: _36c2.HydroTable());
    table['alt'] = _36c2.maybeBoxObject(
        object: this.alt, hydroState: hydroState, table: _36c2.HydroTable());
    table['meta'] = _36c2.maybeBoxObject(
        object: this.meta, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getTriggers'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.triggers];
    });
    table['_dart_accepts'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.accepts(
                _36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyEvent,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyboard,
                        _fac9.dynamic>(luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugDescribeKeys'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeKeys(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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

  _1710.SingleActivator unwrap() => this;
  _1710.SingleActivator get vmObject => this;
  @_fac9.override
  _fac9.Iterable<_e468.LogicalKeyboardKey> get triggers {
    _36c2.Closure closure = table["getTriggers"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Iterable<_e468.LogicalKeyboardKey>, _e468.LogicalKeyboardKey>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool accepts(event, state) {
    _36c2.Closure closure = table["accepts"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String debugDescribeKeys() {
    _36c2.Closure closure = table["debugDescribeKeys"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadSingleActivator(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['singleActivator'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSingleActivator(
          _36c2.maybeUnBoxAndBuildArgument<_e468.LogicalKeyboardKey,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alt: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['alt']
              : null,
          control: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['control']
              : null,
          meta: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['meta']
              : null,
          shift: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['shift']
              : null)
    ];
  });
  _36c2.registerBoxer<_1710.SingleActivator>(boxer: (
      {required _1710.SingleActivator vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSingleActivator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
