import 'dart:convert';
import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedUriData extends VMManagedBox<UriData> {
  VMManagedUriData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getUri'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uri>(
            object: vmObject.uri, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['getMimeType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.mimeType,
      ];
    });
    table['getCharset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.charset,
      ];
    });
    table['getIsBase64'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isBase64,
      ];
    });
    table['getContentText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.contentText,
      ];
    });
    table['contentAsBytes'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uint8List>(
            object: vmObject.contentAsBytes(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['contentAsString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.contentAsString(
            encoding: maybeUnBoxAndBuildArgument<Encoding?>(
                luaCallerArguments[1]['encoding'],
                parentState: hydroState)),
      ];
    });
    table['getParameters'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.parameters,
            hydroState: hydroState,
            table: HydroTable()),
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

  final UriData vmObject;
}

void loadUriData({required HydroState hydroState, required HydroTable table}) {
  table['uriDataFromString'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<UriData>(
          object: UriData.fromString(luaCallerArguments[1],
              base64: luaCallerArguments[2]['base64'],
              encoding: maybeUnBoxAndBuildArgument<Encoding?>(
                  luaCallerArguments[2]['encoding'],
                  parentState: hydroState),
              mimeType: luaCallerArguments[2]['mimeType'],
              parameters: maybeUnBoxAndBuildArgument<Map<String, String>?>(
                  luaCallerArguments[2]['parameters'],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriDataFromBytes'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<UriData>(
          object: UriData.fromBytes(
              maybeUnBoxAndBuildArgument<List<int>>(luaCallerArguments[1],
                  parentState: hydroState),
              mimeType: luaCallerArguments[2]['mimeType'],
              parameters: maybeUnBoxAndBuildArgument<Map<String, String>?>(
                  luaCallerArguments[2]['parameters'],
                  parentState: hydroState),
              percentEncoded: luaCallerArguments[2]['percentEncoded']),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriDataFromUri'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<UriData>(
          object: UriData.fromUri(maybeUnBoxAndBuildArgument<Uri>(
              luaCallerArguments[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriDataParse'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<UriData>(
          object: UriData.parse(luaCallerArguments[1]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<UriData>(boxer: (
      {required UriData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedUriData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
