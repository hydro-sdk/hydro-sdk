import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLineMetrics extends VMManagedBox<LineMetrics> {
  VMManagedLineMetrics(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['hardBreak'] = vmObject.hardBreak;
    table['ascent'] = vmObject.ascent;
    table['descent'] = vmObject.descent;
    table['unscaledAscent'] = vmObject.unscaledAscent;
    table['height'] = vmObject.height;
    table['width'] = vmObject.width;
    table['left'] = vmObject.left;
    table['baseline'] = vmObject.baseline;
    table['lineNumber'] = vmObject.lineNumber;
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

  final LineMetrics vmObject;
}

class RTManagedLineMetrics extends LineMetrics implements Box<LineMetrics> {
  RTManagedLineMetrics(
      {required double ascent,
      required double baseline,
      required double descent,
      required bool hardBreak,
      required double height,
      required double left,
      required int lineNumber,
      required double unscaledAscent,
      required double width,
      required this.table,
      required this.hydroState})
      : super(
            ascent: ascent,
            baseline: baseline,
            descent: descent,
            hardBreak: hardBreak,
            height: height,
            left: left,
            lineNumber: lineNumber,
            unscaledAscent: unscaledAscent,
            width: width) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['hardBreak'] = hardBreak;
    table['ascent'] = ascent;
    table['descent'] = descent;
    table['unscaledAscent'] = unscaledAscent;
    table['height'] = height;
    table['width'] = width;
    table['left'] = left;
    table['baseline'] = baseline;
    table['lineNumber'] = lineNumber;
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

  LineMetrics unwrap() => this;
  LineMetrics get vmObject => this;
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

void loadLineMetrics(
    {required HydroState hydroState, required HydroTable table}) {
  table['lineMetrics'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLineMetrics(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          ascent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['ascent']
              : null?.toDouble(),
          baseline: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['baseline']
              : null?.toDouble(),
          descent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['descent']
              : null?.toDouble(),
          hardBreak: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hardBreak']
              : null,
          height: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['height']
              : null?.toDouble(),
          left: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['left']
              : null?.toDouble(),
          lineNumber: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['lineNumber']
              : null,
          unscaledAscent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['unscaledAscent']
              : null?.toDouble(),
          width: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['width']
              : null?.toDouble())
    ];
  });
  registerBoxer<LineMetrics>(boxer: (
      {required LineMetrics vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLineMetrics(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
