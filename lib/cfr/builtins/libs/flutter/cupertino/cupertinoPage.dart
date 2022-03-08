import 'dart:core' as _fac9;

import 'package:flutter/src/cupertino/route.dart' as _76db;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoPage
    extends _36c2.VMManagedBox<_76db.CupertinoPage<_fac9.dynamic>> {
  VMManagedCupertinoPage(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['title'] = vmObject.title;
    table['maintainState'] = vmObject.maintainState;
    table['fullscreenDialog'] = vmObject.fullscreenDialog;
    table['key'] = _36c2.maybeBoxObject<_ab4a.LocalKey?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['restorationId'] = vmObject.restorationId;
    table['name'] = vmObject.name;
    table['arguments'] = _36c2.maybeBoxObject<_fac9.Object?>(
        object: vmObject.arguments,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a37d.Route>(
            object: vmObject.createRoute(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['canUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.canUpdate(_36c2.maybeUnBoxAndBuildArgument<
            _a37d.Page<_fac9.dynamic>,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a37d.RouteSettings>(
            object: vmObject.copyWith(
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['arguments']
                            : null,
                        parentState: hydroState),
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
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

  final _76db.CupertinoPage<_fac9.dynamic> vmObject;
}

class RTManagedCupertinoPage extends _76db.CupertinoPage
    implements _36c2.Box<_76db.CupertinoPage> {
  RTManagedCupertinoPage(
      {_fac9.Object? arguments,
      required _fac9.bool fullscreenDialog,
      _ab4a.LocalKey? key,
      required _fac9.bool maintainState,
      _fac9.String? name,
      _fac9.String? restorationId,
      _fac9.String? title,
      required _e2dc.Widget child,
      required this.table,
      required this.hydroState})
      : super(
            arguments: arguments,
            fullscreenDialog: fullscreenDialog,
            key: key,
            maintainState: maintainState,
            name: name,
            restorationId: restorationId,
            title: title,
            child: child) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['title'] = _36c2.maybeBoxObject(
        object: this.title, hydroState: hydroState, table: _36c2.HydroTable());
    table['maintainState'] = _36c2.maybeBoxObject(
        object: this.maintainState,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fullscreenDialog'] = _36c2.maybeBoxObject(
        object: this.fullscreenDialog,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['restorationId'] = _36c2.maybeBoxObject(
        object: this.restorationId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['name'] = _36c2.maybeBoxObject(
        object: this.name, hydroState: hydroState, table: _36c2.HydroTable());
    table['arguments'] = _36c2.maybeBoxObject(
        object: this.arguments,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_createRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createRoute(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_canUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.canUpdate(_36c2.maybeUnBoxAndBuildArgument<
                _a37d.Page<_fac9.dynamic>,
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
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['arguments']
                            : null,
                        parentState: hydroState),
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState)),
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

  _76db.CupertinoPage unwrap() => this;
  _76db.CupertinoPage get vmObject => this;
  @_fac9.override
  _a37d.Route<_fac9.dynamic> createRoute(context) {
    _36c2.Closure closure = table["createRoute"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool canUpdate(other) {
    _36c2.Closure closure = table["canUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a37d.RouteSettings copyWith({_fac9.Object? arguments, _fac9.String? name}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_a37d.RouteSettings, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCupertinoPage(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoPage'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCupertinoPage(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          arguments:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['arguments']
                      : null,
                  parentState: hydroState),
          fullscreenDialog: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['fullscreenDialog']
              : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.LocalKey?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState),
          maintainState: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maintainState']
              : null,
          name: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['name']
              : null,
          restorationId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['restorationId'] : null,
          title: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['title'] : null,
          child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_76db.CupertinoPage>(boxer: (
      {required _76db.CupertinoPage vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoPage(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
