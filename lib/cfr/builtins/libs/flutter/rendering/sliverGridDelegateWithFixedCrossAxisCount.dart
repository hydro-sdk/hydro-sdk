import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/sliver_grid.dart' as _a3c0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverGridDelegateWithFixedCrossAxisCount extends _36c2
    .VMManagedBox<_a3c0.SliverGridDelegateWithFixedCrossAxisCount> {
  VMManagedSliverGridDelegateWithFixedCrossAxisCount(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['crossAxisCount'] = vmObject.crossAxisCount;
    table['mainAxisSpacing'] = vmObject.mainAxisSpacing;
    table['crossAxisSpacing'] = vmObject.crossAxisSpacing;
    table['childAspectRatio'] = vmObject.childAspectRatio;
    table['mainAxisExtent'] = vmObject.mainAxisExtent;
    table['getLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a3c0.SliverGridLayout>(
            object: vmObject.getLayout(_36c2.maybeUnBoxAndBuildArgument<
                _021d.SliverConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['shouldRelayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRelayout(_36c2.maybeUnBoxAndBuildArgument<
            _a3c0.SliverGridDelegateWithFixedCrossAxisCount,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  final _a3c0.SliverGridDelegateWithFixedCrossAxisCount vmObject;
}

class RTManagedSliverGridDelegateWithFixedCrossAxisCount
    extends _a3c0.SliverGridDelegateWithFixedCrossAxisCount
    implements _36c2.Box<_a3c0.SliverGridDelegateWithFixedCrossAxisCount> {
  RTManagedSliverGridDelegateWithFixedCrossAxisCount(
      {required _fac9.double childAspectRatio,
      required _fac9.double crossAxisSpacing,
      _fac9.double? mainAxisExtent,
      required _fac9.double mainAxisSpacing,
      required _fac9.int crossAxisCount,
      required this.table,
      required this.hydroState})
      : super(
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisExtent: mainAxisExtent,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisCount: crossAxisCount) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['crossAxisCount'] = _36c2.maybeBoxObject(
        object: this.crossAxisCount,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mainAxisSpacing'] = _36c2.maybeBoxObject(
        object: this.mainAxisSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['crossAxisSpacing'] = _36c2.maybeBoxObject(
        object: this.crossAxisSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['childAspectRatio'] = _36c2.maybeBoxObject(
        object: this.childAspectRatio,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mainAxisExtent'] = _36c2.maybeBoxObject(
        object: this.mainAxisExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getLayout(_36c2.maybeUnBoxAndBuildArgument<
                _021d.SliverConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_shouldRelayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.shouldRelayout(_36c2.maybeUnBoxAndBuildArgument<
                _a3c0.SliverGridDelegateWithFixedCrossAxisCount,
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _a3c0.SliverGridDelegateWithFixedCrossAxisCount unwrap() => this;
  _a3c0.SliverGridDelegateWithFixedCrossAxisCount get vmObject => this;
  @_fac9.override
  _a3c0.SliverGridLayout getLayout(constraints) {
    _36c2.Closure closure = table["getLayout"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a3c0.SliverGridLayout, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool shouldRelayout(oldDelegate) {
    _36c2.Closure closure = table["shouldRelayout"];
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

void loadSliverGridDelegateWithFixedCrossAxisCount(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliverGridDelegateWithFixedCrossAxisCount'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSliverGridDelegateWithFixedCrossAxisCount(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          childAspectRatio: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['childAspectRatio']
              : null?.toDouble(),
          crossAxisSpacing: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisSpacing']
              : null?.toDouble(),
          mainAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['mainAxisExtent']
              : null?.toDouble(),
          mainAxisSpacing: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['mainAxisSpacing']
              : null?.toDouble(),
          crossAxisCount: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisCount']
              : null)
    ];
  });
  _36c2.registerBoxer<_a3c0.SliverGridDelegateWithFixedCrossAxisCount>(boxer: (
      {required _a3c0.SliverGridDelegateWithFixedCrossAxisCount vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverGridDelegateWithFixedCrossAxisCount(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
