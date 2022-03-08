import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/animations.dart' as _77a7;
import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAlwaysStoppedAnimation
    extends _36c2.VMManagedBox<_77a7.AlwaysStoppedAnimation<_fac9.dynamic>> {
  VMManagedAlwaysStoppedAnimation(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
    table['getStatus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _86ca.AnimationStatus.values.indexWhere((x) {
          return x == vmObject.status;
        }),
      ];
    });
    table['toStringDetails'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDetails(),
      ];
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
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.value,
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

  final _77a7.AlwaysStoppedAnimation<_fac9.dynamic> vmObject;
}

class RTManagedAlwaysStoppedAnimation extends _77a7.AlwaysStoppedAnimation
    implements _36c2.Box<_77a7.AlwaysStoppedAnimation> {
  RTManagedAlwaysStoppedAnimation(_fac9.dynamic value$,
      {required this.table, required this.hydroState})
      : super(
          value$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
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
    table['_dart_getStatus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.status];
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
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [value];
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

  _77a7.AlwaysStoppedAnimation unwrap() => this;
  _77a7.AlwaysStoppedAnimation get vmObject => this;
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
  _86ca.AnimationStatus get status {
    _36c2.Closure closure = table["getStatus"];
    return _36c2.maybeUnBoxEnum(
        values: _86ca.AnimationStatus.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.String toStringDetails() {
    _36c2.Closure closure = table["toStringDetails"];
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
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.dynamic get value {
    _36c2.Closure closure = table["getValue"];
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

void loadAlwaysStoppedAnimation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['alwaysStoppedAnimation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAlwaysStoppedAnimation(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_77a7.AlwaysStoppedAnimation>(boxer: (
      {required _77a7.AlwaysStoppedAnimation vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAlwaysStoppedAnimation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
