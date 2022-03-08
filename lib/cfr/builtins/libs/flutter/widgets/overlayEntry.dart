import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/overlay.dart' as _0049;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedOverlayEntry extends _36c2.VMManagedBox<_0049.OverlayEntry> {
  VMManagedOverlayEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getOpaque'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.opaque,
      ];
    });
    table['setOpaque'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.opaque = (luaCallerArguments[1]);
      return [];
    });
    table['getMaintainState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maintainState,
      ];
    });
    table['setMaintainState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.maintainState = (luaCallerArguments[1]);
      return [];
    });
    table['getMounted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.mounted,
      ];
    });
    table['remove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.remove();
      return [];
    });
    table['markNeedsBuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsBuild();
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
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
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
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

  final _0049.OverlayEntry vmObject;
}

class RTManagedOverlayEntry extends _0049.OverlayEntry
    implements _36c2.Box<_0049.OverlayEntry> {
  RTManagedOverlayEntry(
      {required _fac9.bool maintainState,
      required _fac9.bool opaque,
      required _e2dc.Widget Function(_e2dc.BuildContext context) builder,
      required this.table,
      required this.hydroState})
      : super(maintainState: maintainState, opaque: opaque, builder: builder) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getOpaque'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.opaque];
    });
    table['_dart_setOpaque'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.opaque =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getMaintainState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.maintainState];
    });
    table['_dart_setMaintainState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.maintainState =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getMounted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.mounted];
    });
    table['_dart_remove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.remove();
      return [];
    });
    table['_dart_markNeedsBuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.markNeedsBuild();
      return [];
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
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0049.OverlayEntry unwrap() => this;
  _0049.OverlayEntry get vmObject => this;
  @_fac9.override
  _fac9.bool get opaque {
    _36c2.Closure closure = table["getOpaque"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set opaque(value) {
    _36c2.Closure closure = table["setOpaque"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get maintainState {
    _36c2.Closure closure = table["getMaintainState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set maintainState(value) {
    _36c2.Closure closure = table["setMaintainState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get mounted {
    _36c2.Closure closure = table["getMounted"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void remove() {
    _36c2.Closure closure = table["remove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void markNeedsBuild() {
    _36c2.Closure closure = table["markNeedsBuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
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
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
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
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadOverlayEntry(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['overlayEntry'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedbuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['builder']
        : null;
    return [
      RTManagedOverlayEntry(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          maintainState: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maintainState']
              : null,
          opaque: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['opaque']
              : null,
          builder: (context) =>
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  unpackedbuilder.dispatch(
                    [luaCallerArguments[0], context],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_0049.OverlayEntry>(boxer: (
      {required _0049.OverlayEntry vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedOverlayEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
