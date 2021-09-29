import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTextRange extends VMManagedBox<TextRange> {
  VMManagedTextRange(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['start'] = vmObject.start;
    table['end'] = vmObject.end;
    table['getIsValid'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isValid,
      ];
    });
    table['getIsCollapsed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isCollapsed,
      ];
    });
    table['getIsNormalized'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isNormalized,
      ];
    });
    table['textBefore'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.textBefore(luaCallerArguments[1]),
      ];
    });
    table['textAfter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.textAfter(luaCallerArguments[1]),
      ];
    });
    table['textInside'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.textInside(luaCallerArguments[1]),
      ];
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
  }

  final HydroTable table;

  final HydroState hydroState;

  final TextRange vmObject;
}

class RTManagedTextRange extends TextRange implements Box<TextRange> {
  RTManagedTextRange(
      {required int end,
      required int start,
      required this.table,
      required this.hydroState})
      : super(end: end, start: start) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['start'] = start;
    table['end'] = end;
    table['_dart_getIsValid'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isValid];
    });
    table['_dart_getIsCollapsed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isCollapsed];
    });
    table['_dart_getIsNormalized'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isNormalized];
    });
    table['_dart_textBefore'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textBefore(luaCallerArguments[1])];
    });
    table['_dart_textAfter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textAfter(luaCallerArguments[1])];
    });
    table['_dart_textInside'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textInside(luaCallerArguments[1])];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  TextRange unwrap() => this;
  TextRange get vmObject => this;
  @override
  bool get isValid {
    Closure closure = table["getIsValid"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isCollapsed {
    Closure closure = table["getIsCollapsed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isNormalized {
    Closure closure = table["getIsNormalized"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String textBefore(String text) {
    Closure closure = table["textBefore"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String textAfter(String text) {
    Closure closure = table["textAfter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String textInside(String text) {
    Closure closure = table["textInside"];
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
}

void loadTextRange(
    {required HydroState hydroState, required HydroTable table}) {
  table['textRange'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTextRange(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          end: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['end']
              : null,
          start: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['start']
              : null)
    ];
  });
  table['textRangeCollapsed'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TextRange>(
          object: TextRange.collapsed(luaCallerArguments[1]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<TextRange>(boxer: (
      {required TextRange vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextRange(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
