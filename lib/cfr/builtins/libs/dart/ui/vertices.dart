import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedVertices extends VMManagedBox<Vertices> {
  VMManagedVertices(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final Vertices vmObject;
}

class RTManagedVertices extends Vertices implements Box<Vertices> {
  RTManagedVertices(VertexMode mode, List<Offset> positions,
      {List? colors,
      List? indices,
      List? textureCoordinates,
      required this.table,
      required this.hydroState})
      : super(mode, positions,
            colors: colors,
            indices: indices,
            textureCoordinates: textureCoordinates) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Vertices unwrap() => this;
  Vertices get vmObject => this;
}

void loadVertices({required HydroState hydroState, required HydroTable table}) {
  table['vertices'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedVertices(
          maybeUnBoxEnum(values: VertexMode.values, boxedEnum: args[1]),
          maybeUnBoxAndBuildArgument<List<Offset>>(args[2],
              parentState: hydroState),
          table: args[0],
          hydroState: hydroState,
          colors: maybeUnBoxAndBuildArgument<List<Color>?>(args[3]['colors'],
              parentState: hydroState),
          indices: maybeUnBoxAndBuildArgument<List<int>?>(args[3]['indices'],
              parentState: hydroState),
          textureCoordinates: maybeUnBoxAndBuildArgument<List<Offset>?>(
              args[3]['textureCoordinates'],
              parentState: hydroState))
    ];
  });
  table['verticesRaw'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Vertices>(
          object: Vertices.raw(
              maybeUnBoxEnum(values: VertexMode.values, boxedEnum: args[1]),
              maybeUnBoxAndBuildArgument<Float32List>(args[2],
                  parentState: hydroState),
              colors: maybeUnBoxAndBuildArgument<Int32List?>(args[3]['colors'],
                  parentState: hydroState),
              indices: maybeUnBoxAndBuildArgument<Uint16List?>(
                  args[3]['indices'],
                  parentState: hydroState),
              textureCoordinates: maybeUnBoxAndBuildArgument<Float32List?>(
                  args[3]['textureCoordinates'],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Vertices>(boxer: (
      {required Vertices vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedVertices(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
