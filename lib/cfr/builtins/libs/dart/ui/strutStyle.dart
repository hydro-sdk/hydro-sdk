import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

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
          fontFamily: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['fontFamily']
              : null,
          fontFamilyFallback: maybeUnBoxAndBuildArgument<List<String>?, String>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['fontFamilyFallback']
                  : null,
              parentState: hydroState),
          fontSize: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['fontSize']
              : null?.toDouble(),
          fontStyle: maybeUnBoxEnum(
              values: FontStyle.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['fontStyle']
                  : null),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['fontWeight']
                  : null,
              parentState: hydroState),
          forceStrutHeight: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['forceStrutHeight']
              : null,
          height: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['height']
              : null?.toDouble(),
          leading: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['leading']
              : null?.toDouble())
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
