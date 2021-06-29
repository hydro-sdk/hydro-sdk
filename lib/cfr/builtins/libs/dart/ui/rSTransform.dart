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
    table['getScos'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.scos];
    });
    table['getSsin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.ssin];
    });
    table['getTx'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.tx];
    });
    table['getTy'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getScos'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scos];
    });
    table['_dart_getSsin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.ssin];
    });
    table['_dart_getTx'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.tx];
    });
    table['_dart_getTy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
  table['rSTransform'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedRSTransform(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  table['rSTransformFromComponents'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<RSTransform>(
          object: RSTransform.fromComponents(
              anchorX: luaCallerArguments[1]['anchorX']?.toDouble(),
              anchorY: luaCallerArguments[1]['anchorY']?.toDouble(),
              rotation: luaCallerArguments[1]['rotation']?.toDouble(),
              scale: luaCallerArguments[1]['scale']?.toDouble(),
              translateX: luaCallerArguments[1]['translateX']?.toDouble(),
              translateY: luaCallerArguments[1]['translateY']?.toDouble()),
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
