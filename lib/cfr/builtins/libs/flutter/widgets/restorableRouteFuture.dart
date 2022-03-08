import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;
import 'package:flutter/src/widgets/restoration.dart' as _487b;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRestorableRouteFuture
    extends _36c2.VMManagedBox<_a37d.RestorableRouteFuture<_fac9.dynamic>> {
  VMManagedRestorableRouteFuture(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['present'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.present(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getIsPresent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isPresent,
      ];
    });
    table['getRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.route;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a37d.Route?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
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
    table['initWithValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initWithValue(luaCallerArguments[1]);
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
    table['fromPrimitives'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.fromPrimitives(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
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

  final _a37d.RestorableRouteFuture<_fac9.dynamic> vmObject;
}

class RTManagedRestorableRouteFuture extends _a37d.RestorableRouteFuture
    implements _36c2.Box<_a37d.RestorableRouteFuture> {
  RTManagedRestorableRouteFuture(
      {required _a37d.NavigatorState Function(_e2dc.BuildContext context)
          navigatorFinder,
      void Function(_fac9.dynamic result)? onComplete,
      required _fac9.String Function(
              _a37d.NavigatorState navigator, _fac9.Object? arguments)
          onPresent,
      required this.table,
      required this.hydroState})
      : super(
            navigatorFinder: navigatorFinder,
            onComplete: onComplete,
            onPresent: onPresent) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_present'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.present(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getIsPresent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isPresent];
    });
    table['_dart_getRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.route];
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
    table['_dart_initWithValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initWithValue(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
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

  _a37d.RestorableRouteFuture unwrap() => this;
  _a37d.RestorableRouteFuture get vmObject => this;
  @_fac9.override
  void present([_fac9.Object? arguments]) {
    _36c2.Closure closure = table["present"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isPresent {
    _36c2.Closure closure = table["getIsPresent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a37d.Route<_fac9.dynamic>? get route {
    _36c2.Closure closure = table["getRoute"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String? createDefaultValue() {
    _36c2.Closure closure = table["createDefaultValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void initWithValue(value) {
    _36c2.Closure closure = table["initWithValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Object? toPrimitives() {
    _36c2.Closure closure = table["toPrimitives"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String fromPrimitives(data) {
    _36c2.Closure closure = table["fromPrimitives"];
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

void loadRestorableRouteFuture(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['restorableRouteFuture'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackednavigatorFinder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['navigatorFinder']
        : null;
    _36c2.Closure? unpackedonComplete = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onComplete']
        : null;
    _36c2.Closure unpackedonPresent = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onPresent']
        : null;
    return [
      RTManagedRestorableRouteFuture(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          navigatorFinder: (context) => _36c2
              .maybeUnBoxAndBuildArgument<_a37d.NavigatorState, _fac9.dynamic>(
                  unpackednavigatorFinder.dispatch(
                    [luaCallerArguments[0], context],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState),
          onComplete: unpackedonComplete != null
              ? (result) => unpackedonComplete.dispatch(
                    [luaCallerArguments[0], result],
                    parentState: hydroState,
                  )
              : null,
          onPresent: (navigator, arguments) => unpackedonPresent.dispatch(
                [luaCallerArguments[0], navigator, arguments],
                parentState: hydroState,
              )[0])
    ];
  });
  _36c2.registerBoxer<_a37d.RestorableRouteFuture>(boxer: (
      {required _a37d.RestorableRouteFuture vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRestorableRouteFuture(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
