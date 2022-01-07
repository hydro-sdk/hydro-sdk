import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/table.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTableCellParentData extends VMManagedBox<TableCellParentData> {
  VMManagedTableCellParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['verticalAlignment'] =
        TableCellVerticalAlignment.values.indexWhere((x) {
      return x == vmObject.verticalAlignment;
    });
    table['x'] = vmObject.x;
    table['y'] = vmObject.y;
    table['offset'] = maybeBoxObject<Offset>(
        object: vmObject.offset, hydroState: hydroState, table: HydroTable());
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

  final TableCellParentData vmObject;
}

class RTManagedTableCellParentData extends TableCellParentData
    implements Box<TableCellParentData> {
  RTManagedTableCellParentData({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['verticalAlignment'] =
        TableCellVerticalAlignment.values.indexWhere((x) {
      return x == verticalAlignment;
    });
    table['x'] = x;
    table['y'] = y;
    table['offset'] = maybeBoxObject<Offset>(
        object: offset, hydroState: hydroState, table: HydroTable());
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  TableCellParentData unwrap() => this;
  TableCellParentData get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void detach() {
    super.detach();
    Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTableCellParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['tableCellParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTableCellParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<TableCellParentData>(boxer: (
      {required TableCellParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTableCellParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
