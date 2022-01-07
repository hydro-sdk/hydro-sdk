import 'dart:core';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverConstraints extends VMManagedBox<SliverConstraints> {
  VMManagedSliverConstraints(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['axisDirection'] = AxisDirection.values.indexWhere((x) {
      return x == vmObject.axisDirection;
    });
    table['growthDirection'] = GrowthDirection.values.indexWhere((x) {
      return x == vmObject.growthDirection;
    });
    table['userScrollDirection'] = ScrollDirection.values.indexWhere((x) {
      return x == vmObject.userScrollDirection;
    });
    table['scrollOffset'] = vmObject.scrollOffset;
    table['precedingScrollExtent'] = vmObject.precedingScrollExtent;
    table['overlap'] = vmObject.overlap;
    table['remainingPaintExtent'] = vmObject.remainingPaintExtent;
    table['crossAxisExtent'] = vmObject.crossAxisExtent;
    table['crossAxisDirection'] = AxisDirection.values.indexWhere((x) {
      return x == vmObject.crossAxisDirection;
    });
    table['viewportMainAxisExtent'] = vmObject.viewportMainAxisExtent;
    table['cacheOrigin'] = vmObject.cacheOrigin;
    table['remainingCacheExtent'] = vmObject.remainingCacheExtent;
    table['copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SliverConstraints>(
            object: vmObject.copyWith(
                axisDirection: maybeUnBoxEnum(
                    values: AxisDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['axisDirection']
                        : null),
                cacheOrigin: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['cacheOrigin']
                    : null?.toDouble(),
                crossAxisDirection: maybeUnBoxEnum(
                    values: AxisDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['crossAxisDirection']
                        : null),
                crossAxisExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['crossAxisExtent']
                    : null?.toDouble(),
                growthDirection: maybeUnBoxEnum(
                    values: GrowthDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['growthDirection']
                        : null),
                overlap: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['overlap']
                    : null?.toDouble(),
                precedingScrollExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['precedingScrollExtent']
                    : null?.toDouble(),
                remainingCacheExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['remainingCacheExtent']
                    : null?.toDouble(),
                remainingPaintExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['remainingPaintExtent']
                    : null?.toDouble(),
                scrollOffset: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['scrollOffset']
                    : null?.toDouble(),
                userScrollDirection: maybeUnBoxEnum(
                    values: ScrollDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['userScrollDirection']
                        : null),
                viewportMainAxisExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['viewportMainAxisExtent']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getAxis'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        Axis.values.indexWhere((x) {
          return x == vmObject.axis;
        }),
      ];
    });
    table['getNormalizedGrowthDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        GrowthDirection.values.indexWhere((x) {
          return x == vmObject.normalizedGrowthDirection;
        }),
      ];
    });
    table['getIsTight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isTight,
      ];
    });
    table['getIsNormalized'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isNormalized,
      ];
    });
    table['asBoxConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.asBoxConstraints(
                crossAxisExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['crossAxisExtent']
                    : null?.toDouble(),
                maxExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['maxExtent']
                    : null?.toDouble(),
                minExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minExtent']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['debugAssertIsValid'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['informationCollector']
          : null;
      return [
        vmObject.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => maybeUnBoxAndBuildArgument<Iterable<DiagnosticsNode>,
                        DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null,
            isAppliedConstraint: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['isAppliedConstraint']
                : null),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
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

  final SliverConstraints vmObject;
}

class RTManagedSliverConstraints extends SliverConstraints
    implements Box<SliverConstraints> {
  RTManagedSliverConstraints(
      {required AxisDirection axisDirection,
      required double cacheOrigin,
      required AxisDirection crossAxisDirection,
      required double crossAxisExtent,
      required GrowthDirection growthDirection,
      required double overlap,
      required double precedingScrollExtent,
      required double remainingCacheExtent,
      required double remainingPaintExtent,
      required double scrollOffset,
      required ScrollDirection userScrollDirection,
      required double viewportMainAxisExtent,
      required this.table,
      required this.hydroState})
      : super(
            axisDirection: axisDirection,
            cacheOrigin: cacheOrigin,
            crossAxisDirection: crossAxisDirection,
            crossAxisExtent: crossAxisExtent,
            growthDirection: growthDirection,
            overlap: overlap,
            precedingScrollExtent: precedingScrollExtent,
            remainingCacheExtent: remainingCacheExtent,
            remainingPaintExtent: remainingPaintExtent,
            scrollOffset: scrollOffset,
            userScrollDirection: userScrollDirection,
            viewportMainAxisExtent: viewportMainAxisExtent) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['axisDirection'] = AxisDirection.values.indexWhere((x) {
      return x == this.axisDirection;
    });
    table['growthDirection'] = GrowthDirection.values.indexWhere((x) {
      return x == this.growthDirection;
    });
    table['userScrollDirection'] = ScrollDirection.values.indexWhere((x) {
      return x == this.userScrollDirection;
    });
    table['scrollOffset'] = this.scrollOffset;
    table['precedingScrollExtent'] = this.precedingScrollExtent;
    table['overlap'] = this.overlap;
    table['remainingPaintExtent'] = this.remainingPaintExtent;
    table['crossAxisExtent'] = this.crossAxisExtent;
    table['crossAxisDirection'] = AxisDirection.values.indexWhere((x) {
      return x == this.crossAxisDirection;
    });
    table['viewportMainAxisExtent'] = this.viewportMainAxisExtent;
    table['cacheOrigin'] = this.cacheOrigin;
    table['remainingCacheExtent'] = this.remainingCacheExtent;
    table['_dart_copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SliverConstraints>(
            object: super.copyWith(
                axisDirection: maybeUnBoxEnum(
                    values: AxisDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['axisDirection']
                        : null),
                cacheOrigin: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['cacheOrigin']
                    : null?.toDouble(),
                crossAxisDirection: maybeUnBoxEnum(
                    values: AxisDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['crossAxisDirection']
                        : null),
                crossAxisExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['crossAxisExtent']
                    : null?.toDouble(),
                growthDirection: maybeUnBoxEnum(
                    values: GrowthDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['growthDirection']
                        : null),
                overlap: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['overlap']
                    : null?.toDouble(),
                precedingScrollExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['precedingScrollExtent']
                    : null?.toDouble(),
                remainingCacheExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['remainingCacheExtent']
                    : null?.toDouble(),
                remainingPaintExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['remainingPaintExtent']
                    : null?.toDouble(),
                scrollOffset: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['scrollOffset']
                    : null?.toDouble(),
                userScrollDirection: maybeUnBoxEnum(
                    values: ScrollDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['userScrollDirection']
                        : null),
                viewportMainAxisExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['viewportMainAxisExtent']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getAxis'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.axis];
    });
    table['_dart_getNormalizedGrowthDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.normalizedGrowthDirection];
    });
    table['_dart_getIsTight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isTight];
    });
    table['_dart_getIsNormalized'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isNormalized];
    });
    table['_dart_asBoxConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.asBoxConstraints(
                crossAxisExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['crossAxisExtent']
                    : null?.toDouble(),
                maxExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['maxExtent']
                    : null?.toDouble(),
                minExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minExtent']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugAssertIsValid'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['informationCollector']
          : null;
      return [
        super.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => maybeUnBoxAndBuildArgument<Iterable<DiagnosticsNode>,
                        DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null,
            isAppliedConstraint: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['isAppliedConstraint']
                : null)
      ];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SliverConstraints unwrap() => this;
  SliverConstraints get vmObject => this;
  @override
  SliverConstraints copyWith(
      {AxisDirection? axisDirection,
      double? cacheOrigin,
      AxisDirection? crossAxisDirection,
      double? crossAxisExtent,
      GrowthDirection? growthDirection,
      double? overlap,
      double? precedingScrollExtent,
      double? remainingCacheExtent,
      double? remainingPaintExtent,
      double? scrollOffset,
      ScrollDirection? userScrollDirection,
      double? viewportMainAxisExtent}) {
    Closure closure = table["copyWith"];
    return maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Axis get axis {
    Closure closure = table["getAxis"];
    return maybeUnBoxEnum(
        values: Axis.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  GrowthDirection get normalizedGrowthDirection {
    Closure closure = table["getNormalizedGrowthDirection"];
    return maybeUnBoxEnum(
        values: GrowthDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  bool get isTight {
    Closure closure = table["getIsTight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isNormalized {
    Closure closure = table["getIsNormalized"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  BoxConstraints asBoxConstraints(
      {double? crossAxisExtent,
      double maxExtent = double.infinity,
      double minExtent = 0.0}) {
    Closure closure = table["asBoxConstraints"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool debugAssertIsValid(
      {informationCollector, bool isAppliedConstraint = false}) {
    Closure closure = table["debugAssertIsValid"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSliverConstraints(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverConstraints'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverConstraints(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          axisDirection: maybeUnBoxEnum(
              values: AxisDirection.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['axisDirection']
                  : null),
          cacheOrigin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cacheOrigin']
              : null?.toDouble(),
          crossAxisDirection: maybeUnBoxEnum(
              values: AxisDirection.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['crossAxisDirection']
                  : null),
          crossAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisExtent']
              : null?.toDouble(),
          growthDirection: maybeUnBoxEnum(
              values: GrowthDirection.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['growthDirection']
                  : null),
          overlap: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['overlap']
              : null?.toDouble(),
          precedingScrollExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['precedingScrollExtent']
              : null?.toDouble(),
          remainingCacheExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['remainingCacheExtent']
              : null?.toDouble(),
          remainingPaintExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['remainingPaintExtent']
              : null?.toDouble(),
          scrollOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollOffset']
              : null?.toDouble(),
          userScrollDirection: maybeUnBoxEnum(
              values: ScrollDirection.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['userScrollDirection']
                  : null),
          viewportMainAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['viewportMainAxisExtent']
              : null?.toDouble())
    ];
  });
  registerBoxer<SliverConstraints>(boxer: (
      {required SliverConstraints vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverConstraints(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
