import 'dart:async';
import 'dart:core';

import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedViewportOffset extends VMManagedBox<ViewportOffset> {
  VMManagedViewportOffset(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getPixels'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.pixels,
      ];
    });
    table['getHasPixels'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasPixels,
      ];
    });
    table['applyViewportDimension'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.applyViewportDimension(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['applyContentDimensions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.applyContentDimensions(luaCallerArguments[1]?.toDouble(),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['correctBy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.correctBy(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['jumpTo'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.jumpTo(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['animateTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.animateTo(luaCallerArguments[1]?.toDouble(),
                curve: maybeUnBoxAndBuildArgument<Curve, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['curve']
                        : null,
                    parentState: hydroState),
                duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['duration']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['moveTo'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.moveTo(luaCallerArguments[1]?.toDouble(),
                clamp: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['clamp']
                    : null,
                curve: maybeUnBoxAndBuildArgument<Curve?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['curve']
                        : null,
                    parentState: hydroState),
                duration: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['duration']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getUserScrollDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        ScrollDirection.values.indexWhere((x) {
          return x == vmObject.userScrollDirection;
        }),
      ];
    });
    table['getAllowImplicitScrolling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.allowImplicitScrolling,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['debugFillDescription'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillDescription(
          maybeUnBoxAndBuildArgument<List<String>, String>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
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
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
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

  final ViewportOffset vmObject;
}

class RTManagedViewportOffset extends ViewportOffset
    implements Box<ViewportOffset> {
  RTManagedViewportOffset({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getPixels'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [pixels];
    });
    table['_dart_getHasPixels'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [hasPixels];
    });
    table['_dart_applyViewportDimension'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [applyViewportDimension(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_applyContentDimensions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        applyContentDimensions(luaCallerArguments[1]?.toDouble(),
            luaCallerArguments[2]?.toDouble())
      ];
    });
    table['_dart_correctBy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      correctBy(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_jumpTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      jumpTo(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_animateTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: animateTo(luaCallerArguments[1]?.toDouble(),
                curve: maybeUnBoxAndBuildArgument<Curve, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['curve']
                        : null,
                    parentState: hydroState),
                duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['duration']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_moveTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.moveTo(luaCallerArguments[1]?.toDouble(),
                clamp: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['clamp']
                    : null,
                curve: maybeUnBoxAndBuildArgument<Curve?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['curve']
                        : null,
                    parentState: hydroState),
                duration: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['duration']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getUserScrollDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [userScrollDirection];
    });
    table['_dart_getAllowImplicitScrolling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [allowImplicitScrolling];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_debugFillDescription'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillDescription(
          maybeUnBoxAndBuildArgument<List<String>, String>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
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
    table['_dart_dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_notifyListeners'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_getHasListeners'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasListeners];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ViewportOffset unwrap() => this;
  ViewportOffset get vmObject => this;
  @override
  double get pixels {
    Closure closure = table["getPixels"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  bool get hasPixels {
    Closure closure = table["getHasPixels"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool applyViewportDimension(double viewportDimension) {
    Closure closure = table["applyViewportDimension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool applyContentDimensions(double minScrollExtent, double maxScrollExtent) {
    Closure closure = table["applyContentDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void correctBy(double correction) {
    Closure closure = table["correctBy"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void jumpTo(double pixels) {
    Closure closure = table["jumpTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Future<void> animateTo(double to,
      {required Curve curve, required Duration duration}) {
    Closure closure = table["animateTo"];
    return maybeUnBoxAndBuildArgument<Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<void> moveTo(double to,
      {bool? clamp, Curve? curve, Duration? duration}) {
    Closure closure = table["moveTo"];
    return maybeUnBoxAndBuildArgument<Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ScrollDirection get userScrollDirection {
    Closure closure = table["getUserScrollDirection"];
    return maybeUnBoxEnum(
        values: ScrollDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  bool get allowImplicitScrolling {
    Closure closure = table["getAllowImplicitScrolling"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  // @override
  // void debugFillDescription(List description) {
  //   super.debugFillDescription(description);
  //   Closure closure = table["debugFillDescription"];
  //   return closure.dispatch([table], parentState: hydroState)[0];
  // }

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
  void dispose() {
    super.dispose();
    Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void notifyListeners() {
    Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasListeners {
    Closure closure = table["getHasListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadViewportOffset(
    {required HydroState hydroState, required HydroTable table}) {
  table['viewportOffset'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedViewportOffset(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['viewportOffsetFixed'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ViewportOffset>(
          object: ViewportOffset.fixed(luaCallerArguments[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['viewportOffsetZero'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ViewportOffset>(
          object: ViewportOffset.zero(),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ViewportOffset>(boxer: (
      {required ViewportOffset vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedViewportOffset(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
