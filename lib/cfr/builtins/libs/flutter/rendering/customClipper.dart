import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/rendering/proxy_box.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCustomClipper extends VMManagedBox<CustomClipper<dynamic>> {
  VMManagedCustomClipper(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
    table['getClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getClip(maybeUnBoxAndBuildArgument<Size, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
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
    table['shouldReclip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldReclip(
            maybeUnBoxAndBuildArgument<CustomClipper<dynamic>, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
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

  final CustomClipper<dynamic> vmObject;
}

class RTManagedCustomClipper extends CustomClipper
    implements Box<CustomClipper> {
  RTManagedCustomClipper(
      {Listenable? reclip, required this.table, required this.hydroState})
      : super(reclip: reclip) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
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
    table['_dart_getClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        getClip(maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
            parentState: hydroState))
      ];
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
    table['_dart_shouldReclip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        shouldReclip(
            maybeUnBoxAndBuildArgument<CustomClipper<dynamic>, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
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

  CustomClipper unwrap() => this;
  CustomClipper get vmObject => this;
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
  dynamic getClip(Size size) {
    Closure closure = table["getClip"];
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
  bool shouldReclip(CustomClipper oldClipper) {
    Closure closure = table["shouldReclip"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadCustomClipper(
    {required HydroState hydroState, required HydroTable table}) {
  table['customClipper'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedCustomClipper(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          reclip: maybeUnBoxAndBuildArgument<Listenable?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['reclip']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<CustomClipper>(boxer: (
      {required CustomClipper vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCustomClipper(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
