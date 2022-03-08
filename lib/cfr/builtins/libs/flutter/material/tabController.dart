import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/material/tab_controller.dart' as _f3b5;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTabController extends _36c2.VMManagedBox<_f3b5.TabController> {
  VMManagedTabController(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['length'] = vmObject.length;
    table['getAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.animation;
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
    table['getIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.index,
      ];
    });
    table['setIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.index = (luaCallerArguments[1]);
      return [];
    });
    table['getPreviousIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.previousIndex,
      ];
    });
    table['getIndexIsChanging'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.indexIsChanging,
      ];
    });
    table['animateTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.animateTo(luaCallerArguments[1],
          curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['curve']
                  : null,
              parentState: hydroState),
          duration:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['duration']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['getOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.offset,
      ];
    });
    table['setOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.offset = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
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

  final _f3b5.TabController vmObject;
}

class RTManagedTabController extends _f3b5.TabController
    implements _36c2.Box<_f3b5.TabController> {
  RTManagedTabController(
      {required _fac9.int initialIndex,
      required _fac9.int length,
      required _e067.TickerProvider vsync,
      required this.table,
      required this.hydroState})
      : super(initialIndex: initialIndex, length: length, vsync: vsync) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['length'] = _36c2.maybeBoxObject(
        object: this.length, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.animation];
    });
    table['_dart_getIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.index];
    });
    table['_dart_setIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.index = (_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getPreviousIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.previousIndex];
    });
    table['_dart_getIndexIsChanging'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.indexIsChanging];
    });
    table['_dart_animateTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.animateTo(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['curve']
                  : null,
              parentState: hydroState),
          duration:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['duration']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_getOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.offset];
    });
    table['_dart_setOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.offset =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
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

  _f3b5.TabController unwrap() => this;
  _f3b5.TabController get vmObject => this;
  @_fac9.override
  _86ca.Animation<_fac9.double>? get animation {
    _36c2.Closure closure = table["getAnimation"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>?,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get index {
    _36c2.Closure closure = table["getIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set index(value) {
    _36c2.Closure closure = table["setIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get previousIndex {
    _36c2.Closure closure = table["getPreviousIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get indexIsChanging {
    _36c2.Closure closure = table["getIndexIsChanging"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void animateTo(value,
      {_8c47.Curve curve = _8c47.Curves.ease,
      _fac9.Duration duration = const _fac9.Duration(milliseconds: 300)}) {
    _36c2.Closure closure = table["animateTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get offset {
    _36c2.Closure closure = table["getOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set offset(value) {
    _36c2.Closure closure = table["setOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
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

void loadTabController(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['tabController'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTabController(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          initialIndex: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['initialIndex']
              : null,
          length: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['length']
              : null,
          vsync: _36c2
              .maybeUnBoxAndBuildArgument<_e067.TickerProvider, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['vsync']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_f3b5.TabController>(boxer: (
      {required _f3b5.TabController vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTabController(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
