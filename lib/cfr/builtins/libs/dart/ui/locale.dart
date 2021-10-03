import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLocale extends VMManagedBox<Locale> {
  VMManagedLocale(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['scriptCode'] = vmObject.scriptCode;
    table['getLanguageCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.languageCode,
      ];
    });
    table['getCountryCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.countryCode;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['toLanguageTag'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toLanguageTag(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Locale vmObject;
}

class RTManagedLocale extends Locale implements Box<Locale> {
  RTManagedLocale(String _languageCode, String? _countryCode,
      {required this.table, required this.hydroState})
      : super(
          _languageCode,
          _countryCode,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['scriptCode'] = scriptCode;
    table['_dart_getLanguageCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.languageCode];
    });
    table['_dart_getCountryCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.countryCode];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_toLanguageTag'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toLanguageTag()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Locale unwrap() => this;
  Locale get vmObject => this;
  @override
  String get languageCode {
    Closure closure = table["getLanguageCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String? get countryCode {
    Closure closure = table["getCountryCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

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

  @override
  String toLanguageTag() {
    Closure closure = table["toLanguageTag"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadLocale({required HydroState hydroState, required HydroTable table}) {
  table['locale'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLocale(luaCallerArguments[1], luaCallerArguments[2],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['localeFromSubtags'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Locale>(
          object: Locale.fromSubtags(
              countryCode: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['countryCode']
                  : null,
              languageCode: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['languageCode']
                  : null,
              scriptCode: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['scriptCode']
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Locale>(boxer: (
      {required Locale vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLocale(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
