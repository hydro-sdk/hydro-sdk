import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/shifted_box.dart' as _a9e4;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSingleChildLayoutDelegate
    extends _36c2.VMManagedBox<_a9e4.SingleChildLayoutDelegate> {
  VMManagedSingleChildLayoutDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.getSize(_36c2.maybeUnBoxAndBuildArgument<
                _be2e.BoxConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getConstraintsForChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_be2e.BoxConstraints>(
            object: vmObject.getConstraintsForChild(
                _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPositionForChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.getPositionForChild(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['shouldRelayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRelayout(_36c2.maybeUnBoxAndBuildArgument<
            _a9e4.SingleChildLayoutDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _a9e4.SingleChildLayoutDelegate vmObject;
}

class RTManagedSingleChildLayoutDelegate extends _a9e4.SingleChildLayoutDelegate
    implements _36c2.Box<_a9e4.SingleChildLayoutDelegate> {
  RTManagedSingleChildLayoutDelegate(
      {_e644.Listenable? relayout,
      required this.table,
      required this.hydroState})
      : super(relayout: relayout) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getSize(_36c2.maybeUnBoxAndBuildArgument<
                _be2e.BoxConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getConstraintsForChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getConstraintsForChild(
                _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getPositionForChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getPositionForChild(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_shouldRelayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: shouldRelayout(_36c2.maybeUnBoxAndBuildArgument<
                _a9e4.SingleChildLayoutDelegate,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _a9e4.SingleChildLayoutDelegate unwrap() => this;
  _a9e4.SingleChildLayoutDelegate get vmObject => this;
  @_fac9.override
  _a643.Size getSize(constraints) {
    _36c2.Closure closure = table["getSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _be2e.BoxConstraints getConstraintsForChild(constraints) {
    _36c2.Closure closure = table["getConstraintsForChild"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _a643.Offset getPositionForChild(size, childSize) {
    _36c2.Closure closure = table["getPositionForChild"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool shouldRelayout(oldDelegate) {
    _36c2.Closure closure = table["shouldRelayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSingleChildLayoutDelegate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['singleChildLayoutDelegate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSingleChildLayoutDelegate(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          relayout: _36c2
              .maybeUnBoxAndBuildArgument<_e644.Listenable?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['relayout']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_a9e4.SingleChildLayoutDelegate>(boxer: (
      {required _a9e4.SingleChildLayoutDelegate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSingleChildLayoutDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
