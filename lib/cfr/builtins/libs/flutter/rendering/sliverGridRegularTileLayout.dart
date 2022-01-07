import 'dart:core';

import 'package:flutter/src/rendering/sliver_grid.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverGridRegularTileLayout
    extends VMManagedBox<SliverGridRegularTileLayout> {
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
    table['getMinChildIndexForScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject
            .getMinChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMaxChildIndexForScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject
            .getMaxChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getGeometryForChildIndex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SliverGridGeometry>(
            object: vmObject.getGeometryForChildIndex(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['computeMaxScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxScrollOffset(luaCallerArguments[1]),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SliverGridRegularTileLayout vmObject;
}

class RTManagedSliverGridRegularTileLayout extends SliverGridRegularTileLayout
    implements Box<SliverGridRegularTileLayout> {
  RTManagedSliverGridRegularTileLayout(
      {required double childCrossAxisExtent,
      required double childMainAxisExtent,
      required int crossAxisCount,
      required double crossAxisStride,
      required double mainAxisStride,
      required bool reverseCrossAxis,
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['crossAxisCount'] = this.crossAxisCount;
    table['mainAxisStride'] = this.mainAxisStride;
    table['crossAxisStride'] = this.crossAxisStride;
    table['childMainAxisExtent'] = this.childMainAxisExtent;
    table['childCrossAxisExtent'] = this.childCrossAxisExtent;
    table['reverseCrossAxis'] = this.reverseCrossAxis;
    table['_dart_getMinChildIndexForScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.getMinChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_getMaxChildIndexForScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.getMaxChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_getGeometryForChildIndex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SliverGridGeometry>(
            object: super.getGeometryForChildIndex(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_computeMaxScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.computeMaxScrollOffset(luaCallerArguments[1])];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SliverGridRegularTileLayout unwrap() => this;
  SliverGridRegularTileLayout get vmObject => this;
  @override
  int getMinChildIndexForScrollOffset(double scrollOffset) {
    Closure closure = table["getMinChildIndexForScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int getMaxChildIndexForScrollOffset(double scrollOffset) {
    Closure closure = table["getMaxChildIndexForScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SliverGridGeometry getGeometryForChildIndex(int index) {
    Closure closure = table["getGeometryForChildIndex"];
    return maybeUnBoxAndBuildArgument<SliverGridGeometry, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  double computeMaxScrollOffset(int childCount) {
    Closure closure = table["computeMaxScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSliverGridRegularTileLayout(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverGridRegularTileLayout'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
  registerBoxer<SliverGridRegularTileLayout>(boxer: (
      {required SliverGridRegularTileLayout vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverGridRegularTileLayout(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
