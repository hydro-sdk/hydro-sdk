import 'dart:ui';

import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/drag.dart';
import 'package:flutter/src/gestures/gesture_settings.dart';
import 'package:flutter/src/gestures/multidrag.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedMultiDragPointerState
    extends VMManagedBox<MultiDragPointerState> {
  VMManagedMultiDragPointerState(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['gestureSettings'] = maybeBoxObject<DeviceGestureSettings?>(
        object: vmObject.gestureSettings,
        hydroState: hydroState,
        table: HydroTable());
    table['initialPosition'] = maybeBoxObject<Offset>(
        object: vmObject.initialPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
    });
    table['getPendingDelta'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pendingDelta;
      if (returnValue != null) {
        return [
          maybeBoxObject<Offset?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final MultiDragPointerState vmObject;
}

class RTManagedMultiDragPointerState extends MultiDragPointerState
    implements Box<MultiDragPointerState> {
  RTManagedMultiDragPointerState(Offset initialPosition$,
      PointerDeviceKind kind$, DeviceGestureSettings? gestureSettings$,
      {required this.table, required this.hydroState})
      : super(
          initialPosition$,
          kind$,
          gestureSettings$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['gestureSettings'] = maybeBoxObject<DeviceGestureSettings?>(
        object: this.gestureSettings,
        hydroState: hydroState,
        table: HydroTable());
    table['initialPosition'] = maybeBoxObject<Offset>(
        object: this.initialPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
    table['_dart_getPendingDelta'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.pendingDelta];
    });
    table['_dart_resolve'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.resolve(maybeUnBoxEnum(
          values: GestureDisposition.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_checkForResolutionAfterMove'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.checkForResolutionAfterMove();
      return [];
    });
    table['_dart_accepted'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedstarter = luaCallerArguments[1];
      accepted((position) => maybeUnBoxAndBuildArgument<Drag?, dynamic>(
          ((
            final List<dynamic>? val,
          ) =>
              val != null && val.length >= 1 ? val[0] : null)(
            unpackedstarter.dispatch(
              [luaCallerArguments[0], position],
              parentState: hydroState,
            ),
          ),
          parentState: hydroState));
      return [];
    });
    table['_dart_rejected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rejected();
      return [];
    });
    table['_dart_dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  MultiDragPointerState unwrap() => this;
  MultiDragPointerState get vmObject => this;
  @override
  Offset? get pendingDelta {
    Closure closure = table["getPendingDelta"];
    return maybeUnBoxAndBuildArgument<Offset?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void resolve(disposition) {
    super.resolve(disposition);
    Closure closure = table["resolve"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void checkForResolutionAfterMove() {
    Closure closure = table["checkForResolutionAfterMove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void accepted(starter) {
    Closure closure = table["accepted"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void rejected() {
    super.rejected();
    Closure closure = table["rejected"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dispose() {
    super.dispose();
    Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMultiDragPointerState(
    {required HydroState hydroState, required HydroTable table}) {
  table['multiDragPointerState'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedMultiDragPointerState(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: PointerDeviceKind.values,
              boxedEnum: luaCallerArguments[2]),
          maybeUnBoxAndBuildArgument<DeviceGestureSettings?, dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<MultiDragPointerState>(boxer: (
      {required MultiDragPointerState vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedMultiDragPointerState(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
