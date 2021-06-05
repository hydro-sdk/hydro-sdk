import 'dart:collection';
import 'dart:core';
import 'dart:ui';



import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedPathMetrics extends VMManagedBox<PathMetrics?> {
  VMManagedPathMetrics(
      {required this.table,
      required this.vmObject,
      required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table!['getIterator'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterator>(
            object: vmObject!.iterator,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['cast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.cast(),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['followedBy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject!.followedBy(
                maybeUnBoxAndBuildArgument<Iterable<PathMetric>>(args[1],
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
                    )![0]) as bool Function(PathMetric)
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
                    parentState: hydroState!)) as Iterable<dynamic> Function(PathMetric)
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
        maybeBoxObject<PathMetric>(
            object: vmObject!.reduce(combine != null
                ? ((value, element) => maybeUnBoxAndBuildArgument<PathMetric>(
                    combine.dispatch(
                      [args[0], value, element],
                      parentState: hydroState!,
                    )![0],
                    parentState: hydroState!)) as PathMetric Function(PathMetric, PathMetric)
                : null),
            hydroState: hydroState!,
            table: HydroTable())
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
                )![0]) as bool Function(PathMetric)
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
                )![0]) as bool Function(PathMetric)
            : null)
      ];
    });
    table!['toList'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject!
                .toList(growable: args[1]['growable'])
                .map((x) => maybeBoxObject<PathMetric>(
                    object: x, hydroState: hydroState!, table: HydroTable()))
                .toList(),
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
                    )![0]) as bool Function(PathMetric)
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
                    )![0]) as bool Function(PathMetric)
                : null),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['firstWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        maybeBoxObject<PathMetric>(
            object: vmObject!.firstWhere(
                test != null
                    ? ((element) => test.dispatch(
                          [args[0], element],
                          parentState: hydroState!,
                        )![0]) as bool Function(PathMetric)
                    : null,
                orElse: orElse != null
                    ? (() => maybeUnBoxAndBuildArgument<PathMetric>(
                        orElse.dispatch(
                          [
                            args[0],
                          ],
                          parentState: hydroState!,
                        )![0],
                        parentState: hydroState!)) as PathMetric Function()?
                    : null),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['lastWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        maybeBoxObject<PathMetric>(
            object: vmObject!.lastWhere(
                test != null
                    ? ((element) => test.dispatch(
                          [args[0], element],
                          parentState: hydroState!,
                        )![0]) as bool Function(PathMetric)
                    : null,
                orElse: orElse != null
                    ? (() => maybeUnBoxAndBuildArgument<PathMetric>(
                        orElse.dispatch(
                          [
                            args[0],
                          ],
                          parentState: hydroState!,
                        )![0],
                        parentState: hydroState!)) as PathMetric Function()?
                    : null),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['singleWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        maybeBoxObject<PathMetric>(
            object: vmObject!.singleWhere(
                test != null
                    ? ((element) => test.dispatch(
                          [args[0], element],
                          parentState: hydroState!,
                        )![0]) as bool Function(PathMetric)
                    : null,
                orElse: orElse != null
                    ? (() => maybeUnBoxAndBuildArgument<PathMetric>(
                        orElse.dispatch(
                          [
                            args[0],
                          ],
                          parentState: hydroState!,
                        )![0],
                        parentState: hydroState!)) as PathMetric Function()?
                    : null),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['elementAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PathMetric>(
            object: vmObject!.elementAt(args[1]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table!['getLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.length];
    });
    table!['getIsEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isEmpty];
    });
    table!['getIsNotEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isNotEmpty];
    });
    table!['getFirst'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PathMetric>(
            object: vmObject!.first, hydroState: hydroState!, table: HydroTable())
      ];
    });
    table!['getLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PathMetric>(
            object: vmObject!.last, hydroState: hydroState!, table: HydroTable())
      ];
    });
    table!['getSingle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PathMetric>(
            object: vmObject!.single,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
  }

  final HydroTable? table;

  final HydroState? hydroState;

  final PathMetrics? vmObject;
}

void loadPathMetrics(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<PathMetrics>(boxer: (
      {required PathMetrics? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedPathMetrics(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
