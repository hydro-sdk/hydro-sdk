import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedBoxConstraints extends VMManagedBox<BoxConstraints> {
  VMManagedBoxConstraints(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['minWidth'] = vmObject.minWidth;
    table['maxWidth'] = vmObject.maxWidth;
    table['minHeight'] = vmObject.minHeight;
    table['maxHeight'] = vmObject.maxHeight;
    table['copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.copyWith(
                maxHeight: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['maxHeight']
                    : null?.toDouble(),
                maxWidth: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['maxWidth']
                    : null?.toDouble(),
                minHeight: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minHeight']
                    : null?.toDouble(),
                minWidth: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minWidth']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['deflate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.deflate(
                maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['loosen'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.loosen(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['enforce'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.enforce(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['tighten'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.tighten(
                height: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['height']
                    : null?.toDouble(),
                width: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['width']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getFlipped'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.flipped,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['widthConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.widthConstraints(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['heightConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.heightConstraints(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['constrainWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.constrainWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['constrainHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.constrainHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['constrain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.constrain(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['constrainDimensions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.constrainDimensions(
                luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['constrainSizeAndAttemptToPreserveAspectRatio'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.constrainSizeAndAttemptToPreserveAspectRatio(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getBiggest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.biggest,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getSmallest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.smallest,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getHasTightWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasTightWidth,
      ];
    });
    table['getHasTightHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasTightHeight,
      ];
    });
    table['getIsTight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isTight,
      ];
    });
    table['getHasBoundedWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasBoundedWidth,
      ];
    });
    table['getHasBoundedHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasBoundedHeight,
      ];
    });
    table['getHasInfiniteWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasInfiniteWidth,
      ];
    });
    table['getHasInfiniteHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasInfiniteHeight,
      ];
    });
    table['isSatisfiedBy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isSatisfiedBy(maybeUnBoxAndBuildArgument<Size, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['getIsNormalized'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isNormalized,
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
    table['normalize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.normalize(),
            hydroState: hydroState,
            table: HydroTable()),
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

  final BoxConstraints vmObject;
}

class RTManagedBoxConstraints extends BoxConstraints
    implements Box<BoxConstraints> {
  RTManagedBoxConstraints(
      {required double maxHeight,
      required double maxWidth,
      required double minHeight,
      required double minWidth,
      required this.table,
      required this.hydroState})
      : super(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
            minHeight: minHeight,
            minWidth: minWidth) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['minWidth'] = this.minWidth;
    table['maxWidth'] = this.maxWidth;
    table['minHeight'] = this.minHeight;
    table['maxHeight'] = this.maxHeight;
    table['_dart_copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.copyWith(
                maxHeight: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['maxHeight']
                    : null?.toDouble(),
                maxWidth: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['maxWidth']
                    : null?.toDouble(),
                minHeight: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minHeight']
                    : null?.toDouble(),
                minWidth: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minWidth']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_deflate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.deflate(
                maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_loosen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.loosen(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_enforce'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.enforce(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_tighten'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.tighten(
                height: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['height']
                    : null?.toDouble(),
                width: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['width']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getFlipped'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.flipped];
    });
    table['_dart_widthConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.widthConstraints(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_heightConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.heightConstraints(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_constrainWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.constrainWidth(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_constrainHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.constrainHeight(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_constrain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.constrain(maybeUnBoxAndBuildArgument<Size, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_constrainDimensions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.constrainDimensions(luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_constrainSizeAndAttemptToPreserveAspectRatio'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.constrainSizeAndAttemptToPreserveAspectRatio(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getBiggest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.biggest];
    });
    table['_dart_getSmallest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.smallest];
    });
    table['_dart_getHasTightWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasTightWidth];
    });
    table['_dart_getHasTightHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasTightHeight];
    });
    table['_dart_getIsTight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isTight];
    });
    table['_dart_getHasBoundedWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasBoundedWidth];
    });
    table['_dart_getHasBoundedHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasBoundedHeight];
    });
    table['_dart_getHasInfiniteWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasInfiniteWidth];
    });
    table['_dart_getHasInfiniteHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasInfiniteHeight];
    });
    table['_dart_isSatisfiedBy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.isSatisfiedBy(maybeUnBoxAndBuildArgument<Size, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_getIsNormalized'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isNormalized];
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
    table['_dart_normalize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: super.normalize(),
            hydroState: hydroState,
            table: HydroTable())
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

  BoxConstraints unwrap() => this;
  BoxConstraints get vmObject => this;
  @override
  BoxConstraints copyWith(
      {double? maxHeight,
      double? maxWidth,
      double? minHeight,
      double? minWidth}) {
    Closure closure = table["copyWith"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints deflate(EdgeInsets edges) {
    Closure closure = table["deflate"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints loosen() {
    Closure closure = table["loosen"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints enforce(BoxConstraints constraints) {
    Closure closure = table["enforce"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints tighten({double? height, double? width}) {
    Closure closure = table["tighten"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints get flipped {
    Closure closure = table["getFlipped"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints widthConstraints() {
    Closure closure = table["widthConstraints"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints heightConstraints() {
    Closure closure = table["heightConstraints"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  double constrainWidth([double width = double.infinity]) {
    Closure closure = table["constrainWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double constrainHeight([double height = double.infinity]) {
    Closure closure = table["constrainHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  Size constrain(Size size) {
    Closure closure = table["constrain"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Size constrainDimensions(double width, double height) {
    Closure closure = table["constrainDimensions"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Size constrainSizeAndAttemptToPreserveAspectRatio(Size size) {
    Closure closure = table["constrainSizeAndAttemptToPreserveAspectRatio"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Size get biggest {
    Closure closure = table["getBiggest"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Size get smallest {
    Closure closure = table["getSmallest"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get hasTightWidth {
    Closure closure = table["getHasTightWidth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasTightHeight {
    Closure closure = table["getHasTightHeight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isTight {
    Closure closure = table["getIsTight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasBoundedWidth {
    Closure closure = table["getHasBoundedWidth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasBoundedHeight {
    Closure closure = table["getHasBoundedHeight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasInfiniteWidth {
    Closure closure = table["getHasInfiniteWidth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasInfiniteHeight {
    Closure closure = table["getHasInfiniteHeight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool isSatisfiedBy(Size size) {
    Closure closure = table["isSatisfiedBy"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isNormalized {
    Closure closure = table["getIsNormalized"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool debugAssertIsValid(
      {informationCollector, bool isAppliedConstraint = false}) {
    Closure closure = table["debugAssertIsValid"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  BoxConstraints normalize() {
    Closure closure = table["normalize"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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

void loadBoxConstraints(
    {required HydroState hydroState, required HydroTable table}) {
  table['boxConstraints'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedBoxConstraints(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          maxHeight: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxHeight']
              : null?.toDouble(),
          maxWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxWidth']
              : null?.toDouble(),
          minHeight: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minHeight']
              : null?.toDouble(),
          minWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minWidth']
              : null?.toDouble())
    ];
  });
  table['boxConstraintsLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = BoxConstraints.lerp(
        maybeUnBoxAndBuildArgument<BoxConstraints?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<BoxConstraints?, dynamic>(
            luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<BoxConstraints?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<BoxConstraints>(boxer: (
      {required BoxConstraints vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedBoxConstraints(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
