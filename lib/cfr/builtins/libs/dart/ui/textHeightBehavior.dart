import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedTextHeightBehavior extends VMManagedBox<TextHeightBehavior> {
  VMManagedTextHeightBehavior(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['applyHeightToFirstAscent'] = vmObject.applyHeightToFirstAscent;
    table['applyHeightToLastDescent'] = vmObject.applyHeightToLastDescent;
    table['encode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.encode()];
    });
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final TextHeightBehavior vmObject;
}

class RTManagedTextHeightBehavior extends TextHeightBehavior
    implements Box<TextHeightBehavior> {
  RTManagedTextHeightBehavior(
      {required bool applyHeightToFirstAscent,
      required bool applyHeightToLastDescent,
      required this.table,
      required this.hydroState})
      : super(
            applyHeightToFirstAscent: applyHeightToFirstAscent,
            applyHeightToLastDescent: applyHeightToLastDescent) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['applyHeightToFirstAscent'] = applyHeightToFirstAscent;
    table['applyHeightToLastDescent'] = applyHeightToLastDescent;
    table['_dart_encode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.encode()];
    });
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  TextHeightBehavior unwrap() => this;
  TextHeightBehavior get vmObject => this;
  @override
  int encode() {
    Closure closure = table["encode"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadTextHeightBehavior(
    {required HydroState hydroState, required HydroTable table}) {
  table['textHeightBehavior'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedTextHeightBehavior(
          table: args[0],
          hydroState: hydroState,
          applyHeightToFirstAscent: args[1]['applyHeightToFirstAscent'],
          applyHeightToLastDescent: args[1]['applyHeightToLastDescent'])
    ];
  });
  table['textHeightBehaviorFromEncoded'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<TextHeightBehavior>(
          object: TextHeightBehavior.fromEncoded(args[1]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<TextHeightBehavior>(boxer: (
      {required TextHeightBehavior vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextHeightBehavior(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
