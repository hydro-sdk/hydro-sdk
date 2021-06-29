import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

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
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table['toStringFull'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toStringFull()];
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
    table['_dart_toStringFull'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
  table['pointerData'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedPointerData(
          table: args[0],
          hydroState: hydroState,
          buttons: args[1]['buttons'],
          change: maybeUnBoxEnum(
              values: PointerChange.values, boxedEnum: args[1]['change']),
          device: args[1]['device'],
          distance: args[1]['distance']?.toDouble(),
          distanceMax: args[1]['distanceMax']?.toDouble(),
          embedderId: args[1]['embedderId'],
          kind: maybeUnBoxEnum(
              values: PointerDeviceKind.values, boxedEnum: args[1]['kind']),
          obscured: args[1]['obscured'],
          orientation: args[1]['orientation']?.toDouble(),
          physicalDeltaX: args[1]['physicalDeltaX']?.toDouble(),
          physicalDeltaY: args[1]['physicalDeltaY']?.toDouble(),
          physicalX: args[1]['physicalX']?.toDouble(),
          physicalY: args[1]['physicalY']?.toDouble(),
          platformData: args[1]['platformData'],
          pointerIdentifier: args[1]['pointerIdentifier'],
          pressure: args[1]['pressure']?.toDouble(),
          pressureMax: args[1]['pressureMax']?.toDouble(),
          pressureMin: args[1]['pressureMin']?.toDouble(),
          radiusMajor: args[1]['radiusMajor']?.toDouble(),
          radiusMax: args[1]['radiusMax']?.toDouble(),
          radiusMin: args[1]['radiusMin']?.toDouble(),
          radiusMinor: args[1]['radiusMinor']?.toDouble(),
          scrollDeltaX: args[1]['scrollDeltaX']?.toDouble(),
          scrollDeltaY: args[1]['scrollDeltaY']?.toDouble(),
          signalKind: maybeUnBoxEnum(
              values: PointerSignalKind.values,
              boxedEnum: args[1]['signalKind']),
          size: args[1]['size']?.toDouble(),
          synthesized: args[1]['synthesized'],
          tilt: args[1]['tilt']?.toDouble(),
          timeStamp: maybeUnBoxAndBuildArgument<Duration>(args[1]['timeStamp'],
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
