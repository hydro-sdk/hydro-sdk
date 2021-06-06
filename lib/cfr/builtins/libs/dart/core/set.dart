import 'dart:core';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedSet extends VMManagedBox<Set<dynamic>?> {
  VMManagedSet(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table!['cast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Set>(
            object: vmObject!.cast(),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getIterator'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterator>(
            object: vmObject!.iterator,
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
    table!['add'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.add(args[1])];
    });
    table!['addAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.addAll(maybeUnBoxAndBuildArgument<Iterable<dynamic>>(args[1],
          parentState: hydroState!));
      return [];
    });
    table!['remove'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.remove(maybeUnBoxAndBuildArgument<Object>(args[1],
            parentState: hydroState!))
      ];
    });
    table!['lookup'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.lookup(maybeUnBoxAndBuildArgument<Object>(args[1],
            parentState: hydroState!))
      ];
    });
    table!['removeAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.removeAll(maybeUnBoxAndBuildArgument<Iterable<Object>>(args[1],
          parentState: hydroState!));
      return [];
    });
    table!['retainAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.retainAll(maybeUnBoxAndBuildArgument<Iterable<Object>>(args[1],
          parentState: hydroState!));
      return [];
    });
    table!['removeWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      vmObject!.removeWhere(test != null
          ? ((element) => test.dispatch(
                [args[0], element],
                parentState: hydroState!,
              )![0]) as bool Function(dynamic)
          : null);
      return [];
    });
    table!['retainWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      vmObject!.retainWhere(test != null
          ? ((element) => test.dispatch(
                [args[0], element],
                parentState: hydroState!,
              )![0]) as bool Function(dynamic)
          : null);
      return [];
    });
    table!['containsAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.containsAll(maybeUnBoxAndBuildArgument<Iterable<Object>>(
            args[1],
            parentState: hydroState!))
      ];
    });
    table!['intersection'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Set>(
            object: vmObject!.intersection(
                maybeUnBoxAndBuildArgument<Set<Object>>(args[1],
                    parentState: hydroState!)),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['union'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Set>(
            object: vmObject!.union(maybeUnBoxAndBuildArgument<Set<dynamic>>(
                args[1],
                parentState: hydroState!)),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['difference'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Set>(
            object: vmObject!.difference(
                maybeUnBoxAndBuildArgument<Set<Object>>(args[1],
                    parentState: hydroState!)),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['clear'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.clear();
      return [];
    });
    table!['toSet'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Set>(
            object: vmObject!.toSet(),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.length];
    });
    table!['followedBy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.followedBy(
                maybeUnBoxAndBuildArgument<Iterable<dynamic>>(args[1],
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
                    )![0]) as bool Function(dynamic)
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
                    as Iterable<dynamic> Function(dynamic)
                : null),
            hydroState: hydroState!,
            table: HydroTable())
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
            ? (value, element) => combine.dispatch(
                  [args[0], value, element],
                  parentState: hydroState!,
                )![0]
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
                )![0]) as bool Function(dynamic)
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
                )![0]) as bool Function(dynamic)
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
                    )![0]) as bool Function(dynamic)
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
                    )![0]) as bool Function(dynamic)
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
                    )![0]) as bool Function(dynamic)
                : null,
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState!,
                    )![0]
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
                    )![0]) as bool Function(dynamic)
                : null,
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState!,
                    )![0]
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
                    )![0]) as bool Function(dynamic)
                : null,
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState!,
                    )![0]
                : null)
      ];
    });
    table!['elementAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.elementAt(args[1])];
    });
    table!['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
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
  }

  final HydroTable? table;

  final HydroState? hydroState;

  final Set? vmObject;
}

void loadSet({required HydroState hydroState, required HydroTable table}) {
  table['set'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Set>(object: Set(), hydroState: hydroState, table: args[0])
    ];
  });
  table['setIdentity'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Set>(
          object: Set.identity(), hydroState: hydroState, table: HydroTable())
    ];
  });
  table['setFrom'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Set>(
          object: Set.from(maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
              args[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['setOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Set>(
          object: Set.of(maybeUnBoxAndBuildArgument<Iterable<dynamic>>(args[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['setCastFrom'] = makeLuaDartFunc(func: (List<dynamic> args) {
    Closure? newSet = args[2]['newSet'];
    return [
      maybeBoxObject<Set>(
          object: Set.castFrom(
              maybeUnBoxAndBuildArgument<Set<dynamic>>(args[1],
                  parentState: hydroState),
              newSet: newSet != null
                  ? (<R>() => maybeUnBoxAndBuildArgument<Set<R>>(
                      newSet.dispatch(
                        [
                          args[0],
                        ],
                        parentState: hydroState,
                      )![0],
                      parentState: hydroState)) as Set<R> Function<R>()?
                  : null),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Set>(boxer: (
      {required Set? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedSet(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
