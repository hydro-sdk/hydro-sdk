import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/gestures/events.dart' as _0e77;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPointerHoverEvent
    extends _36c2.VMManagedBox<_0e77.PointerHoverEvent> {
  VMManagedPointerHoverEvent(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['embedderId'] = vmObject.embedderId;
    table['timeStamp'] = _36c2.maybeBoxObject<_fac9.Duration>(
        object: vmObject.timeStamp,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pointer'] = vmObject.pointer;
    table['kind'] = _a643.PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
    });
    table['device'] = vmObject.device;
    table['position'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.position,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['delta'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.delta,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['transform'] = _36c2.maybeBoxObject<_db98.Matrix4?>(
        object: vmObject.transform,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['original'] = _36c2.maybeBoxObject<_0e77.PointerEvent?>(
        object: vmObject.original,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['transformed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_0e77.PointerHoverEvent>(
            object: vmObject.transformed(
                _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toStringFull'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringFull(),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_0e77.PointerHoverEvent>(
            object: vmObject.copyWith(
                buttons: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['buttons']
                    : null,
                delta: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['delta'] : null,
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
                kind: _36c2.maybeUnBoxEnum(
                    values: _a643.PointerDeviceKind.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['kind']
                        : null),
                obscured: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscured'] : null,
                orientation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['orientation'] : null?.toDouble(),
                pointer: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pointer'] : null,
                position: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['position'] : null, parentState: hydroState),
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
                timeStamp: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['timeStamp'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getLocalPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.localPosition,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getLocalDelta'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.localDelta,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDistanceMin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.distanceMin,
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
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
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _0e77.PointerHoverEvent vmObject;
}

class RTManagedPointerHoverEvent extends _0e77.PointerHoverEvent
    implements _36c2.Box<_0e77.PointerHoverEvent> {
  RTManagedPointerHoverEvent(
      {required _fac9.int buttons,
      required _a643.Offset delta,
      required _fac9.int device,
      required _fac9.double distance,
      required _fac9.double distanceMax,
      required _fac9.int embedderId,
      required _a643.PointerDeviceKind kind,
      required _fac9.bool obscured,
      required _fac9.double orientation,
      required _fac9.int pointer,
      required _a643.Offset position,
      required _fac9.double pressureMax,
      required _fac9.double pressureMin,
      required _fac9.double radiusMajor,
      required _fac9.double radiusMax,
      required _fac9.double radiusMin,
      required _fac9.double radiusMinor,
      required _fac9.double size,
      required _fac9.bool synthesized,
      required _fac9.double tilt,
      required _fac9.Duration timeStamp,
      required this.table,
      required this.hydroState})
      : super(
            buttons: buttons,
            delta: delta,
            device: device,
            distance: distance,
            distanceMax: distanceMax,
            embedderId: embedderId,
            kind: kind,
            obscured: obscured,
            orientation: orientation,
            pointer: pointer,
            position: position,
            pressureMax: pressureMax,
            pressureMin: pressureMin,
            radiusMajor: radiusMajor,
            radiusMax: radiusMax,
            radiusMin: radiusMin,
            radiusMinor: radiusMinor,
            size: size,
            synthesized: synthesized,
            tilt: tilt,
            timeStamp: timeStamp) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['embedderId'] = _36c2.maybeBoxObject(
        object: this.embedderId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['timeStamp'] = _36c2.maybeBoxObject(
        object: this.timeStamp,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pointer'] = _36c2.maybeBoxObject(
        object: this.pointer,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['kind'] = _a643.PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
    table['device'] = _36c2.maybeBoxObject(
        object: this.device, hydroState: hydroState, table: _36c2.HydroTable());
    table['position'] = _36c2.maybeBoxObject(
        object: this.position,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['delta'] = _36c2.maybeBoxObject(
        object: this.delta, hydroState: hydroState, table: _36c2.HydroTable());
    table['buttons'] = _36c2.maybeBoxObject(
        object: this.buttons,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['down'] = _36c2.maybeBoxObject(
        object: down, hydroState: hydroState, table: _36c2.HydroTable());
    table['obscured'] = _36c2.maybeBoxObject(
        object: this.obscured,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pressure'] = _36c2.maybeBoxObject(
        object: pressure, hydroState: hydroState, table: _36c2.HydroTable());
    table['pressureMin'] = _36c2.maybeBoxObject(
        object: this.pressureMin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pressureMax'] = _36c2.maybeBoxObject(
        object: this.pressureMax,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['distance'] = _36c2.maybeBoxObject(
        object: this.distance,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['distanceMax'] = _36c2.maybeBoxObject(
        object: this.distanceMax,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['size'] = _36c2.maybeBoxObject(
        object: this.size, hydroState: hydroState, table: _36c2.HydroTable());
    table['radiusMajor'] = _36c2.maybeBoxObject(
        object: this.radiusMajor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['radiusMinor'] = _36c2.maybeBoxObject(
        object: this.radiusMinor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['radiusMin'] = _36c2.maybeBoxObject(
        object: this.radiusMin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['radiusMax'] = _36c2.maybeBoxObject(
        object: this.radiusMax,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['orientation'] = _36c2.maybeBoxObject(
        object: this.orientation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tilt'] = _36c2.maybeBoxObject(
        object: this.tilt, hydroState: hydroState, table: _36c2.HydroTable());
    table['platformData'] = _36c2.maybeBoxObject(
        object: platformData,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['synthesized'] = _36c2.maybeBoxObject(
        object: this.synthesized,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['transform'] = _36c2.maybeBoxObject(
        object: transform, hydroState: hydroState, table: _36c2.HydroTable());
    table['original'] = _36c2.maybeBoxObject(
        object: original, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_transformed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.transformed(
                _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_toStringFull'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringFull(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                buttons: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['buttons']
                        : null,
                    parentState: hydroState),
                delta: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['delta'] : null,
                        parentState: hydroState),
                device: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['device'] : null,
                    parentState: hydroState),
                distance: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['distance'] : null, parentState: hydroState),
                distanceMax: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['distanceMax'] : null, parentState: hydroState),
                embedderId: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['embedderId'] : null, parentState: hydroState),
                kind: _36c2.maybeUnBoxEnum(values: _a643.PointerDeviceKind.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['kind'] : null),
                obscured: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscured'] : null, parentState: hydroState),
                orientation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['orientation'] : null, parentState: hydroState),
                pointer: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pointer'] : null, parentState: hydroState),
                position: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['position'] : null, parentState: hydroState),
                pressure: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressure'] : null, parentState: hydroState),
                pressureMax: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMax'] : null, parentState: hydroState),
                pressureMin: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMin'] : null, parentState: hydroState),
                radiusMajor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMajor'] : null, parentState: hydroState),
                radiusMax: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMax'] : null, parentState: hydroState),
                radiusMin: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMin'] : null, parentState: hydroState),
                radiusMinor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMinor'] : null, parentState: hydroState),
                size: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['size'] : null, parentState: hydroState),
                synthesized: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['synthesized'] : null, parentState: hydroState),
                tilt: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tilt'] : null, parentState: hydroState),
                timeStamp: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['timeStamp'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getLocalPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.localPosition];
    });
    table['_dart_getLocalDelta'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.localDelta];
    });
    table['_dart_getDistanceMin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.distanceMin];
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0e77.PointerHoverEvent unwrap() => this;
  _0e77.PointerHoverEvent get vmObject => this;
  @_fac9.override
  _0e77.PointerHoverEvent transformed(transform) {
    _36c2.Closure closure = table["transformed"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_0e77.PointerHoverEvent, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringFull() {
    _36c2.Closure closure = table["toStringFull"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _0e77.PointerHoverEvent copyWith(
      {_fac9.int? buttons,
      _a643.Offset? delta,
      _fac9.int? device,
      _fac9.double? distance,
      _fac9.double? distanceMax,
      _fac9.int? embedderId,
      _a643.PointerDeviceKind? kind,
      _fac9.bool? obscured,
      _fac9.double? orientation,
      _fac9.int? pointer,
      _a643.Offset? position,
      _fac9.double? pressure,
      _fac9.double? pressureMax,
      _fac9.double? pressureMin,
      _fac9.double? radiusMajor,
      _fac9.double? radiusMax,
      _fac9.double? radiusMin,
      _fac9.double? radiusMinor,
      _fac9.double? size,
      _fac9.bool? synthesized,
      _fac9.double? tilt,
      _fac9.Duration? timeStamp}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_0e77.PointerHoverEvent, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _a643.Offset get localPosition {
    _36c2.Closure closure = table["getLocalPosition"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Offset get localDelta {
    _36c2.Closure closure = table["getLocalDelta"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double get distanceMin {
    _36c2.Closure closure = table["getDistanceMin"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
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
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPointerHoverEvent(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['pointerHoverEvent'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPointerHoverEvent(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          buttons: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttons']
              : null,
          delta: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
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
          kind: _36c2.maybeUnBoxEnum(
              values: _a643.PointerDeviceKind.values,
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
          position: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['position'] : null,
              parentState: hydroState),
          pressureMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMax'] : null?.toDouble(),
          pressureMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressureMin'] : null?.toDouble(),
          radiusMajor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMajor'] : null?.toDouble(),
          radiusMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMax'] : null?.toDouble(),
          radiusMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMin'] : null?.toDouble(),
          radiusMinor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radiusMinor'] : null?.toDouble(),
          size: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['size'] : null?.toDouble(),
          synthesized: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['synthesized'] : null,
          tilt: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tilt'] : null?.toDouble(),
          timeStamp: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['timeStamp'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_0e77.PointerHoverEvent>(boxer: (
      {required _0e77.PointerHoverEvent vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPointerHoverEvent(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
