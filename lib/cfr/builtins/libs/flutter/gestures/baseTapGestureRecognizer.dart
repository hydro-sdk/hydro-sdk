import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/gesture_settings.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'package:flutter/src/gestures/team.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedBaseTapGestureRecognizer
    extends VMManagedBox<BaseTapGestureRecognizer> {
  VMManagedBaseTapGestureRecognizer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['deadline'] = maybeBoxObject<Duration?>(
        object: vmObject.deadline, hydroState: hydroState, table: HydroTable());
    table['preAcceptSlopTolerance'] = vmObject.preAcceptSlopTolerance;
    table['postAcceptSlopTolerance'] = vmObject.postAcceptSlopTolerance;
    table['debugOwner'] = maybeBoxObject<Object?>(
        object: vmObject.debugOwner,
        hydroState: hydroState,
        table: HydroTable());
    table['gestureSettings'] = maybeBoxObject<DeviceGestureSettings?>(
        object: vmObject.gestureSettings,
        hydroState: hydroState,
        table: HydroTable());
    table['addAllowedPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addAllowedPointer(
          maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['handlePrimaryPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handlePrimaryPointer(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['resolve'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.resolve(maybeUnBoxEnum(
          values: GestureDisposition.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['didExceedDeadline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.didExceedDeadline();
      return [];
    });
    table['acceptGesture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.acceptGesture(luaCallerArguments[1]);
      return [];
    });
    table['rejectGesture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rejectGesture(luaCallerArguments[1]);
      return [];
    });
    table['getDebugDescription'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDescription,
      ];
    });
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['handleNonAllowedPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleNonAllowedPointer(
          maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleEvent(maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['didStopTrackingLastPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.didStopTrackingLastPointer(luaCallerArguments[1]);
      return [];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        GestureRecognizerState.values.indexWhere((x) {
          return x == vmObject.state;
        }),
      ];
    });
    table['getPrimaryPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.primaryPointer;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getInitialPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.initialPosition;
      if (returnValue != null) {
        return [
          maybeBoxObject<OffsetPair?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getTeam'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.team;
      if (returnValue != null) {
        return [
          maybeBoxObject<GestureArenaTeam?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setTeam'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.team = (maybeUnBoxAndBuildArgument<GestureArenaTeam?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['addPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPointer(maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
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
    table['toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
      ];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
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
    table['debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
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
  }

  final HydroTable table;

  final HydroState hydroState;

  final BaseTapGestureRecognizer vmObject;
}

class RTManagedBaseTapGestureRecognizer extends BaseTapGestureRecognizer
    implements Box<BaseTapGestureRecognizer> {
  RTManagedBaseTapGestureRecognizer(
      {Object? debugOwner, required this.table, required this.hydroState})
      : super(debugOwner: debugOwner) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['deadline'] = maybeBoxObject<Duration?>(
        object: deadline, hydroState: hydroState, table: HydroTable());
    table['preAcceptSlopTolerance'] = preAcceptSlopTolerance;
    table['postAcceptSlopTolerance'] = postAcceptSlopTolerance;
    table['debugOwner'] = maybeBoxObject<Object?>(
        object: this.debugOwner, hydroState: hydroState, table: HydroTable());
    table['gestureSettings'] = maybeBoxObject<DeviceGestureSettings?>(
        object: gestureSettings, hydroState: hydroState, table: HydroTable());
    table['_dart_handleTapDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      handleTapDown(
          down: maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['down']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_handleTapUp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      handleTapUp(
          down: maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['down']
                  : null,
              parentState: hydroState),
          up: maybeUnBoxAndBuildArgument<PointerUpEvent, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['up']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_handleTapCancel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      handleTapCancel(
          cancel: maybeUnBoxAndBuildArgument<PointerCancelEvent?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cancel']
                  : null,
              parentState: hydroState),
          down: maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['down']
                  : null,
              parentState: hydroState),
          reason: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['reason']
              : null);
      return [];
    });
    table['_dart_addAllowedPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addAllowedPointer(
          maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_startTrackingPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.startTrackingPointer(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_handlePrimaryPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handlePrimaryPointer(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_resolve'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.resolve(maybeUnBoxEnum(
          values: GestureDisposition.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_didExceedDeadline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.didExceedDeadline();
      return [];
    });
    table['_dart_acceptGesture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.acceptGesture(luaCallerArguments[1]);
      return [];
    });
    table['_dart_rejectGesture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rejectGesture(luaCallerArguments[1]);
      return [];
    });
    table['_dart_getDebugDescription'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDescription];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_handleNonAllowedPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleNonAllowedPointer(
          maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleEvent(maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_didExceedDeadlineWithEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.didExceedDeadlineWithEvent(
          maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_didStopTrackingLastPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.didStopTrackingLastPointer(luaCallerArguments[1]);
      return [];
    });
    table['_dart_dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_getState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.state];
    });
    table['_dart_getPrimaryPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.primaryPointer];
    });
    table['_dart_getInitialPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.initialPosition];
    });
    table['_dart_resolvePointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.resolvePointer(
          luaCallerArguments[1],
          maybeUnBoxEnum(
              values: GestureDisposition.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['_dart_stopTrackingPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.stopTrackingPointer(luaCallerArguments[1]);
      return [];
    });
    table['_dart_stopTrackingIfPointerNoLongerDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.stopTrackingIfPointerNoLongerDown(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTeam'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.team];
    });
    table['_dart_setTeam'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.team = (maybeUnBoxAndBuildArgument<GestureArenaTeam?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_addPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPointer(maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_isPointerAllowed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.isPointerAllowed(
            maybeUnBoxAndBuildArgument<PointerDownEvent, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_getKindForPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        PointerDeviceKind.values.indexWhere((x) {
          return x == super.getKindForPointer(luaCallerArguments[1]);
        })
      ];
    });
    table['_dart_invokeCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[2];
      Closure? unpackeddebugReport = luaCallerArguments.length >= 4
          ? luaCallerArguments[3]['debugReport']
          : null;
      return [
        super.invokeCallback(
            luaCallerArguments[1],
            () => unpackedcallback.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )[0],
            debugReport: unpackeddebugReport != null
                ? () => unpackeddebugReport.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
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
    table['_dart_toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null)
      ];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
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
    table['_dart_debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  BaseTapGestureRecognizer unwrap() => this;
  BaseTapGestureRecognizer get vmObject => this;
  @override
  void handleTapDown({required PointerDownEvent down}) {
    Closure closure = table["handleTapDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleTapUp(
      {required PointerDownEvent down, required PointerUpEvent up}) {
    Closure closure = table["handleTapUp"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleTapCancel(
      {PointerCancelEvent? cancel,
      required PointerDownEvent down,
      required String reason}) {
    Closure closure = table["handleTapCancel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addAllowedPointer(event) {
    Closure closure = table["addAllowedPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void startTrackingPointer(pointer, [Matrix4? transform]) {
    Closure closure = table["startTrackingPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handlePrimaryPointer(event) {
    Closure closure = table["handlePrimaryPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void resolve(disposition) {
    super.resolve(disposition);
    Closure closure = table["resolve"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void didExceedDeadline() {
    Closure closure = table["didExceedDeadline"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void acceptGesture(pointer) {
    Closure closure = table["acceptGesture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void rejectGesture(pointer) {
    Closure closure = table["rejectGesture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get debugDescription {
    Closure closure = table["getDebugDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleNonAllowedPointer(event) {
    Closure closure = table["handleNonAllowedPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleEvent(event) {
    Closure closure = table["handleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void didExceedDeadlineWithEvent(event) {
    Closure closure = table["didExceedDeadlineWithEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void didStopTrackingLastPointer(pointer) {
    Closure closure = table["didStopTrackingLastPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dispose() {
    super.dispose();
    Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  GestureRecognizerState get state {
    Closure closure = table["getState"];
    return maybeUnBoxEnum(
        values: GestureRecognizerState.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  int? get primaryPointer {
    Closure closure = table["getPrimaryPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  OffsetPair? get initialPosition {
    Closure closure = table["getInitialPosition"];
    return maybeUnBoxAndBuildArgument<OffsetPair?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void resolvePointer(pointer, disposition) {
    super.resolvePointer(pointer, disposition);
    Closure closure = table["resolvePointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void stopTrackingPointer(pointer) {
    Closure closure = table["stopTrackingPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void stopTrackingIfPointerNoLongerDown(event) {
    Closure closure = table["stopTrackingIfPointerNoLongerDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  GestureArenaTeam? get team {
    Closure closure = table["getTeam"];
    return maybeUnBoxAndBuildArgument<GestureArenaTeam?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set team(value) {
    Closure closure = table["setTeam"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPointer(event) {
    Closure closure = table["addPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool isPointerAllowed(event) {
    Closure closure = table["isPointerAllowed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  PointerDeviceKind getKindForPointer(pointer) {
    Closure closure = table["getKindForPointer"];
    return maybeUnBoxEnum(
        values: PointerDeviceKind.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  T? invokeCallback<T>(name, callback, {debugReport}) {
    Closure closure = table["invokeCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DiagnosticLevel minLevel = DiagnosticLevel.debug,
      String prefixLineOne = '',
      String? prefixOtherLines}) {
    Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
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
  List<DiagnosticsNode> debugDescribeChildren() {
    Closure closure = table["debugDescribeChildren"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadBaseTapGestureRecognizer(
    {required HydroState hydroState, required HydroTable table}) {
  table['baseTapGestureRecognizer'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedBaseTapGestureRecognizer(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          debugOwner: maybeUnBoxAndBuildArgument<Object?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['debugOwner']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<BaseTapGestureRecognizer>(boxer: (
      {required BaseTapGestureRecognizer vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedBaseTapGestureRecognizer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
