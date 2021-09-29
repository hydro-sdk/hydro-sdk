import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

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
      {List<Color>? colors,
      List<int>? indices,
      List<Offset>? textureCoordinates,
      required this.table,
      required this.hydroState})
      : super(mode, positions,
            colors: colors,
            indices: indices,
            textureCoordinates: textureCoordinates) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Vertices unwrap() => this;
  Vertices get vmObject => this;
}

void loadVertices({required HydroState hydroState, required HydroTable table}) {
  table['vertices'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedVertices(maybeUnBoxEnum(values: VertexMode.values, boxedEnum: luaCallerArguments[1]),
          maybeUnBoxAndBuildArgument<List<Offset>, Offset>(luaCallerArguments[2], parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          colors: maybeUnBoxAndBuildArgument<List<Color>?, Color>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['colors']
                  : null,
              parentState: hydroState),
          indices: maybeUnBoxAndBuildArgument<List<int>?, int>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['indices']
                  : null,
              parentState: hydroState),
          textureCoordinates: maybeUnBoxAndBuildArgument<List<Offset>?, Offset>(
              luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textureCoordinates'] : null,
              parentState: hydroState))
    ];
  });
  table['verticesRaw'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Vertices>(
          object: Vertices.raw(
              maybeUnBoxEnum(
                  values: VertexMode.values, boxedEnum: luaCallerArguments[1]),
              maybeUnBoxAndBuildArgument<Float32List, dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              colors: maybeUnBoxAndBuildArgument<Int32List?, dynamic>(
                  luaCallerArguments.length >= 4
                      ? luaCallerArguments[3]['colors']
                      : null,
                  parentState: hydroState),
              indices: maybeUnBoxAndBuildArgument<Uint16List?, dynamic>(
                  luaCallerArguments.length >= 4 ? luaCallerArguments[3]['indices'] : null,
                  parentState: hydroState),
              textureCoordinates: maybeUnBoxAndBuildArgument<Float32List?, dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textureCoordinates'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
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
