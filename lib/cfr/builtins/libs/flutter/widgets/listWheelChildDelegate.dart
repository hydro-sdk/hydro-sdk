import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/list_wheel_scroll_view.dart' as _7b25;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedListWheelChildDelegate
    extends _36c2.VMManagedBox<_7b25.ListWheelChildDelegate> {
  VMManagedListWheelChildDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.build(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.Widget?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getEstimatedChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.estimatedChildCount;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['trueIndexOf'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.trueIndexOf(luaCallerArguments[1]),
      ];
    });
    table['shouldRebuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRebuild(_36c2.maybeUnBoxAndBuildArgument<
            _7b25.ListWheelChildDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7b25.ListWheelChildDelegate vmObject;
}

class RTManagedListWheelChildDelegate extends _7b25.ListWheelChildDelegate
    implements _36c2.Box<_7b25.ListWheelChildDelegate> {
  RTManagedListWheelChildDelegate(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: build(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getEstimatedChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [estimatedChildCount];
    });
    table['_dart_trueIndexOf'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.trueIndexOf(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_shouldRebuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: shouldRebuild(_36c2.maybeUnBoxAndBuildArgument<
                _7b25.ListWheelChildDelegate,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _7b25.ListWheelChildDelegate unwrap() => this;
  _7b25.ListWheelChildDelegate get vmObject => this;
  @_fac9.override
  _e2dc.Widget? build(context, index) {
    _36c2.Closure closure = table["build"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int? get estimatedChildCount {
    _36c2.Closure closure = table["getEstimatedChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int trueIndexOf(index) {
    _36c2.Closure closure = table["trueIndexOf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool shouldRebuild(oldDelegate) {
    _36c2.Closure closure = table["shouldRebuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadListWheelChildDelegate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['listWheelChildDelegate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedListWheelChildDelegate(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_7b25.ListWheelChildDelegate>(boxer: (
      {required _7b25.ListWheelChildDelegate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedListWheelChildDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
