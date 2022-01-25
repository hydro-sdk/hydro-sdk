import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/gestures/events.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPointerEvent extends VMManagedBox<PointerEvent> {
  VMManagedPointerEvent(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['embedderId'] = vmObject.embedderId;
    table['timeStamp'] = maybeBoxObject<Duration>(
        object: vmObject.timeStamp,
        hydroState: hydroState,
        table: HydroTable());
    table['pointer'] = vmObject.pointer;
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
    });
    table['device'] = vmObject.device;
    table['position'] = maybeBoxObject<Offset>(
        object: vmObject.position, hydroState: hydroState, table: HydroTable());
    table['delta'] = maybeBoxObject<Offset>(
        object: vmObject.delta, hydroState: hydroState, table: HydroTable());
    table['buttons'] = vmObject.buttons;
    table['down'] = vmObject.down;
    table['obscured'] = vmObject.obscured;
    table['pressure'] = vmObject.pressure;
    table['pressureMin'] = vmObject.pressureMin;
    table['pressureMax'] = vmObject.pressureMax;
    table['distance'] = vmObject.distance;
    table['distanceMax'] = vmObject.distanceMax;
    table['size'] = vmObject.size;
    table['radiusMajor'] = vmObject.radiusMajor;
    table['radiusMinor'] = vmObject.radiusMinor;
    table['radiusMin'] = vmObject.radiusMin;
    table['radiusMax'] = vmObject.radiusMax;
    table['orientation'] = vmObject.orientation;
    table['tilt'] = vmObject.tilt;
    table['platformData'] = vmObject.platformData;
    table['synthesized'] = vmObject.synthesized;
    table['transform'] = maybeBoxObject<Matrix4?>(
        object: vmObject.transform,
        hydroState: hydroState,
        table: HydroTable());
    table['original'] = maybeBoxObject<PointerEvent?>(
        object: vmObject.original, hydroState: hydroState, table: HydroTable());
    table['getLocalPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.localPosition,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getLocalDelta'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.localDelta,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDistanceMin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.distanceMin,
      ];
    });
    table['transformed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PointerEvent>(
            object: vmObject.transformed(
                maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PointerEvent>(
            object: vmObject.copyWith(
                buttons: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['buttons']
                    : null,
                delta: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['delta']
                        : null,
                    parentState: hydroState),
                device: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['device']
                    : null,
                distance: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['distance']
                    : null?.toDouble(),
                distanceMax: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['distanceMax']
                    : null?.toDouble(),
                embedderId: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['embedderId']
                    : null,
                kind: maybeUnBoxEnum(
                    values: PointerDeviceKind.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['kind']
                        : null),
                obscured: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['obscured']
                    : null,
                orientation: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['orientation']
                    : null?.toDouble(),
                pointer: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pointer'] : null,
                position: maybeUnBoxAndBuildArgument<Offset?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['position'] : null, parentState: hydroState),
                pressure: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressure'] : null?.toDouble(),
                pressureMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMax'] : null?.toDouble(),
                pressureMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMin'] : null?.toDouble(),
                radiusMajor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMajor'] : null?.toDouble(),
                radiusMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMax'] : null?.toDouble(),
                radiusMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMin'] : null?.toDouble(),
                radiusMinor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMinor'] : null?.toDouble(),
                size: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['size'] : null?.toDouble(),
                synthesized: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['synthesized'] : null,
                tilt: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tilt'] : null?.toDouble(),
                timeStamp: maybeUnBoxAndBuildArgument<Duration?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['timeStamp'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PointerEvent vmObject;
}

class RTManagedPointerEvent extends PointerEvent implements Box<PointerEvent> {
  RTManagedPointerEvent(
      {required int buttons,
      required Offset delta,
      required int device,
      required double distance,
      required double distanceMax,
      required bool down,
      required int embedderId,
      required PointerDeviceKind kind,
      required bool obscured,
      required double orientation,
      PointerEvent? original,
      required int platformData,
      required int pointer,
      required Offset position,
      required double pressure,
      required double pressureMax,
      required double pressureMin,
      required double radiusMajor,
      required double radiusMax,
      required double radiusMin,
      required double radiusMinor,
      required double size,
      required bool synthesized,
      required double tilt,
      required Duration timeStamp,
      Matrix4? transform,
      required this.table,
      required this.hydroState})
      : super(
            buttons: buttons,
            delta: delta,
            device: device,
            distance: distance,
            distanceMax: distanceMax,
            down: down,
            embedderId: embedderId,
            kind: kind,
            obscured: obscured,
            orientation: orientation,
            original: original,
            platformData: platformData,
            pointer: pointer,
            position: position,
            pressure: pressure,
            pressureMax: pressureMax,
            pressureMin: pressureMin,
            radiusMajor: radiusMajor,
            radiusMax: radiusMax,
            radiusMin: radiusMin,
            radiusMinor: radiusMinor,
            size: size,
            synthesized: synthesized,
            tilt: tilt,
            timeStamp: timeStamp,
            transform: transform) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['embedderId'] = this.embedderId;
    table['timeStamp'] = maybeBoxObject<Duration>(
        object: this.timeStamp, hydroState: hydroState, table: HydroTable());
    table['pointer'] = this.pointer;
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
    table['device'] = this.device;
    table['position'] = maybeBoxObject<Offset>(
        object: this.position, hydroState: hydroState, table: HydroTable());
    table['delta'] = maybeBoxObject<Offset>(
        object: this.delta, hydroState: hydroState, table: HydroTable());
    table['buttons'] = this.buttons;
    table['down'] = this.down;
    table['obscured'] = this.obscured;
    table['pressure'] = this.pressure;
    table['pressureMin'] = this.pressureMin;
    table['pressureMax'] = this.pressureMax;
    table['distance'] = this.distance;
    table['distanceMax'] = this.distanceMax;
    table['size'] = this.size;
    table['radiusMajor'] = this.radiusMajor;
    table['radiusMinor'] = this.radiusMinor;
    table['radiusMin'] = this.radiusMin;
    table['radiusMax'] = this.radiusMax;
    table['orientation'] = this.orientation;
    table['tilt'] = this.tilt;
    table['platformData'] = this.platformData;
    table['synthesized'] = this.synthesized;
    table['transform'] = maybeBoxObject<Matrix4?>(
        object: this.transform, hydroState: hydroState, table: HydroTable());
    table['original'] = maybeBoxObject<PointerEvent?>(
        object: this.original, hydroState: hydroState, table: HydroTable());
    table['_dart_getLocalPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.localPosition];
    });
    table['_dart_getLocalDelta'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.localDelta];
    });
    table['_dart_getDistanceMin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.distanceMin];
    });
    table['_dart_transformed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PointerEvent>(
            object: transformed(maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PointerEvent>(
            object: copyWith(
                buttons: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['buttons']
                    : null,
                delta:
                    maybeUnBoxAndBuildArgument<Offset?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['delta'] : null,
                        parentState: hydroState),
                device: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['device']
                    : null,
                distance: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['distance']
                    : null?.toDouble(),
                distanceMax: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['distanceMax']
                    : null?.toDouble(),
                embedderId: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['embedderId']
                    : null,
                kind: maybeUnBoxEnum(
                    values: PointerDeviceKind.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['kind']
                        : null),
                obscured: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['obscured']
                    : null,
                orientation: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['orientation']
                    : null?.toDouble(),
                pointer: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['pointer']
                    : null,
                position: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['position'] : null,
                    parentState: hydroState),
                pressure: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressure'] : null?.toDouble(),
                pressureMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMax'] : null?.toDouble(),
                pressureMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMin'] : null?.toDouble(),
                radiusMajor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMajor'] : null?.toDouble(),
                radiusMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMax'] : null?.toDouble(),
                radiusMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMin'] : null?.toDouble(),
                radiusMinor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMinor'] : null?.toDouble(),
                size: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['size'] : null?.toDouble(),
                synthesized: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['synthesized'] : null,
                tilt: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tilt'] : null?.toDouble(),
                timeStamp: maybeUnBoxAndBuildArgument<Duration?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['timeStamp'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  PointerEvent unwrap() => this;
  PointerEvent get vmObject => this;
  @override
  Offset get localPosition {
    Closure closure = table["getLocalPosition"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Offset get localDelta {
    Closure closure = table["getLocalDelta"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  double get distanceMin {
    Closure closure = table["getDistanceMin"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  PointerEvent transformed(transform) {
    Closure closure = table["transformed"];
    return maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  PointerEvent copyWith(
      {int? buttons,
      Offset? delta,
      int? device,
      double? distance,
      double? distanceMax,
      int? embedderId,
      PointerDeviceKind? kind,
      bool? obscured,
      double? orientation,
      int? pointer,
      Offset? position,
      double? pressure,
      double? pressureMax,
      double? pressureMin,
      double? radiusMajor,
      double? radiusMax,
      double? radiusMin,
      double? radiusMinor,
      double? size,
      bool? synthesized,
      double? tilt,
      Duration? timeStamp}) {
    Closure closure = table["copyWith"];
    return maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode toDiagnosticsNode(
      {String? name, DiagnosticsTreeStyle? style}) {
    Closure closure = table["toDiagnosticsNode"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPointerEvent(
    {required HydroState hydroState, required HydroTable table}) {
  table['pointerEvent'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPointerEvent(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          buttons: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttons']
              : null,
          delta: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['delta']
                  : null,
              parentState: hydroState),
          device: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['device']
              : null,
          distance: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['distance']
              : null?.toDouble(),
          distanceMax: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['distanceMax']
              : null?.toDouble(),
          down: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['down']
              : null,
          embedderId: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['embedderId']
              : null,
          kind: maybeUnBoxEnum(
              values: PointerDeviceKind.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['kind']
                  : null),
          obscured: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['obscured']
              : null,
          orientation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['orientation']
              : null?.toDouble(),
          original: maybeUnBoxAndBuildArgument<PointerEvent?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['original']
                  : null,
              parentState: hydroState),
          platformData: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['platformData']
              : null,
          pointer:
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pointer'] : null,
          position: maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['position'] : null, parentState: hydroState),
          pressure: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressure'] : null?.toDouble(),
          pressureMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMax'] : null?.toDouble(),
          pressureMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMin'] : null?.toDouble(),
          radiusMajor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMajor'] : null?.toDouble(),
          radiusMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMax'] : null?.toDouble(),
          radiusMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMin'] : null?.toDouble(),
          radiusMinor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMinor'] : null?.toDouble(),
          size: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['size'] : null?.toDouble(),
          synthesized: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['synthesized'] : null,
          tilt: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tilt'] : null?.toDouble(),
          timeStamp: maybeUnBoxAndBuildArgument<Duration, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['timeStamp'] : null, parentState: hydroState),
          transform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['transform'] : null, parentState: hydroState))
    ];
  });
  table['pointerEventTransformPosition'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Offset>(
          object: PointerEvent.transformPosition(
              maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['pointerEventTransformDeltaViaPositions'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Offset>(
          object: PointerEvent.transformDeltaViaPositions(
              transformedEndPosition:
                  maybeUnBoxAndBuildArgument<Offset?, dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['transformedEndPosition']
                          : null,
                      parentState: hydroState),
              transform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['transform']
                      : null,
                  parentState: hydroState),
              untransformedDelta: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['untransformedDelta'] : null,
                  parentState: hydroState),
              untransformedEndPosition: maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['untransformedEndPosition'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['pointerEventRemovePerspectiveTransform'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Matrix4>(
          object: PointerEvent.removePerspectiveTransform(
              maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<PointerEvent>(boxer: (
      {required PointerEvent vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPointerEvent(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
