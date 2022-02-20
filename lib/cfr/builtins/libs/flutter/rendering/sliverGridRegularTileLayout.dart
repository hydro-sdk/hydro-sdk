import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/sliver_grid.dart' as _a3c0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverGridRegularTileLayout
    extends _36c2.VMManagedBox<_a3c0.SliverGridRegularTileLayout> {
  VMManagedSliverGridRegularTileLayout(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['crossAxisCount'] = vmObject.crossAxisCount;
    table['mainAxisStride'] = vmObject.mainAxisStride;
    table['crossAxisStride'] = vmObject.crossAxisStride;
    table['childMainAxisExtent'] = vmObject.childMainAxisExtent;
    table['childCrossAxisExtent'] = vmObject.childCrossAxisExtent;
    table['reverseCrossAxis'] = vmObject.reverseCrossAxis;
    table['getMinChildIndexForScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject
            .getMinChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMaxChildIndexForScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject
            .getMaxChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getGeometryForChildIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a3c0.SliverGridGeometry>(
            object: vmObject.getGeometryForChildIndex(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['computeMaxScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxScrollOffset(luaCallerArguments[1]),
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

  final _a3c0.SliverGridRegularTileLayout vmObject;
}

class RTManagedSliverGridRegularTileLayout
    extends _a3c0.SliverGridRegularTileLayout
    implements _36c2.Box<_a3c0.SliverGridRegularTileLayout> {
  RTManagedSliverGridRegularTileLayout(
      {required _fac9.double childCrossAxisExtent,
      required _fac9.double childMainAxisExtent,
      required _fac9.int crossAxisCount,
      required _fac9.double crossAxisStride,
      required _fac9.double mainAxisStride,
      required _fac9.bool reverseCrossAxis,
      required this.table,
      required this.hydroState})
      : super(
            childCrossAxisExtent: childCrossAxisExtent,
            childMainAxisExtent: childMainAxisExtent,
            crossAxisCount: crossAxisCount,
            crossAxisStride: crossAxisStride,
            mainAxisStride: mainAxisStride,
            reverseCrossAxis: reverseCrossAxis) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['crossAxisCount'] = _36c2.maybeBoxObject(
        object: this.crossAxisCount,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mainAxisStride'] = _36c2.maybeBoxObject(
        object: this.mainAxisStride,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['crossAxisStride'] = _36c2.maybeBoxObject(
        object: this.crossAxisStride,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['childMainAxisExtent'] = _36c2.maybeBoxObject(
        object: this.childMainAxisExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['childCrossAxisExtent'] = _36c2.maybeBoxObject(
        object: this.childCrossAxisExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['reverseCrossAxis'] = _36c2.maybeBoxObject(
        object: this.reverseCrossAxis,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getMinChildIndexForScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getMinChildIndexForScrollOffset(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getMaxChildIndexForScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getMaxChildIndexForScrollOffset(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getGeometryForChildIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getGeometryForChildIndex(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_computeMaxScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.computeMaxScrollOffset(
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

  _a3c0.SliverGridRegularTileLayout unwrap() => this;
  _a3c0.SliverGridRegularTileLayout get vmObject => this;
  @_fac9.override
  _fac9.int getMinChildIndexForScrollOffset(scrollOffset) {
    _36c2.Closure closure = table["getMinChildIndexForScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int getMaxChildIndexForScrollOffset(scrollOffset) {
    _36c2.Closure closure = table["getMaxChildIndexForScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a3c0.SliverGridGeometry getGeometryForChildIndex(index) {
    _36c2.Closure closure = table["getGeometryForChildIndex"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a3c0.SliverGridGeometry, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.double computeMaxScrollOffset(childCount) {
    _36c2.Closure closure = table["computeMaxScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
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

void loadSliverGridRegularTileLayout(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliverGridRegularTileLayout'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSliverGridRegularTileLayout(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          childCrossAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['childCrossAxisExtent']
              : null?.toDouble(),
          childMainAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['childMainAxisExtent']
              : null?.toDouble(),
          crossAxisCount: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisCount']
              : null,
          crossAxisStride: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisStride']
              : null?.toDouble(),
          mainAxisStride: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['mainAxisStride']
              : null?.toDouble(),
          reverseCrossAxis: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['reverseCrossAxis']
              : null)
    ];
  });
  _36c2.registerBoxer<_a3c0.SliverGridRegularTileLayout>(boxer: (
      {required _a3c0.SliverGridRegularTileLayout vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverGridRegularTileLayout(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
