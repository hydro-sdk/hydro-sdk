import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

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
    table['getIsValid'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isValid];
    });
    table['getIsCollapsed'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isCollapsed];
    });
    table['getIsNormalized'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isNormalized];
    });
    table['textBefore'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.textBefore(args[1])];
    });
    table['textAfter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.textAfter(args[1])];
    });
    table['textInside'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.textInside(args[1])];
    });
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['start'] = start;
    table['end'] = end;
    table['_dart_getIsValid'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isValid];
    });
    table['_dart_getIsCollapsed'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isCollapsed];
    });
    table['_dart_getIsNormalized'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isNormalized];
    });
    table['_dart_textBefore'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.textBefore(args[1])];
    });
    table['_dart_textAfter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.textAfter(args[1])];
    });
    table['_dart_textInside'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.textInside(args[1])];
    });
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
  table['textRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedTextRange(
          table: args[0],
          hydroState: hydroState,
          end: args[1]['end'],
          start: args[1]['start'])
    ];
  });
  table['textRangeCollapsed'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<TextRange>(
          object: TextRange.collapsed(args[1]),
          hydroState: hydroState,
          table: HydroTable())
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
