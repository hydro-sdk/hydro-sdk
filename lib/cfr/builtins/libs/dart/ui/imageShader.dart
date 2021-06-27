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

class VMManagedImageShader extends VMManagedBox<ImageShader> {
  VMManagedImageShader(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ImageShader vmObject;
}

class RTManagedImageShader extends ImageShader implements Box<ImageShader> {
  RTManagedImageShader(
      Image image, TileMode tmx, TileMode tmy, Float64List matrix4,
      {required this.table, required this.hydroState})
      : super(
          image,
          tmx,
          tmy,
          matrix4,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ImageShader unwrap() => this;
  ImageShader get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadImageShader(
    {required HydroState hydroState, required HydroTable table}) {
  table['imageShader'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedImageShader(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxEnum(values: TileMode.values, boxedEnum: args[2]),
          maybeUnBoxEnum(values: TileMode.values, boxedEnum: args[3]),
          maybeUnBoxAndBuildArgument<Float64List>(args[4],
              parentState: hydroState),
          table: args[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<ImageShader>(boxer: (
      {required ImageShader vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedImageShader(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
