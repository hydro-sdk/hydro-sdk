import 'dart:core';
import 'dart:math';
import 'dart:typed_data';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedInt32List extends VMManagedBox<Int32List> {
  VMManagedInt32List(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['sublist'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32List>(
            object: vmObject.sublist(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.cast(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['add'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.add(args[1]);
      return [];
    });
    table['addAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addAll(maybeUnBoxAndBuildArgument<Iterable>(args[1],
          parentState: hydroState));
      return [];
    });
    table['sort'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure compare = args[1];
      vmObject.sort(compare != null
          ? (a, b) => compare.dispatch(
                [args[0], a, b],
                parentState: hydroState,
              )[0]
          : null);
      return [];
    });
    table['shuffle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.shuffle(
          maybeUnBoxAndBuildArgument<Random>(args[1], parentState: hydroState));
      return [];
    });
    table['indexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.indexOf(args[1], args[2])];
    });
    table['indexWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        vmObject.indexWhere(
            test != null
                ? (element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0]
                : null,
            args[2])
      ];
    });
    table['lastIndexWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        vmObject.lastIndexWhere(
            test != null
                ? (element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0]
                : null,
            args[2])
      ];
    });
    table['lastIndexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.lastIndexOf(args[1], args[2])];
    });
    table['clear'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.clear();
      return [];
    });
    table['insert'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.insert(args[1], args[2]);
      return [];
    });
    table['insertAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.insertAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable>(args[2],
              parentState: hydroState));
      return [];
    });
    table['setAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.setAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable>(args[2],
              parentState: hydroState));
      return [];
    });
    table['remove'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.remove(maybeUnBoxAndBuildArgument<Object>(args[1],
            parentState: hydroState))
      ];
    });
    table['removeAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.removeAt(args[1])];
    });
    table['removeLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.removeLast()];
    });
    table['removeWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      vmObject.removeWhere(test != null
          ? (element) => test.dispatch(
                [args[0], element],
                parentState: hydroState,
              )[0]
          : null);
      return [];
    });
    table['retainWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      vmObject.retainWhere(test != null
          ? (element) => test.dispatch(
                [args[0], element],
                parentState: hydroState,
              )[0]
          : null);
      return [];
    });
    table['getRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.getRange(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['setRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.setRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Iterable>(args[3],
              parentState: hydroState),
          args[4]);
      return [];
    });
    table['removeRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.removeRange(args[1], args[2]);
      return [];
    });
    table['fillRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.fillRange(args[1], args[2], args[3]);
      return [];
    });
    table['replaceRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.replaceRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Iterable>(args[3],
              parentState: hydroState));
      return [];
    });
    table['asMap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.asMap(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['setFirst'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.first = (args[1]);
      return [];
    });
    table['setLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.last = (args[1]);
      return [];
    });
    table['getLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.length];
    });
    table['setLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.length = (args[1]);
      return [];
    });
    table['getReversed'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.reversed,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['getElementSizeInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.elementSizeInBytes];
    });
    table['getOffsetInBytes'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.offsetInBytes];
    });
    table['getLengthInBytes'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.lengthInBytes];
    });
    table['getBuffer'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ByteBuffer>(
            object: vmObject.buffer,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Int32List vmObject;
}

void loadInt32List(
    {@required HydroState hydroState, @required HydroTable table}) {
  table['int32List'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Int32List>(
          object: Int32List(args[1]), hydroState: hydroState, table: args[0])
    ];
  });
  table['int32ListFromList'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Int32List>(
          object: Int32List.fromList(maybeUnBoxAndBuildArgument<List<int>>(
              args[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['int32ListView'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Int32List>(
          object: Int32List.view(
              maybeUnBoxAndBuildArgument<ByteBuffer>(args[1],
                  parentState: hydroState),
              args[2],
              args[3]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['int32ListSublistView'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Int32List>(
          object: Int32List.sublistView(
              maybeUnBoxAndBuildArgument<TypedData>(args[1],
                  parentState: hydroState),
              args[2],
              args[3]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Int32List>(boxer: (
      {@required Int32List vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedInt32List(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
