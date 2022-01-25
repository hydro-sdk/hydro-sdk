import 'dart:core';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverGridGeometry extends VMManagedBox<SliverGridGeometry> {
  VMManagedSliverGridGeometry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['scrollOffset'] = vmObject.scrollOffset;
    table['crossAxisOffset'] = vmObject.crossAxisOffset;
    table['mainAxisExtent'] = vmObject.mainAxisExtent;
    table['crossAxisExtent'] = vmObject.crossAxisExtent;
    table['getTrailingScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.trailingScrollOffset,
      ];
    });
    table['getBoxConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.getBoxConstraints(
                maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SliverGridGeometry vmObject;
}

class RTManagedSliverGridGeometry extends SliverGridGeometry
    implements Box<SliverGridGeometry> {
  RTManagedSliverGridGeometry(
      {required double crossAxisExtent,
      required double crossAxisOffset,
      required double mainAxisExtent,
      required double scrollOffset,
      required this.table,
      required this.hydroState})
      : super(
            crossAxisExtent: crossAxisExtent,
            crossAxisOffset: crossAxisOffset,
            mainAxisExtent: mainAxisExtent,
            scrollOffset: scrollOffset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['scrollOffset'] = this.scrollOffset;
    table['crossAxisOffset'] = this.crossAxisOffset;
    table['mainAxisExtent'] = this.mainAxisExtent;
    table['crossAxisExtent'] = this.crossAxisExtent;
    table['_dart_getTrailingScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.trailingScrollOffset];
    });
    table['_dart_getBoxConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.getBoxConstraints(
                maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SliverGridGeometry unwrap() => this;
  SliverGridGeometry get vmObject => this;
  @override
  double get trailingScrollOffset {
    Closure closure = table["getTrailingScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  BoxConstraints getBoxConstraints(constraints) {
    Closure closure = table["getBoxConstraints"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSliverGridGeometry(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverGridGeometry'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverGridGeometry(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          crossAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisExtent']
              : null?.toDouble(),
          crossAxisOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisOffset']
              : null?.toDouble(),
          mainAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['mainAxisExtent']
              : null?.toDouble(),
          scrollOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollOffset']
              : null?.toDouble())
    ];
  });
  registerBoxer<SliverGridGeometry>(boxer: (
      {required SliverGridGeometry vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverGridGeometry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
