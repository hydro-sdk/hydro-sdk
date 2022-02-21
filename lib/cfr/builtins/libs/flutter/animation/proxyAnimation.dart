import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/animations.dart' as _77a7;
import 'package:flutter/src/animation/listener_helpers.dart' as _7ec6;
import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedProxyAnimation extends _36c2.VMManagedBox<_77a7.ProxyAnimation> {
  VMManagedProxyAnimation(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_86ca.Animation?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.parent = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>?,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['didStartListening'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStartListening();
      return [];
    });
    table['didStopListening'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStopListening();
      return [];
    });
    table['getStatus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _86ca.AnimationStatus.values.indexWhere((x) {
          return x == vmObject.status;
        }),
      ];
    });
    table['getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.value,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getIsListening'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isListening,
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
    table['addStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
    table['drive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.drive(_36c2.maybeUnBoxAndBuildArgument<
                _e83e.Animatable<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toStringDetails'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDetails(),
      ];
    });
    table['getIsDismissed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isDismissed,
      ];
    });
    table['getIsCompleted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isCompleted,
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

  final _77a7.ProxyAnimation vmObject;
}

class RTManagedProxyAnimation extends _77a7.ProxyAnimation
    implements _36c2.Box<_77a7.ProxyAnimation> {
  RTManagedProxyAnimation(_86ca.Animation<_fac9.double>? animation,
      {required this.table, required this.hydroState})
      : super(
          animation,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_setParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.parent = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>?,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_didStartListening'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStartListening();
      return [];
    });
    table['_dart_didStopListening'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStopListening();
      return [];
    });
    table['_dart_getStatus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.status];
    });
    table['_dart_getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.value];
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
    table['_dart_didRegisterListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didRegisterListener();
      return [];
    });
    table['_dart_didUnregisterListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUnregisterListener();
      return [];
    });
    table['_dart_getIsListening'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isListening];
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
    table['_dart_clearListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.clearListeners();
      return [];
    });
    table['_dart_notifyListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_addStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_clearStatusListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.clearStatusListeners();
      return [];
    });
    table['_dart_notifyStatusListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyStatusListeners(_36c2.maybeUnBoxEnum(
          values: _86ca.AnimationStatus.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_drive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.drive(_36c2.maybeUnBoxAndBuildArgument<
                _e83e.Animatable<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringDetails'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDetails(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getIsDismissed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isDismissed];
    });
    table['_dart_getIsCompleted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isCompleted];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _77a7.ProxyAnimation unwrap() => this;
  _77a7.ProxyAnimation get vmObject => this;
  @_fac9.override
  _86ca.Animation<_fac9.double>? get parent {
    _36c2.Closure closure = table["getParent"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>?,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set parent(value) {
    _36c2.Closure closure = table["setParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didStartListening() {
    _36c2.Closure closure = table["didStartListening"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didStopListening() {
    _36c2.Closure closure = table["didStopListening"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _86ca.AnimationStatus get status {
    _36c2.Closure closure = table["getStatus"];
    return _36c2.maybeUnBoxEnum(
        values: _86ca.AnimationStatus.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.double get value {
    _36c2.Closure closure = table["getValue"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didRegisterListener() {
    _36c2.Closure closure = table["didRegisterListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUnregisterListener() {
    _36c2.Closure closure = table["didUnregisterListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isListening {
    _36c2.Closure closure = table["getIsListening"];
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
  void clearListeners() {
    _36c2.Closure closure = table["clearListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyListeners() {
    _36c2.Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addStatusListener(listener) {
    _36c2.Closure closure = table["addStatusListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeStatusListener(listener) {
    _36c2.Closure closure = table["removeStatusListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clearStatusListeners() {
    _36c2.Closure closure = table["clearStatusListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyStatusListeners(status) {
    _36c2.Closure closure = table["notifyStatusListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _86ca.Animation<U> drive<U>(child) {
    _36c2.Closure closure = table["drive"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<U>, U>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringDetails() {
    _36c2.Closure closure = table["toStringDetails"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isDismissed {
    _36c2.Closure closure = table["getIsDismissed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isCompleted {
    _36c2.Closure closure = table["getIsCompleted"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadProxyAnimation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['proxyAnimation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedProxyAnimation(
          _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>?,
              _fac9.double>(luaCallerArguments[1], parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_77a7.ProxyAnimation>(boxer: (
      {required _77a7.ProxyAnimation vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedProxyAnimation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
