import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/rendering/table_border.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTableBorder extends VMManagedBox<TableBorder> {
  VMManagedTableBorder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['top'] = maybeBoxObject<BorderSide>(
        object: vmObject.top, hydroState: hydroState, table: HydroTable());
    table['right'] = maybeBoxObject<BorderSide>(
        object: vmObject.right, hydroState: hydroState, table: HydroTable());
    table['bottom'] = maybeBoxObject<BorderSide>(
        object: vmObject.bottom, hydroState: hydroState, table: HydroTable());
    table['left'] = maybeBoxObject<BorderSide>(
        object: vmObject.left, hydroState: hydroState, table: HydroTable());
    table['horizontalInside'] = maybeBoxObject<BorderSide>(
        object: vmObject.horizontalInside,
        hydroState: hydroState,
        table: HydroTable());
    table['verticalInside'] = maybeBoxObject<BorderSide>(
        object: vmObject.verticalInside,
        hydroState: hydroState,
        table: HydroTable());
    table['getDimensions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<EdgeInsets>(
            object: vmObject.dimensions,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getIsUniform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isUniform,
      ];
    });
    table['scale'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<TableBorder>(
            object: vmObject.scale(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['paint'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paint(
          maybeUnBoxAndBuildArgument<Canvas, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          columns: maybeUnBoxAndBuildArgument<Iterable<double>, double>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['columns']
                  : null,
              parentState: hydroState),
          rows: maybeUnBoxAndBuildArgument<Iterable<double>, double>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['rows']
                  : null,
              parentState: hydroState));
      return [];
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

  final TableBorder vmObject;
}

class RTManagedTableBorder extends TableBorder implements Box<TableBorder> {
  RTManagedTableBorder(
      {required BorderSide bottom,
      required BorderSide horizontalInside,
      required BorderSide left,
      required BorderSide right,
      required BorderSide top,
      required BorderSide verticalInside,
      required this.table,
      required this.hydroState})
      : super(
            bottom: bottom,
            horizontalInside: horizontalInside,
            left: left,
            right: right,
            top: top,
            verticalInside: verticalInside) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['top'] = maybeBoxObject<BorderSide>(
        object: this.top, hydroState: hydroState, table: HydroTable());
    table['right'] = maybeBoxObject<BorderSide>(
        object: this.right, hydroState: hydroState, table: HydroTable());
    table['bottom'] = maybeBoxObject<BorderSide>(
        object: this.bottom, hydroState: hydroState, table: HydroTable());
    table['left'] = maybeBoxObject<BorderSide>(
        object: this.left, hydroState: hydroState, table: HydroTable());
    table['horizontalInside'] = maybeBoxObject<BorderSide>(
        object: this.horizontalInside,
        hydroState: hydroState,
        table: HydroTable());
    table['verticalInside'] = maybeBoxObject<BorderSide>(
        object: this.verticalInside,
        hydroState: hydroState,
        table: HydroTable());
    table['_dart_getDimensions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.dimensions];
    });
    table['_dart_getIsUniform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isUniform];
    });
    table['_dart_scale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<TableBorder>(
            object: super.scale(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_paint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.paint(
          maybeUnBoxAndBuildArgument<Canvas, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          columns: maybeUnBoxAndBuildArgument<Iterable<double>, double>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['columns']
                  : null,
              parentState: hydroState),
          rows: maybeUnBoxAndBuildArgument<Iterable<double>, double>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['rows']
                  : null,
              parentState: hydroState));
      return [];
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

  TableBorder unwrap() => this;
  TableBorder get vmObject => this;
  @override
  EdgeInsets get dimensions {
    Closure closure = table["getDimensions"];
    return maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get isUniform {
    Closure closure = table["getIsUniform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TableBorder scale(double t) {
    Closure closure = table["scale"];
    return maybeUnBoxAndBuildArgument<TableBorder, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void paint(Canvas canvas, Rect rect,
      {required Iterable columns, required Iterable rows}) {
    Closure closure = table["paint"];
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

void loadTableBorder(
    {required HydroState hydroState, required HydroTable table}) {
  table['tableBorder'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTableBorder(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          bottom: maybeUnBoxAndBuildArgument<BorderSide, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['bottom']
                  : null,
              parentState: hydroState),
          horizontalInside: maybeUnBoxAndBuildArgument<BorderSide, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['horizontalInside']
                  : null,
              parentState: hydroState),
          left:
              maybeUnBoxAndBuildArgument<BorderSide, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['left'] : null,
                  parentState: hydroState),
          right: maybeUnBoxAndBuildArgument<BorderSide, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['right'] : null,
              parentState: hydroState),
          top: maybeUnBoxAndBuildArgument<BorderSide, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['top'] : null, parentState: hydroState),
          verticalInside: maybeUnBoxAndBuildArgument<BorderSide, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['verticalInside'] : null, parentState: hydroState))
    ];
  });
  table['tableBorderAll'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TableBorder>(
          object: TableBorder.all(
              color: maybeUnBoxAndBuildArgument<Color, dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['color']
                      : null,
                  parentState: hydroState),
              style: maybeUnBoxEnum(
                  values: BorderStyle.values,
                  boxedEnum: luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['style']
                      : null),
              width: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['width']
                  : null?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['tableBorderSymmetric'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TableBorder>(
          object: TableBorder.symmetric(
              inside: maybeUnBoxAndBuildArgument<BorderSide, dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['inside']
                      : null,
                  parentState: hydroState),
              outside: maybeUnBoxAndBuildArgument<BorderSide, dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['outside']
                      : null,
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['tableBorderLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = TableBorder.lerp(
        maybeUnBoxAndBuildArgument<TableBorder?, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<TableBorder?, dynamic>(luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<TableBorder?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<TableBorder>(boxer: (
      {required TableBorder vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTableBorder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
