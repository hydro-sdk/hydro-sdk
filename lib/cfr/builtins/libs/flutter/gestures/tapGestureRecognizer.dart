import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/gestures/arena.dart' as _be6e;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/gesture_settings.dart' as _352d;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/gestures/tap.dart' as _1275;
import 'package:flutter/src/gestures/team.dart' as _c0ad;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTapGestureRecognizer
    extends _36c2.VMManagedBox<_1275.TapGestureRecognizer> {
  VMManagedTapGestureRecognizer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['deadline'] = _36c2.maybeBoxObject<_fac9.Duration?>(
        object: vmObject.deadline,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['preAcceptSlopTolerance'] = vmObject.preAcceptSlopTolerance;
    table['postAcceptSlopTolerance'] = vmObject.postAcceptSlopTolerance;
    table['debugOwner'] = _36c2.maybeBoxObject<_fac9.Object?>(
        object: vmObject.debugOwner,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['gestureSettings'] =
        _36c2.maybeBoxObject<_352d.DeviceGestureSettings?>(
            object: vmObject.gestureSettings,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['isPointerAllowed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isPointerAllowed(_36c2.maybeUnBoxAndBuildArgument<
            _0e77.PointerDownEvent,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getDebugDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugDescription,
      ];
    });
    table['addAllowedPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addAllowedPointer(_36c2.maybeUnBoxAndBuildArgument<
          _0e77.PointerDownEvent,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['handlePrimaryPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handlePrimaryPointer(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.resolve(_36c2.maybeUnBoxEnum(
          values: _be6e.GestureDisposition.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['didExceedDeadline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didExceedDeadline();
      return [];
    });
    table['acceptGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.acceptGesture(luaCallerArguments[1]);
      return [];
    });
    table['rejectGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.rejectGesture(luaCallerArguments[1]);
      return [];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['handleNonAllowedPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleNonAllowedPointer(_36c2.maybeUnBoxAndBuildArgument<
          _0e77.PointerDownEvent,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['handleEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['didStopTrackingLastPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStopTrackingLastPointer(luaCallerArguments[1]);
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _02d2.GestureRecognizerState.values.indexWhere((x) {
          return x == vmObject.state;
        }),
      ];
    });
    table['getPrimaryPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.primaryPointer;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getInitialPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.initialPosition;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_02d2.OffsetPair?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getTeam'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.team;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_c0ad.GestureArenaTeam?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setTeam'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.team = (_36c2.maybeUnBoxAndBuildArgument<_c0ad.GestureArenaTeam?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['addPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addPointer(_36c2.maybeUnBoxAndBuildArgument<
          _0e77.PointerDownEvent,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
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
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _1275.TapGestureRecognizer vmObject;
}

class RTManagedTapGestureRecognizer extends _1275.TapGestureRecognizer
    implements _36c2.Box<_1275.TapGestureRecognizer> {
  RTManagedTapGestureRecognizer(
      {_fac9.Object? debugOwner, required this.table, required this.hydroState})
      : super(debugOwner: debugOwner) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['deadline'] = _36c2.maybeBoxObject(
        object: deadline, hydroState: hydroState, table: _36c2.HydroTable());
    table['preAcceptSlopTolerance'] = _36c2.maybeBoxObject(
        object: preAcceptSlopTolerance,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['postAcceptSlopTolerance'] = _36c2.maybeBoxObject(
        object: postAcceptSlopTolerance,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugOwner'] = _36c2.maybeBoxObject(
        object: this.debugOwner,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['gestureSettings'] = _36c2.maybeBoxObject(
        object: gestureSettings,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_isPointerAllowed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.isPointerAllowed(_36c2.maybeUnBoxAndBuildArgument<
                _0e77.PointerDownEvent,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_handleTapDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleTapDown(
          down: _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerDownEvent,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['down']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_handleTapUp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleTapUp(
          down: _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerDownEvent,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['down']
                  : null,
              parentState: hydroState),
          up: _36c2
              .maybeUnBoxAndBuildArgument<_0e77.PointerUpEvent, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['up']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_handleTapCancel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleTapCancel(
          cancel:
              _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerCancelEvent?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['cancel']
                      : null,
                  parentState: hydroState),
          down: _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerDownEvent, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['down']
                  : null,
              parentState: hydroState),
          reason: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['reason'] : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_getDebugDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugDescription];
    });
    table['_dart_addAllowedPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.addAllowedPointer(_36c2.maybeUnBoxAndBuildArgument<
          _0e77.PointerDownEvent,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_startTrackingPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.startTrackingPointer(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_handlePrimaryPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handlePrimaryPointer(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.resolve(_36c2.maybeUnBoxEnum(
          values: _be6e.GestureDisposition.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_didExceedDeadline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didExceedDeadline();
      return [];
    });
    table['_dart_acceptGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.acceptGesture(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_rejectGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.rejectGesture(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_handleNonAllowedPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleNonAllowedPointer(_36c2.maybeUnBoxAndBuildArgument<
          _0e77.PointerDownEvent,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_handleEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_didExceedDeadlineWithEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didExceedDeadlineWithEvent(_36c2.maybeUnBoxAndBuildArgument<
          _0e77.PointerDownEvent,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_didStopTrackingLastPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStopTrackingLastPointer(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_getState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.state];
    });
    table['_dart_getPrimaryPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.primaryPointer];
    });
    table['_dart_getInitialPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.initialPosition];
    });
    table['_dart_resolvePointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.resolvePointer(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _be6e.GestureDisposition.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['_dart_stopTrackingPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.stopTrackingPointer(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_stopTrackingIfPointerNoLongerDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.stopTrackingIfPointerNoLongerDown(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTeam'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.team];
    });
    table['_dart_setTeam'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.team = (_36c2.maybeUnBoxAndBuildArgument<_c0ad.GestureArenaTeam?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_addPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.addPointer(_36c2.maybeUnBoxAndBuildArgument<_0e77.PointerDownEvent,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getKindForPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _a643.PointerDeviceKind.values.indexWhere((x) {
          return x ==
              super.getKindForPointer(
                  _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                      luaCallerArguments[1],
                      parentState: hydroState));
        })
      ];
    });
    table['_dart_invokeCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[2];
      _36c2.Closure? unpackeddebugReport = luaCallerArguments.length >= 4
          ? luaCallerArguments[3]['debugReport']
          : null;
      return [
        super.invokeCallback(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            () => unpackedcallback.dispatch(
                  [luaCallerArguments[0]],
                  parentState: hydroState,
                )[0],
            debugReport: unpackeddebugReport != null
                ? () => _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        unpackeddebugReport.dispatch(
                          [luaCallerArguments[0]],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                : null)
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShallow(
                joiner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['joiner']
                            : null,
                        parentState: hydroState),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDeep(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null),
                prefixLineOne:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixOtherLines']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _1275.TapGestureRecognizer unwrap() => this;
  _1275.TapGestureRecognizer get vmObject => this;
  @_fac9.override
  _fac9.bool isPointerAllowed(event) {
    _36c2.Closure closure = table["isPointerAllowed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleTapDown({required _0e77.PointerDownEvent down}) {
    _36c2.Closure closure = table["handleTapDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleTapUp(
      {required _0e77.PointerDownEvent down,
      required _0e77.PointerUpEvent up}) {
    _36c2.Closure closure = table["handleTapUp"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleTapCancel(
      {_0e77.PointerCancelEvent? cancel,
      required _0e77.PointerDownEvent down,
      required _fac9.String reason}) {
    _36c2.Closure closure = table["handleTapCancel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get debugDescription {
    _36c2.Closure closure = table["getDebugDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addAllowedPointer(event) {
    _36c2.Closure closure = table["addAllowedPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void startTrackingPointer(pointer, [_db98.Matrix4? transform]) {
    _36c2.Closure closure = table["startTrackingPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handlePrimaryPointer(event) {
    _36c2.Closure closure = table["handlePrimaryPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void resolve(disposition) {
    super.resolve(disposition);
    _36c2.Closure closure = table["resolve"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didExceedDeadline() {
    _36c2.Closure closure = table["didExceedDeadline"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void acceptGesture(pointer) {
    _36c2.Closure closure = table["acceptGesture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void rejectGesture(pointer) {
    _36c2.Closure closure = table["rejectGesture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleNonAllowedPointer(event) {
    _36c2.Closure closure = table["handleNonAllowedPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleEvent(event) {
    _36c2.Closure closure = table["handleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didExceedDeadlineWithEvent(event) {
    _36c2.Closure closure = table["didExceedDeadlineWithEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didStopTrackingLastPointer(pointer) {
    _36c2.Closure closure = table["didStopTrackingLastPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _02d2.GestureRecognizerState get state {
    _36c2.Closure closure = table["getState"];
    return _36c2.maybeUnBoxEnum(
        values: _02d2.GestureRecognizerState.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.int? get primaryPointer {
    _36c2.Closure closure = table["getPrimaryPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _02d2.OffsetPair? get initialPosition {
    _36c2.Closure closure = table["getInitialPosition"];
    return _36c2.maybeUnBoxAndBuildArgument<_02d2.OffsetPair?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void resolvePointer(pointer, disposition) {
    super.resolvePointer(pointer, disposition);
    _36c2.Closure closure = table["resolvePointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void stopTrackingPointer(pointer) {
    _36c2.Closure closure = table["stopTrackingPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void stopTrackingIfPointerNoLongerDown(event) {
    _36c2.Closure closure = table["stopTrackingIfPointerNoLongerDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _c0ad.GestureArenaTeam? get team {
    _36c2.Closure closure = table["getTeam"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_c0ad.GestureArenaTeam?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void set team(value) {
    _36c2.Closure closure = table["setTeam"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addPointer(event) {
    _36c2.Closure closure = table["addPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.PointerDeviceKind getKindForPointer(pointer) {
    _36c2.Closure closure = table["getKindForPointer"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.PointerDeviceKind.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  T? invokeCallback<T>(name, callback, {_fac9.String Function()? debugReport}) {
    _36c2.Closure closure = table["invokeCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = ', ',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTapGestureRecognizer(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['tapGestureRecognizer'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTapGestureRecognizer(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          debugOwner:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['debugOwner']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_1275.TapGestureRecognizer>(boxer: (
      {required _1275.TapGestureRecognizer vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTapGestureRecognizer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
