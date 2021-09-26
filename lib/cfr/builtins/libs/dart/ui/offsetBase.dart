import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedOffsetBase extends VMManagedBox<OffsetBase> {
  VMManagedOffsetBase(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getIsInfinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isInfinite,
      ];
    });
    table['getIsFinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isFinite,
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

  final OffsetBase vmObject;
}

class RTManagedOffsetBase extends OffsetBase implements Box<OffsetBase> {
  RTManagedOffsetBase(double _dx, double _dy,
      {required this.table, required this.hydroState})
      : super(
          _dx,
          _dy,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getIsInfinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isInfinite];
    });
    table['_dart_getIsFinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isFinite];
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

  OffsetBase unwrap() => this;
  OffsetBase get vmObject => this;
  @override
  bool get isInfinite {
    Closure closure = table["getIsInfinite"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isFinite {
    Closure closure = table["getIsFinite"];
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

void loadOffsetBase(
    {required HydroState hydroState, required HydroTable table}) {
  table['offsetBase'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedOffsetBase(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble(),
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<OffsetBase>(boxer: (
      {required OffsetBase vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedOffsetBase(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
