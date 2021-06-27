import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedRSTransform extends VMManagedBox<RSTransform> {
  VMManagedRSTransform(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getScos'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.scos];
    });
    table['getSsin'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.ssin];
    });
    table['getTx'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.tx];
    });
    table['getTy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.ty];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RSTransform vmObject;
}

class RTManagedRSTransform extends RSTransform implements Box<RSTransform> {
  RTManagedRSTransform(double scos, double ssin, double tx, double ty,
      {required this.table, required this.hydroState})
      : super(
          scos,
          ssin,
          tx,
          ty,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_getScos'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.scos];
    });
    table['_dart_getSsin'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.ssin];
    });
    table['_dart_getTx'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.tx];
    });
    table['_dart_getTy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.ty];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  RSTransform unwrap() => this;
  RSTransform get vmObject => this;
  @override
  double get scos {
    Closure closure = table["getScos"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double get ssin {
    Closure closure = table["getSsin"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double get tx {
    Closure closure = table["getTx"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double get ty {
    Closure closure = table["getTy"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }
}

void loadRSTransform(
    {required HydroState hydroState, required HydroTable table}) {
  table['rSTransform'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedRSTransform(args[1]?.toDouble(), args[2]?.toDouble(),
          args[3]?.toDouble(), args[4]?.toDouble(),
          table: args[0], hydroState: hydroState)
    ];
  });
  table['rSTransformFromComponents'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<RSTransform>(
          object: RSTransform.fromComponents(
              anchorX: args[1]['anchorX']?.toDouble(),
              anchorY: args[1]['anchorY']?.toDouble(),
              rotation: args[1]['rotation']?.toDouble(),
              scale: args[1]['scale']?.toDouble(),
              translateX: args[1]['translateX']?.toDouble(),
              translateY: args[1]['translateY']?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<RSTransform>(boxer: (
      {required RSTransform vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRSTransform(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
