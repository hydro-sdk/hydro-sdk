import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/rendering/custom_paint.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCustomPainter extends VMManagedBox<CustomPainter> {
  VMManagedCustomPainter(
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
    table['paint'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paint(
          maybeUnBoxAndBuildArgument<Canvas, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getSemanticsBuilder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.semanticsBuilder;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['shouldRebuildSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRebuildSemantics(
            maybeUnBoxAndBuildArgument<CustomPainter, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['shouldRepaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRepaint(
            maybeUnBoxAndBuildArgument<CustomPainter, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.hitTest(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
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

  final CustomPainter vmObject;
}

class RTManagedCustomPainter extends CustomPainter
    implements Box<CustomPainter> {
  RTManagedCustomPainter(
      {Listenable? repaint, required this.table, required this.hydroState})
      : super(repaint: repaint) {
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
    table['_dart_paint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      paint(
          maybeUnBoxAndBuildArgument<Canvas, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_shouldRebuildSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.shouldRebuildSemantics(
            maybeUnBoxAndBuildArgument<CustomPainter, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_shouldRepaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        shouldRepaint(maybeUnBoxAndBuildArgument<CustomPainter, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTest(maybeUnBoxAndBuildArgument<Offset, dynamic>(
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

  CustomPainter unwrap() => this;
  CustomPainter get vmObject => this;
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
  void paint(Canvas canvas, Size size) {
    Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) {
    Closure closure = table["shouldRebuildSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    Closure closure = table["shouldRepaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? hitTest(Offset position) {
    Closure closure = table["hitTest"];
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

void loadCustomPainter(
    {required HydroState hydroState, required HydroTable table}) {
  table['customPainter'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedCustomPainter(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          repaint: maybeUnBoxAndBuildArgument<Listenable?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['repaint']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<CustomPainter>(boxer: (
      {required CustomPainter vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCustomPainter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
