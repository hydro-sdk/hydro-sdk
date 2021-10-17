import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedColor extends VMManagedBox<Color> {
  VMManagedColor(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['value'] = vmObject.value;
    table['getAlpha'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.alpha,
      ];
    });
    table['getOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.opacity,
      ];
    });
    table['getRed'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.red,
      ];
    });
    table['getGreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.green,
      ];
    });
    table['getBlue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.blue,
      ];
    });
    table['withAlpha'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: vmObject.withAlpha(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: vmObject.withOpacity(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withRed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: vmObject.withRed(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withGreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: vmObject.withGreen(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withBlue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: vmObject.withBlue(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['computeLuminance'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeLuminance(),
      ];
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

  final Color vmObject;
}

class RTManagedColor extends Color implements Box<Color> {
  RTManagedColor(int value$, {required this.table, required this.hydroState})
      : super(
          value$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['value'] = value;
    table['_dart_getAlpha'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.alpha];
    });
    table['_dart_getOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.opacity];
    });
    table['_dart_getRed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.red];
    });
    table['_dart_getGreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.green];
    });
    table['_dart_getBlue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.blue];
    });
    table['_dart_withAlpha'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: super.withAlpha(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_withOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: super.withOpacity(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_withRed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: super.withRed(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_withGreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: super.withGreen(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_withBlue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: super.withBlue(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_computeLuminance'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.computeLuminance()];
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

  Color unwrap() => this;
  Color get vmObject => this;
  @override
  int get alpha {
    Closure closure = table["getAlpha"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get opacity {
    Closure closure = table["getOpacity"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  int get red {
    Closure closure = table["getRed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get green {
    Closure closure = table["getGreen"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get blue {
    Closure closure = table["getBlue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Color withAlpha(int a) {
    Closure closure = table["withAlpha"];
    return maybeUnBoxAndBuildArgument<Color, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Color withOpacity(double opacity) {
    Closure closure = table["withOpacity"];
    return maybeUnBoxAndBuildArgument<Color, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Color withRed(int r) {
    Closure closure = table["withRed"];
    return maybeUnBoxAndBuildArgument<Color, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Color withGreen(int g) {
    Closure closure = table["withGreen"];
    return maybeUnBoxAndBuildArgument<Color, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Color withBlue(int b) {
    Closure closure = table["withBlue"];
    return maybeUnBoxAndBuildArgument<Color, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  double computeLuminance() {
    Closure closure = table["computeLuminance"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
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

void loadColor({required HydroState hydroState, required HydroTable table}) {
  table['color'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedColor(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['colorFromARGB'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Color>(
          object: Color.fromARGB(luaCallerArguments[1], luaCallerArguments[2],
              luaCallerArguments[3], luaCallerArguments[4]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['colorFromRGBO'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Color>(
          object: Color.fromRGBO(luaCallerArguments[1], luaCallerArguments[2],
              luaCallerArguments[3], luaCallerArguments[4]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['colorLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = Color.lerp(
        maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<Color?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  table['colorAlphaBlend'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Color>(
          object: Color.alphaBlend(
              maybeUnBoxAndBuildArgument<Color, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Color, dynamic>(luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['colorGetAlphaFromOpacity'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Color.getAlphaFromOpacity(luaCallerArguments[1]?.toDouble()),
    ];
  });
  registerBoxer<Color>(boxer: (
      {required Color vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedColor(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
