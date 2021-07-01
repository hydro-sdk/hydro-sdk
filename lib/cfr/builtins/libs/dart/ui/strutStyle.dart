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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final StrutStyle vmObject;
}

class RTManagedStrutStyle extends StrutStyle implements Box<StrutStyle> {
  RTManagedStrutStyle(
      {String? fontFamily,
      List<String>? fontFamilyFallback,
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
  table['strutStyle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedStrutStyle(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          fontFamily: luaCallerArguments[1]['fontFamily'],
          fontFamilyFallback: maybeUnBoxAndBuildArgument<List<String>?>(
              luaCallerArguments[1]['fontFamilyFallback'],
              parentState: hydroState),
          fontSize: luaCallerArguments[1]['fontSize']?.toDouble(),
          fontStyle: maybeUnBoxEnum(
              values: FontStyle.values,
              boxedEnum: luaCallerArguments[1]['fontStyle']),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight?>(
              luaCallerArguments[1]['fontWeight'],
              parentState: hydroState),
          forceStrutHeight: luaCallerArguments[1]['forceStrutHeight'],
          height: luaCallerArguments[1]['height']?.toDouble(),
          leading: luaCallerArguments[1]['leading']?.toDouble())
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
