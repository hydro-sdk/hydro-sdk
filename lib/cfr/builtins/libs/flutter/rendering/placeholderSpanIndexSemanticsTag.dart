import 'dart:core';

import 'package:flutter/src/rendering/paragraph.dart';
import 'package:flutter/src/semantics/semantics.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPlaceholderSpanIndexSemanticsTag
    extends VMManagedBox<PlaceholderSpanIndexSemanticsTag> {
  VMManagedPlaceholderSpanIndexSemanticsTag(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['index'] = vmObject.index;
    table['name'] = vmObject.name;
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

  final PlaceholderSpanIndexSemanticsTag vmObject;
}

class RTManagedPlaceholderSpanIndexSemanticsTag
    extends PlaceholderSpanIndexSemanticsTag
    implements Box<PlaceholderSpanIndexSemanticsTag> {
  RTManagedPlaceholderSpanIndexSemanticsTag(int index$,
      {required this.table, required this.hydroState})
      : super(
          index$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['index'] = this.index;
    table['name'] = name;
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

  PlaceholderSpanIndexSemanticsTag unwrap() => this;
  PlaceholderSpanIndexSemanticsTag get vmObject => this;
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

void loadPlaceholderSpanIndexSemanticsTag(
    {required HydroState hydroState, required HydroTable table}) {
  table['placeholderSpanIndexSemanticsTag'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPlaceholderSpanIndexSemanticsTag(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<PlaceholderSpanIndexSemanticsTag>(boxer: (
      {required PlaceholderSpanIndexSemanticsTag vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPlaceholderSpanIndexSemanticsTag(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
