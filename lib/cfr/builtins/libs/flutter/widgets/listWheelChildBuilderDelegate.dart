import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/list_wheel_scroll_view.dart' as _7b25;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedListWheelChildBuilderDelegate
    extends _36c2.VMManagedBox<_7b25.ListWheelChildBuilderDelegate> {
  VMManagedListWheelChildBuilderDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['childCount'] = vmObject.childCount;
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
    table['shouldRebuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRebuild(_36c2.maybeUnBoxAndBuildArgument<
            _7b25.ListWheelChildBuilderDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['trueIndexOf'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.trueIndexOf(luaCallerArguments[1]),
      ];
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

  final _7b25.ListWheelChildBuilderDelegate vmObject;
}

class RTManagedListWheelChildBuilderDelegate
    extends _7b25.ListWheelChildBuilderDelegate
    implements _36c2.Box<_7b25.ListWheelChildBuilderDelegate> {
  RTManagedListWheelChildBuilderDelegate(
      {_fac9.int? childCount,
      required _e2dc.Widget? Function(
              _e2dc.BuildContext context, _fac9.int index)
          builder,
      required this.table,
      required this.hydroState})
      : super(childCount: childCount, builder: builder) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['childCount'] = _36c2.maybeBoxObject(
        object: this.childCount,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getEstimatedChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.estimatedChildCount];
    });
    table['_dart_build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.build(
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
    table['_dart_shouldRebuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.shouldRebuild(_36c2.maybeUnBoxAndBuildArgument<
                _7b25.ListWheelChildBuilderDelegate,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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

  _7b25.ListWheelChildBuilderDelegate unwrap() => this;
  _7b25.ListWheelChildBuilderDelegate get vmObject => this;
  @_fac9.override
  _fac9.int? get estimatedChildCount {
    _36c2.Closure closure = table["getEstimatedChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Widget? build(context, index) {
    _36c2.Closure closure = table["build"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool shouldRebuild(oldDelegate) {
    _36c2.Closure closure = table["shouldRebuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int trueIndexOf(index) {
    _36c2.Closure closure = table["trueIndexOf"];
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

void loadListWheelChildBuilderDelegate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['listWheelChildBuilderDelegate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedbuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['builder']
        : null;
    return [
      RTManagedListWheelChildBuilderDelegate(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          childCount: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['childCount']
              : null,
          builder: (context, index) =>
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
                  ((
                    final _fac9.List<_fac9.dynamic>? val,
                  ) =>
                      val != null && val.length >= 1 ? val[0] : null)(
                    unpackedbuilder.dispatch(
                      [luaCallerArguments[0], context, index],
                      parentState: hydroState,
                    ),
                  ),
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_7b25.ListWheelChildBuilderDelegate>(boxer: (
      {required _7b25.ListWheelChildBuilderDelegate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedListWheelChildBuilderDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
