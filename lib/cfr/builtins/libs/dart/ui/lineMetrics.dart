import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

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
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
  table['lineMetrics'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedLineMetrics(
          table: args[0],
          hydroState: hydroState,
          ascent: args[1]['ascent']?.toDouble(),
          baseline: args[1]['baseline']?.toDouble(),
          descent: args[1]['descent']?.toDouble(),
          hardBreak: args[1]['hardBreak'],
          height: args[1]['height']?.toDouble(),
          left: args[1]['left']?.toDouble(),
          lineNumber: args[1]['lineNumber'],
          unscaledAscent: args[1]['unscaledAscent']?.toDouble(),
          width: args[1]['width']?.toDouble())
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
