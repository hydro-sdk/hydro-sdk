import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTextHeightBehavior extends VMManagedBox<TextHeightBehavior> {
  VMManagedTextHeightBehavior(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['applyHeightToFirstAscent'] = vmObject.applyHeightToFirstAscent;
    table['applyHeightToLastDescent'] = vmObject.applyHeightToLastDescent;
    table['encode'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.encode(),
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

  final TextHeightBehavior vmObject;
}

class RTManagedTextHeightBehavior extends TextHeightBehavior
    implements Box<TextHeightBehavior> {
  RTManagedTextHeightBehavior(
      {required bool applyHeightToFirstAscent,
      required bool applyHeightToLastDescent,
      required this.table,
      required this.hydroState})
      : super(
            applyHeightToFirstAscent: applyHeightToFirstAscent,
            applyHeightToLastDescent: applyHeightToLastDescent) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['applyHeightToFirstAscent'] = applyHeightToFirstAscent;
    table['applyHeightToLastDescent'] = applyHeightToLastDescent;
    table['_dart_encode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.encode()];
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

  TextHeightBehavior unwrap() => this;
  TextHeightBehavior get vmObject => this;
  @override
  int encode() {
    Closure closure = table["encode"];
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

void loadTextHeightBehavior(
    {required HydroState hydroState, required HydroTable table}) {
  table['textHeightBehavior'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTextHeightBehavior(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          applyHeightToFirstAscent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['applyHeightToFirstAscent']
              : null,
          applyHeightToLastDescent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['applyHeightToLastDescent']
              : null)
    ];
  });
  table['textHeightBehaviorFromEncoded'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TextHeightBehavior>(
          object: TextHeightBehavior.fromEncoded(luaCallerArguments[1]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<TextHeightBehavior>(boxer: (
      {required TextHeightBehavior vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextHeightBehavior(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
