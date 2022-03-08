import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/widgets/actions.dart' as _c0f4;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAction extends _36c2.VMManagedBox<_c0f4.Action<_c0f4.Intent>> {
  VMManagedAction(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getIntentType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Type>(
            object: vmObject.intentType,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['isEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isEnabled(luaCallerArguments[1]),
      ];
    });
    table['getIsActionEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isActionEnabled,
      ];
    });
    table['consumesKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.consumesKey(luaCallerArguments[1]),
      ];
    });
    table['addActionListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addActionListener((action) => unpackedlistener.dispatch(
            [luaCallerArguments[0], action],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeActionListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeActionListener((action) => unpackedlistener.dispatch(
            [luaCallerArguments[0], action],
            parentState: hydroState,
          ));
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

  final _c0f4.Action<_c0f4.Intent> vmObject;
}

class RTManagedAction extends _c0f4.Action implements _36c2.Box<_c0f4.Action> {
  RTManagedAction({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getCallingAction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.callingAction];
    });
    table['_dart_getIntentType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.intentType];
    });
    table['_dart_isEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.isEnabled(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getIsActionEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isActionEnabled];
    });
    table['_dart_consumesKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.consumesKey(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_invoke'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: invoke(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_addActionListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addActionListener((action) => unpackedlistener.dispatch(
            [luaCallerArguments[0], action],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeActionListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeActionListener((action) => unpackedlistener.dispatch(
            [luaCallerArguments[0], action],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_notifyActionListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyActionListeners();
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
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _c0f4.Action unwrap() => this;
  _c0f4.Action get vmObject => this;
  @_fac9.override
  _c0f4.Action<_c0f4.Intent>? get callingAction {
    _36c2.Closure closure = table["getCallingAction"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_c0f4.Action<_c0f4.Intent>?, _c0f4.Intent>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.Type get intentType {
    _36c2.Closure closure = table["getIntentType"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Type, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool isEnabled(intent) {
    _36c2.Closure closure = table["isEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isActionEnabled {
    _36c2.Closure closure = table["getIsActionEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool consumesKey(intent) {
    _36c2.Closure closure = table["consumesKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Object? invoke(intent) {
    _36c2.Closure closure = table["invoke"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void addActionListener(listener) {
    super.addActionListener(listener);
    _36c2.Closure closure = table["addActionListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeActionListener(listener) {
    super.removeActionListener(listener);
    _36c2.Closure closure = table["removeActionListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyActionListeners() {
    _36c2.Closure closure = table["notifyActionListeners"];
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

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAction(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['action'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAction(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['actionOverridable'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_c0f4.Action>(
          object: _c0f4.Action.overridable(
              context: _36c2
                  .maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['context']
                          : null,
                      parentState: hydroState),
              defaultAction:
                  _36c2.maybeUnBoxAndBuildArgument<_c0f4.Action<_fac9.dynamic>, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['defaultAction']
                          : null,
                      parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_c0f4.Action>(boxer: (
      {required _c0f4.Action vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAction(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
