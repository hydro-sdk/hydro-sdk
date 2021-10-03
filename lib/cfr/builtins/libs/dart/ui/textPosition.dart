import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTextPosition extends VMManagedBox<TextPosition> {
  VMManagedTextPosition(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['offset'] = vmObject.offset;
    table['affinity'] = TextAffinity.values.indexWhere((x) {
      return x == vmObject.affinity;
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

  final TextPosition vmObject;
}

class RTManagedTextPosition extends TextPosition implements Box<TextPosition> {
  RTManagedTextPosition(
      {required TextAffinity affinity,
      required int offset,
      required this.table,
      required this.hydroState})
      : super(affinity: affinity, offset: offset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['offset'] = offset;
    table['affinity'] = TextAffinity.values.indexWhere((x) {
      return x == affinity;
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

  TextPosition unwrap() => this;
  TextPosition get vmObject => this;
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

void loadTextPosition(
    {required HydroState hydroState, required HydroTable table}) {
  table['textPosition'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTextPosition(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          affinity: maybeUnBoxEnum(
              values: TextAffinity.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['affinity']
                  : null),
          offset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['offset']
              : null)
    ];
  });
  registerBoxer<TextPosition>(boxer: (
      {required TextPosition vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextPosition(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
