import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedParagraphConstraints extends VMManagedBox<ParagraphConstraints> {
  VMManagedParagraphConstraints(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['width'] = vmObject.width;
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

  final ParagraphConstraints vmObject;
}

class RTManagedParagraphConstraints extends ParagraphConstraints
    implements Box<ParagraphConstraints> {
  RTManagedParagraphConstraints(
      {required double width, required this.table, required this.hydroState})
      : super(width: width) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['width'] = width;
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

  ParagraphConstraints unwrap() => this;
  ParagraphConstraints get vmObject => this;
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

void loadParagraphConstraints(
    {required HydroState hydroState, required HydroTable table}) {
  table['paragraphConstraints'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedParagraphConstraints(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          width: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['width']
              : null?.toDouble())
    ];
  });
  registerBoxer<ParagraphConstraints>(boxer: (
      {required ParagraphConstraints vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedParagraphConstraints(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
