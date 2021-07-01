import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedPathMetricIterator extends VMManagedBox<PathMetricIterator> {
  VMManagedPathMetricIterator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getCurrent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PathMetric>(
            object: vmObject.current,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['moveNext'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.moveNext(),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PathMetricIterator vmObject;
}

void loadPathMetricIterator(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<PathMetricIterator>(boxer: (
      {required PathMetricIterator vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPathMetricIterator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
