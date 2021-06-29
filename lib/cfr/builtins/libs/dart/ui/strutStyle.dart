import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedStrutStyle extends VMManagedBox<StrutStyle> {
  VMManagedStrutStyle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final StrutStyle vmObject;
}

class RTManagedStrutStyle extends StrutStyle implements Box<StrutStyle> {
  RTManagedStrutStyle(
      {String? fontFamily,
      List? fontFamilyFallback,
      double? fontSize,
      FontStyle? fontStyle,
      FontWeight? fontWeight,
      bool? forceStrutHeight,
      double? height,
      double? leading,
      required this.table,
      required this.hydroState})
      : super(
            fontFamily: fontFamily,
            fontFamilyFallback: fontFamilyFallback,
            fontSize: fontSize,
            fontStyle: fontStyle,
            fontWeight: fontWeight,
            forceStrutHeight: forceStrutHeight,
            height: height,
            leading: leading) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  StrutStyle unwrap() => this;
  StrutStyle get vmObject => this;
  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadStrutStyle(
    {required HydroState hydroState, required HydroTable table}) {
  table['strutStyle'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedStrutStyle(
          table: args[0],
          hydroState: hydroState,
          fontFamily: args[1]['fontFamily'],
          fontFamilyFallback: maybeUnBoxAndBuildArgument<List<String>?>(
              args[1]['fontFamilyFallback'],
              parentState: hydroState),
          fontSize: args[1]['fontSize']?.toDouble(),
          fontStyle: maybeUnBoxEnum(
              values: FontStyle.values, boxedEnum: args[1]['fontStyle']),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight?>(
              args[1]['fontWeight'],
              parentState: hydroState),
          forceStrutHeight: args[1]['forceStrutHeight'],
          height: args[1]['height']?.toDouble(),
          leading: args[1]['leading']?.toDouble())
    ];
  });
  registerBoxer<StrutStyle>(boxer: (
      {required StrutStyle vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStrutStyle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
