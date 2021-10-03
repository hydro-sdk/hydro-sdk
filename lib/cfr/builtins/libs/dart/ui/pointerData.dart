import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPointerData extends VMManagedBox<PointerData> {
  VMManagedPointerData(
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
    table['change'] = PointerChange.values.indexWhere((x) {
      return x == vmObject.change;
    });
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
    });
    table['signalKind'] = PointerSignalKind.values.indexWhere((x) {
      return x == vmObject.signalKind;
    });
    table['device'] = vmObject.device;
    table['pointerIdentifier'] = vmObject.pointerIdentifier;
    table['physicalX'] = vmObject.physicalX;
    table['physicalY'] = vmObject.physicalY;
    table['physicalDeltaX'] = vmObject.physicalDeltaX;
    table['physicalDeltaY'] = vmObject.physicalDeltaY;
    table['buttons'] = vmObject.buttons;
    table['obscured'] = vmObject.obscured;
    table['synthesized'] = vmObject.synthesized;
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
    table['scrollDeltaX'] = vmObject.scrollDeltaX;
    table['scrollDeltaY'] = vmObject.scrollDeltaY;
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['toStringFull'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringFull(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PointerData vmObject;
}

class RTManagedPointerData extends PointerData implements Box<PointerData> {
  RTManagedPointerData(
      {required int buttons,
      required PointerChange change,
      required int device,
      required double distance,
      required double distanceMax,
      required int embedderId,
      required PointerDeviceKind kind,
      required bool obscured,
      required double orientation,
      required double physicalDeltaX,
      required double physicalDeltaY,
      required double physicalX,
      required double physicalY,
      required int platformData,
      required int pointerIdentifier,
      required double pressure,
      required double pressureMax,
      required double pressureMin,
      required double radiusMajor,
      required double radiusMax,
      required double radiusMin,
      required double radiusMinor,
      required double scrollDeltaX,
      required double scrollDeltaY,
      PointerSignalKind? signalKind,
      required double size,
      required bool synthesized,
      required double tilt,
      required Duration timeStamp,
      required this.table,
      required this.hydroState})
      : super(
            buttons: buttons,
            change: change,
            device: device,
            distance: distance,
            distanceMax: distanceMax,
            embedderId: embedderId,
            kind: kind,
            obscured: obscured,
            orientation: orientation,
            physicalDeltaX: physicalDeltaX,
            physicalDeltaY: physicalDeltaY,
            physicalX: physicalX,
            physicalY: physicalY,
            platformData: platformData,
            pointerIdentifier: pointerIdentifier,
            pressure: pressure,
            pressureMax: pressureMax,
            pressureMin: pressureMin,
            radiusMajor: radiusMajor,
            radiusMax: radiusMax,
            radiusMin: radiusMin,
            radiusMinor: radiusMinor,
            scrollDeltaX: scrollDeltaX,
            scrollDeltaY: scrollDeltaY,
            signalKind: signalKind,
            size: size,
            synthesized: synthesized,
            tilt: tilt,
            timeStamp: timeStamp) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['embedderId'] = embedderId;
    table['timeStamp'] = maybeBoxObject<Duration>(
        object: timeStamp, hydroState: hydroState, table: HydroTable());
    table['change'] = PointerChange.values.indexWhere((x) {
      return x == change;
    });
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == kind;
    });
    table['signalKind'] = PointerSignalKind.values.indexWhere((x) {
      return x == signalKind;
    });
    table['device'] = device;
    table['pointerIdentifier'] = pointerIdentifier;
    table['physicalX'] = physicalX;
    table['physicalY'] = physicalY;
    table['physicalDeltaX'] = physicalDeltaX;
    table['physicalDeltaY'] = physicalDeltaY;
    table['buttons'] = buttons;
    table['obscured'] = obscured;
    table['synthesized'] = synthesized;
    table['pressure'] = pressure;
    table['pressureMin'] = pressureMin;
    table['pressureMax'] = pressureMax;
    table['distance'] = distance;
    table['distanceMax'] = distanceMax;
    table['size'] = size;
    table['radiusMajor'] = radiusMajor;
    table['radiusMinor'] = radiusMinor;
    table['radiusMin'] = radiusMin;
    table['radiusMax'] = radiusMax;
    table['orientation'] = orientation;
    table['tilt'] = tilt;
    table['platformData'] = platformData;
    table['scrollDeltaX'] = scrollDeltaX;
    table['scrollDeltaY'] = scrollDeltaY;
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_toStringFull'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringFull()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  PointerData unwrap() => this;
  PointerData get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringFull() {
    Closure closure = table["toStringFull"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPointerData(
    {required HydroState hydroState, required HydroTable table}) {
  table['pointerData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPointerData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          buttons: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttons']
              : null,
          change: maybeUnBoxEnum(
              values: PointerChange.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['change']
                  : null),
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
          physicalDeltaX: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['physicalDeltaX']
              : null?.toDouble(),
          physicalDeltaY: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['physicalDeltaY']
              : null?.toDouble(),
          physicalX: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['physicalX']
              : null?.toDouble(),
          physicalY: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['physicalY']
              : null?.toDouble(),
          platformData: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['platformData']
              : null,
          pointerIdentifier: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pointerIdentifier']
              : null,
          pressure: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pressure']
              : null?.toDouble(),
          pressureMax: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pressureMax']
              : null?.toDouble(),
          pressureMin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pressureMin']
              : null?.toDouble(),
          radiusMajor: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['radiusMajor']
              : null?.toDouble(),
          radiusMax: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['radiusMax']
              : null?.toDouble(),
          radiusMin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['radiusMin']
              : null?.toDouble(),
          radiusMinor: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['radiusMinor']
              : null?.toDouble(),
          scrollDeltaX: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollDeltaX']
              : null?.toDouble(),
          scrollDeltaY: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollDeltaY']
              : null?.toDouble(),
          signalKind: maybeUnBoxEnum(
              values: PointerSignalKind.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['signalKind']
                  : null),
          size: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['size']
              : null?.toDouble(),
          synthesized: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['synthesized']
              : null,
          tilt: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['tilt']
              : null?.toDouble(),
          timeStamp: maybeUnBoxAndBuildArgument<Duration, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['timeStamp']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<PointerData>(boxer: (
      {required PointerData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPointerData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
