import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedLocale extends VMManagedBox<Locale> {
  VMManagedLocale(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['scriptCode'] = vmObject.scriptCode;
    table['getLanguageCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.languageCode];
    });
    table['getCountryCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.countryCode];
    });
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table['toLanguageTag'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toLanguageTag()];
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['scriptCode'] = scriptCode;
    table['_dart_getLanguageCode'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.languageCode];
    });
    table['_dart_getCountryCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.countryCode];
    });
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
    table['_dart_toLanguageTag'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
  table['locale'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedLocale(args[1], args[2], table: args[0], hydroState: hydroState)
    ];
  });
  table['localeFromSubtags'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Locale>(
          object: Locale.fromSubtags(
              countryCode: args[1]['countryCode'],
              languageCode: args[1]['languageCode'],
              scriptCode: args[1]['scriptCode']),
          hydroState: hydroState,
          table: HydroTable())
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
