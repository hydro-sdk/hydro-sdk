import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/restoration_properties.dart' as _28c9;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRestorableDoubleN
    extends _36c2.VMManagedBox<_28c9.RestorableDoubleN> {
  VMManagedRestorableDoubleN(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['createDefaultValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.createDefaultValue();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['didUpdateValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didUpdateValue(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['fromPrimitives'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.fromPrimitives(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['toPrimitives'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.toPrimitives();
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.Object?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['initWithValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initWithValue(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.value;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.value = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.enabled,
      ];
    });
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
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

  final _28c9.RestorableDoubleN vmObject;
}

class RTManagedRestorableDoubleN extends _28c9.RestorableDoubleN
    implements _36c2.Box<_28c9.RestorableDoubleN> {
  RTManagedRestorableDoubleN(_fac9.double? defaultValue,
      {required this.table, required this.hydroState})
      : super(
          defaultValue,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_createDefaultValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createDefaultValue(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didUpdateValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUpdateValue(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_fromPrimitives'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.fromPrimitives(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toPrimitives'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toPrimitives(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_initWithValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initWithValue(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.value];
    });
    table['_dart_setValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.value =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_getEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.enabled];
    });
    table['_dart_getState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.state];
    });
    table['_dart_getIsRegistered'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isRegistered];
    });
    table['_dart_addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_notifyListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_getHasListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasListeners];
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

  _28c9.RestorableDoubleN unwrap() => this;
  _28c9.RestorableDoubleN get vmObject => this;
  @_fac9.override
  _fac9.double? createDefaultValue() {
    _36c2.Closure closure = table["createDefaultValue"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void didUpdateValue(oldValue) {
    _36c2.Closure closure = table["didUpdateValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double? fromPrimitives(serialized) {
    _36c2.Closure closure = table["fromPrimitives"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.Object? toPrimitives() {
    _36c2.Closure closure = table["toPrimitives"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void initWithValue(value) {
    super.initWithValue(value);
    _36c2.Closure closure = table["initWithValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double? get value {
    _36c2.Closure closure = table["getValue"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set value(newValue) {
    _36c2.Closure closure = table["setValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get enabled {
    _36c2.Closure closure = table["getEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.State<_e2dc.StatefulWidget> get state {
    _36c2.Closure closure = table["getState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_e2dc.StatefulWidget>,
            _e2dc.StatefulWidget>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get isRegistered {
    _36c2.Closure closure = table["getIsRegistered"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addListener(listener) {
    _36c2.Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeListener(listener) {
    _36c2.Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyListeners() {
    _36c2.Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasListeners {
    _36c2.Closure closure = table["getHasListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadRestorableDoubleN(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['restorableDoubleN'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRestorableDoubleN(luaCallerArguments[1]?.toDouble(),
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_28c9.RestorableDoubleN>(boxer: (
      {required _28c9.RestorableDoubleN vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRestorableDoubleN(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
