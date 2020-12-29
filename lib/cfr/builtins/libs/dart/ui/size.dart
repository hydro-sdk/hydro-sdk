import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedSize extends VMManagedBox<Size> {
  VMManagedSize(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.width];
    });
    table['getHeight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.height];
    });
    table['getAspectRatio'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.aspectRatio];
    });
    table['getIsEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isEmpty];
    });
    table['getShortestSide'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.shortestSide];
    });
    table['getLongestSide'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.longestSide];
    });
    table['topLeft'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.topLeft(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['topCenter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.topCenter(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['topRight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.topRight(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['centerLeft'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.centerLeft(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['center'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.center(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['centerRight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.centerRight(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['bottomLeft'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.bottomLeft(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['bottomCenter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.bottomCenter(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['bottomRight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.bottomRight(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.contains(maybeUnBoxAndBuildArgument<Offset>(args[1],
            parentState: hydroState))
      ];
    });
    table['getFlipped'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.flipped,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table['getIsInfinite'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isInfinite];
    });
    table['getIsFinite'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isFinite];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Size vmObject;
}

class RTManagedSize extends Size implements Box<Size> {
  RTManagedSize(double width, double height,
      {@required this.table, @required this.hydroState})
      : super(
          width,
          height,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_width'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.width];
    });
    table['_dart_height'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.height];
    });
    table['_dart_aspectRatio'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.aspectRatio];
    });
    table['_dart_isEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isEmpty];
    });
    table['_dart_shortestSide'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.shortestSide];
    });
    table['_dart_longestSide'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.longestSide];
    });
    table['_dart_topLeft'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: super.topLeft(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_topCenter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: super.topCenter(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_topRight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: super.topRight(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_centerLeft'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: super.centerLeft(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_center'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: super.center(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_centerRight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: super.centerRight(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_bottomLeft'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: super.bottomLeft(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_bottomCenter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: super.bottomCenter(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_bottomRight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: super.bottomRight(maybeUnBoxAndBuildArgument<Offset>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.contains(maybeUnBoxAndBuildArgument<Offset>(args[1],
            parentState: hydroState))
      ];
    });
    table['_dart_flipped'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.flipped];
    });
    table['_dart_hashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
    table['_dart_isInfinite'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isInfinite];
    });
    table['_dart_isFinite'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isFinite];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Size unwrap() => this;
  Size get vmObject => this;
  @override
  double get width {
    Closure closure = table["width"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get height {
    Closure closure = table["height"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get aspectRatio {
    Closure closure = table["aspectRatio"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isEmpty {
    Closure closure = table["isEmpty"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get shortestSide {
    Closure closure = table["shortestSide"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get longestSide {
    Closure closure = table["longestSide"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset topLeft(Offset origin) {
    Closure closure = table["topLeft"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset topCenter(Offset origin) {
    Closure closure = table["topCenter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset topRight(Offset origin) {
    Closure closure = table["topRight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset centerLeft(Offset origin) {
    Closure closure = table["centerLeft"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset center(Offset origin) {
    Closure closure = table["center"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset centerRight(Offset origin) {
    Closure closure = table["centerRight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset bottomLeft(Offset origin) {
    Closure closure = table["bottomLeft"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset bottomCenter(Offset origin) {
    Closure closure = table["bottomCenter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset bottomRight(Offset origin) {
    Closure closure = table["bottomRight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool contains(Offset offset) {
    Closure closure = table["contains"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size get flipped {
    Closure closure = table["flipped"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["hashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isInfinite {
    Closure closure = table["isInfinite"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isFinite {
    Closure closure = table["isFinite"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSize({@required HydroState hydroState, @required HydroTable table}) {
  table['size'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedSize(args[1]?.toDouble(), args[2]?.toDouble(),
          table: args[0], hydroState: hydroState)
    ];
  });
  table['sizeCopy'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Size>(
          object: Size.copy(maybeUnBoxAndBuildArgument<Size>(args[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['sizeSquare'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Size>(
          object: Size.square(args[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['sizeFromWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Size>(
          object: Size.fromWidth(args[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['sizeFromHeight'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Size>(
          object: Size.fromHeight(args[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['sizeFromRadius'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Size>(
          object: Size.fromRadius(args[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['sizeLerp'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Size>(
          object: Size.lerp(
              maybeUnBoxAndBuildArgument<Size>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Size>(args[2],
                  parentState: hydroState),
              args[3]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Size>(boxer: (
      {@required Size vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedSize(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
