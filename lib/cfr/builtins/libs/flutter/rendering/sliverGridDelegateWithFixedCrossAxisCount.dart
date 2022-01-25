import 'dart:core';

import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverGridDelegateWithFixedCrossAxisCount
    extends VMManagedBox<SliverGridDelegateWithFixedCrossAxisCount> {
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
    table['getLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SliverGridLayout>(
            object: vmObject.getLayout(
                maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['shouldRelayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRelayout(maybeUnBoxAndBuildArgument<
            SliverGridDelegateWithFixedCrossAxisCount,
            dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  final SliverGridDelegateWithFixedCrossAxisCount vmObject;
}

class RTManagedSliverGridDelegateWithFixedCrossAxisCount
    extends SliverGridDelegateWithFixedCrossAxisCount
    implements Box<SliverGridDelegateWithFixedCrossAxisCount> {
  RTManagedSliverGridDelegateWithFixedCrossAxisCount(
      {required double childAspectRatio,
      required double crossAxisSpacing,
      double? mainAxisExtent,
      required double mainAxisSpacing,
      required int crossAxisCount,
      required this.table,
      required this.hydroState})
      : super(
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisExtent: mainAxisExtent,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisCount: crossAxisCount) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['crossAxisCount'] = this.crossAxisCount;
    table['mainAxisSpacing'] = this.mainAxisSpacing;
    table['crossAxisSpacing'] = this.crossAxisSpacing;
    table['childAspectRatio'] = this.childAspectRatio;
    table['mainAxisExtent'] = this.mainAxisExtent;
    table['_dart_getLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SliverGridLayout>(
            object: super.getLayout(
                maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_shouldRelayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.shouldRelayout(maybeUnBoxAndBuildArgument<
            SliverGridDelegateWithFixedCrossAxisCount,
            dynamic>(luaCallerArguments[1], parentState: hydroState))
      ];
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

  SliverGridDelegateWithFixedCrossAxisCount unwrap() => this;
  SliverGridDelegateWithFixedCrossAxisCount get vmObject => this;
  @override
  SliverGridLayout getLayout(constraints) {
    Closure closure = table["getLayout"];
    return maybeUnBoxAndBuildArgument<SliverGridLayout, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool shouldRelayout(oldDelegate) {
    Closure closure = table["shouldRelayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadSliverGridDelegateWithFixedCrossAxisCount(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverGridDelegateWithFixedCrossAxisCount'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
  registerBoxer<SliverGridDelegateWithFixedCrossAxisCount>(boxer: (
      {required SliverGridDelegateWithFixedCrossAxisCount vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverGridDelegateWithFixedCrossAxisCount(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
