import 'dart:core';
import 'dart:math';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedInt32List extends VMManagedBox<Int32List?> {
  VMManagedInt32List(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table!['sublist'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32List>(
            object: vmObject!.sublist(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['cast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject!.cast(),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['add'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.add(args[1]);
      return [];
    });
    table!['addAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.addAll(maybeUnBoxAndBuildArgument<Iterable<int>>(args[1],
          parentState: hydroState!));
      return [];
    });
    table!['sort'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? compare = args[1];
      vmObject!.sort(compare != null
          ? ((a, b) => compare.dispatch(
                [args[0], a, b],
                parentState: hydroState!,
              )![0]) as int Function(int, int)?
          : null);
      return [];
    });
    table!['shuffle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.shuffle(maybeUnBoxAndBuildArgument<Random>(args[1],
          parentState: hydroState!));
      return [];
    });
    table!['indexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.indexOf(args[1], args[2])];
    });
    table!['indexWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      return [
        vmObject!.indexWhere(
            test != null
                ? ((element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState!,
                    )![0]) as bool Function(int)
                : null,
            args[2])
      ];
    });
    table!['lastIndexWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      return [
        vmObject!.lastIndexWhere(
            test != null
                ? ((element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState!,
                    )![0]) as bool Function(int)
                : null,
            args[2])
      ];
    });
    table!['lastIndexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.lastIndexOf(args[1], args[2])];
    });
    table!['clear'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.clear();
      return [];
    });
    table!['insert'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.insert(args[1], args[2]);
      return [];
    });
    table!['insertAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.insertAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[2],
              parentState: hydroState!));
      return [];
    });
    table!['setAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[2],
              parentState: hydroState!));
      return [];
    });
    table!['remove'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.remove(maybeUnBoxAndBuildArgument<Object>(args[1],
            parentState: hydroState!))
      ];
    });
    table!['removeAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.removeAt(args[1])];
    });
    table!['removeLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.removeLast()];
    });
    table!['removeWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      vmObject!.removeWhere(test != null
          ? ((element) => test.dispatch(
                [args[0], element],
                parentState: hydroState!,
              )![0]) as bool Function(int)
          : null);
      return [];
    });
    table!['retainWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      vmObject!.retainWhere(test != null
          ? ((element) => test.dispatch(
                [args[0], element],
                parentState: hydroState!,
              )![0]) as bool Function(int)
          : null);
      return [];
    });
    table!['getRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.getRange(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['setRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[3],
              parentState: hydroState!),
          args[4]);
      return [];
    });
    table!['removeRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.removeRange(args[1], args[2]);
      return [];
    });
    table!['fillRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.fillRange(args[1], args[2], args[3]);
      return [];
    });
    table!['replaceRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.replaceRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[3],
              parentState: hydroState!));
      return [];
    });
    table!['asMap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Map>(
            object: vmObject!.asMap(),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['setFirst'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.first = (args[1]);
      return [];
    });
    table!['setLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.last = (args[1]);
      return [];
    });
    table!['getLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.length];
    });
    table!['setLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.length = (args[1]);
      return [];
    });
    table!['getReversed'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.reversed,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['followedBy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.followedBy(
                maybeUnBoxAndBuildArgument<Iterable<int>>(args[1],
                    parentState: hydroState!)),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['map'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? f = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.map(f != null
                ? (e) => f.dispatch(
                      [args[0], e],
                      parentState: hydroState!,
                    )![0]
                : null),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['where'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.where(test != null
                ? ((element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState!,
                    )![0]) as bool Function(int)
                : null),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['whereType'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.whereType(),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['expand'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? f = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.expand(f != null
                ? ((element) => maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
                        f.dispatch(
                          [args[0], element],
                          parentState: hydroState!,
                        )![0],
                        parentState: hydroState!))
                    as Iterable<dynamic> Function(int)
                : null),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.contains(maybeUnBoxAndBuildArgument<Object>(args[1],
            parentState: hydroState!))
      ];
    });
    table!['forEach'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? f = args[1];
      vmObject!.forEach(f != null
          ? (element) => f.dispatch(
                [args[0], element],
                parentState: hydroState!,
              )
          : null);
      return [];
    });
    table!['reduce'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? combine = args[1];
      return [
        vmObject!.reduce(combine != null
            ? ((value, element) => combine.dispatch(
                  [args[0], value, element],
                  parentState: hydroState!,
                )![0]) as int Function(int, int)
            : null)
      ];
    });
    table!['fold'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? combine = args[2];
      return [
        vmObject!.fold(
            args[1],
            combine != null
                ? (dynamic previousValue, element) => combine.dispatch(
                      [args[0], previousValue, element],
                      parentState: hydroState!,
                    )![0]
                : null)
      ];
    });
    table!['every'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      return [
        vmObject!.every(test != null
            ? ((element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState!,
                )![0]) as bool Function(int)
            : null)
      ];
    });
    table!['join'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.join(args[1])];
    });
    table!['any'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      return [
        vmObject!.any(test != null
            ? ((element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState!,
                )![0]) as bool Function(int)
            : null)
      ];
    });
    table!['toList'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject!.toList(growable: args[1]['growable']),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['toSet'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Set>(
            object: vmObject!.toSet(),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['take'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.take(args[1]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['takeWhile'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.takeWhile(test != null
                ? ((value) => test.dispatch(
                      [args[0], value],
                      parentState: hydroState!,
                    )![0]) as bool Function(int)
                : null),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['skip'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.skip(args[1]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['skipWhile'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.skipWhile(test != null
                ? ((value) => test.dispatch(
                      [args[0], value],
                      parentState: hydroState!,
                    )![0]) as bool Function(int)
                : null),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['firstWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        vmObject!.firstWhere(
            test != null
                ? ((element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState!,
                    )![0]) as bool Function(int)
                : null,
            orElse: orElse != null
                ? (() => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState!,
                    )![0]) as int Function()?
                : null)
      ];
    });
    table!['lastWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        vmObject!.lastWhere(
            test != null
                ? ((element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState!,
                    )![0]) as bool Function(int)
                : null,
            orElse: orElse != null
                ? (() => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState!,
                    )![0]) as int Function()?
                : null)
      ];
    });
    table!['singleWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        vmObject!.singleWhere(
            test != null
                ? ((element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState!,
                    )![0]) as bool Function(int)
                : null,
            orElse: orElse != null
                ? (() => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState!,
                    )![0]) as int Function()?
                : null)
      ];
    });
    table!['elementAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.elementAt(args[1])];
    });
    table!['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table!['getIterator'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterator>(
            object: vmObject!.iterator,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getIsEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isEmpty];
    });
    table!['getIsNotEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isNotEmpty];
    });
    table!['getFirst'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.first];
    });
    table!['getLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.last];
    });
    table!['getSingle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.single];
    });
    table!['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table!['getElementSizeInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.elementSizeInBytes];
    });
    table!['getOffsetInBytes'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.offsetInBytes];
    });
    table!['getLengthInBytes'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.lengthInBytes];
    });
    table!['getBuffer'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ByteBuffer>(
            object: vmObject!.buffer,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
  }

  final HydroTable? table;

  final HydroState? hydroState;

  final Int32List? vmObject;
}

void loadInt32List(
    {required HydroState hydroState, required HydroTable table}) {
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
      {required Int32List? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedInt32List(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
