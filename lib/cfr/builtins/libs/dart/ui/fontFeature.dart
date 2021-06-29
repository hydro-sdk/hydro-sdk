import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedFontFeature extends VMManagedBox<FontFeature> {
  VMManagedFontFeature(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['feature'] = vmObject.feature;
    table['value'] = vmObject.value;
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final FontFeature vmObject;
}

class RTManagedFontFeature extends FontFeature implements Box<FontFeature> {
  RTManagedFontFeature(String feature, int value,
      {required this.table, required this.hydroState})
      : super(
          feature,
          value,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['feature'] = feature;
    table['value'] = value;
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  FontFeature unwrap() => this;
  FontFeature get vmObject => this;
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

void loadFontFeature(
    {required HydroState hydroState, required HydroTable table}) {
  table['fontFeature'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedFontFeature(args[1], args[2],
          table: args[0], hydroState: hydroState)
    ];
  });
  table['fontFeatureEnable'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<FontFeature>(
          object: FontFeature.enable(args[1]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['fontFeatureDisable'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<FontFeature>(
          object: FontFeature.disable(args[1]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['fontFeatureRandomize'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<FontFeature>(
          object: FontFeature.randomize(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['fontFeatureStylisticSet'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<FontFeature>(
          object: FontFeature.stylisticSet(args[1]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['fontFeatureSlashedZero'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<FontFeature>(
          object: FontFeature.slashedZero(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['fontFeatureOldstyleFigures'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<FontFeature>(
          object: FontFeature.oldstyleFigures(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['fontFeatureProportionalFigures'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<FontFeature>(
          object: FontFeature.proportionalFigures(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['fontFeatureTabularFigures'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<FontFeature>(
          object: FontFeature.tabularFigures(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<FontFeature>(boxer: (
      {required FontFeature vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFontFeature(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
