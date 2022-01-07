import 'dart:core';

import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverGridDelegateWithMaxCrossAxisExtent
    extends VMManagedBox<SliverGridDelegateWithMaxCrossAxisExtent> {
  VMManagedSliverGridDelegateWithMaxCrossAxisExtent(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['maxCrossAxisExtent'] = vmObject.maxCrossAxisExtent;
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
            SliverGridDelegateWithMaxCrossAxisExtent,
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

  final SliverGridDelegateWithMaxCrossAxisExtent vmObject;
}

class RTManagedSliverGridDelegateWithMaxCrossAxisExtent
    extends SliverGridDelegateWithMaxCrossAxisExtent
    implements Box<SliverGridDelegateWithMaxCrossAxisExtent> {
  RTManagedSliverGridDelegateWithMaxCrossAxisExtent(
      {required double childAspectRatio,
      required double crossAxisSpacing,
      double? mainAxisExtent,
      required double mainAxisSpacing,
      required double maxCrossAxisExtent,
      required this.table,
      required this.hydroState})
      : super(
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisExtent: mainAxisExtent,
            mainAxisSpacing: mainAxisSpacing,
            maxCrossAxisExtent: maxCrossAxisExtent) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['maxCrossAxisExtent'] = this.maxCrossAxisExtent;
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
            SliverGridDelegateWithMaxCrossAxisExtent,
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

  SliverGridDelegateWithMaxCrossAxisExtent unwrap() => this;
  SliverGridDelegateWithMaxCrossAxisExtent get vmObject => this;
  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    Closure closure = table["getLayout"];
    return maybeUnBoxAndBuildArgument<SliverGridLayout, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool shouldRelayout(SliverGridDelegateWithMaxCrossAxisExtent oldDelegate) {
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

void loadSliverGridDelegateWithMaxCrossAxisExtent(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverGridDelegateWithMaxCrossAxisExtent'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverGridDelegateWithMaxCrossAxisExtent(
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
          maxCrossAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxCrossAxisExtent']
              : null?.toDouble())
    ];
  });
  registerBoxer<SliverGridDelegateWithMaxCrossAxisExtent>(boxer: (
      {required SliverGridDelegateWithMaxCrossAxisExtent vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverGridDelegateWithMaxCrossAxisExtent(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
