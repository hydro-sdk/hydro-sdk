import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/rendering/proxy_box.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedShapeBorderClipper extends VMManagedBox<ShapeBorderClipper> {
  VMManagedShapeBorderClipper(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['shape'] = maybeBoxObject<ShapeBorder>(
        object: vmObject.shape, hydroState: hydroState, table: HydroTable());
    table['textDirection'] = TextDirection.values.indexWhere((x) {
      return x == vmObject.textDirection;
    });
    table['getClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Path>(
            object: vmObject.getClip(maybeUnBoxAndBuildArgument<Size, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['shouldReclip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldReclip(
            maybeUnBoxAndBuildArgument<CustomClipper<Path>, Path>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['addListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['getApproximateClipRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.getApproximateClipRect(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ShapeBorderClipper vmObject;
}

class RTManagedShapeBorderClipper extends ShapeBorderClipper
    implements Box<ShapeBorderClipper> {
  RTManagedShapeBorderClipper(
      {TextDirection? textDirection,
      required ShapeBorder shape,
      required this.table,
      required this.hydroState})
      : super(textDirection: textDirection, shape: shape) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['shape'] = maybeBoxObject<ShapeBorder>(
        object: this.shape, hydroState: hydroState, table: HydroTable());
    table['textDirection'] = TextDirection.values.indexWhere((x) {
      return x == this.textDirection;
    });
    table['_dart_getClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Path>(
            object: super.getClip(maybeUnBoxAndBuildArgument<Size, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_shouldReclip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.shouldReclip(
            maybeUnBoxAndBuildArgument<CustomClipper<Path>, Path>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_addListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_getApproximateClipRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: super.getApproximateClipRect(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ShapeBorderClipper unwrap() => this;
  ShapeBorderClipper get vmObject => this;
  @override
  Path getClip(Size size) {
    Closure closure = table["getClip"];
    return maybeUnBoxAndBuildArgument<Path, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    Closure closure = table["shouldReclip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addListener(listener) {
    Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeListener(listener) {
    Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Rect getApproximateClipRect(Size size) {
    Closure closure = table["getApproximateClipRect"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

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

void loadShapeBorderClipper(
    {required HydroState hydroState, required HydroTable table}) {
  table['shapeBorderClipper'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedShapeBorderClipper(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          textDirection: maybeUnBoxEnum(
              values: TextDirection.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['textDirection']
                  : null),
          shape: maybeUnBoxAndBuildArgument<ShapeBorder, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['shape']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<ShapeBorderClipper>(boxer: (
      {required ShapeBorderClipper vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedShapeBorderClipper(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
