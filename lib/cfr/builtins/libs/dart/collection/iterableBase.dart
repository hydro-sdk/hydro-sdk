import 'dart:collection';
import 'dart:core';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedIterableBase extends VMManagedBox<IterableBase<dynamic>> {
  VMManagedIterableBase(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.contains(maybeUnBoxAndBuildArgument<Object?>(args[1],
            parentState: hydroState))
      ];
    });
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.cast(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['followedBy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.followedBy(
                maybeUnBoxAndBuildArgument<Iterable<dynamic>>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['map'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure f = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.map((e) => f.dispatch(
                  [args[0], e],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['where'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.where((element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['whereType'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.whereType(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['expand'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure f = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.expand(
                (element) => maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
                    f.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['forEach'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure f = args[1];
      vmObject.forEach((element) => f.dispatch(
            [args[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['reduce'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure combine = args[1];
      return [
        vmObject.reduce((value, element) => combine.dispatch(
              [args[0], value, element],
              parentState: hydroState,
            )[0])
      ];
    });
    table['fold'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure combine = args[2];
      return [
        vmObject.fold(
            args[1],
            (previousValue, element) => combine.dispatch(
                  [args[0], previousValue, element],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['every'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        vmObject.every((element) => test.dispatch(
              [args[0], element],
              parentState: hydroState,
            )[0])
      ];
    });
    table['join'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.join(args[1])];
    });
    table['any'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        vmObject.any((element) => test.dispatch(
              [args[0], element],
              parentState: hydroState,
            )[0])
      ];
    });
    table['toList'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.toList(growable: args[1]['growable']),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['toSet'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Set>(
            object: vmObject.toSet(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['take'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.take(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['takeWhile'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.takeWhile((value) => test.dispatch(
                  [args[0], value],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['skip'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.skip(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['skipWhile'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.skipWhile((value) => test.dispatch(
                  [args[0], value],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['firstWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        vmObject.firstWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: () => orElse.dispatch(
                  [
                    args[0],
                  ],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['lastWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        vmObject.lastWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: () => orElse.dispatch(
                  [
                    args[0],
                  ],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['singleWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        vmObject.singleWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: () => orElse.dispatch(
                  [
                    args[0],
                  ],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['elementAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.elementAt(args[1])];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table['getIterator'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterator>(
            object: vmObject.iterator,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.length];
    });
    table['getIsEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isEmpty];
    });
    table['getIsNotEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isNotEmpty];
    });
    table['getFirst'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.first];
    });
    table['getLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.last];
    });
    table['getSingle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.single];
    });
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final IterableBase vmObject;
}

class RTManagedIterableBase extends IterableBase implements Box<IterableBase> {
  RTManagedIterableBase({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.contains(maybeUnBoxAndBuildArgument<Object?>(args[1],
            parentState: hydroState))
      ];
    });
    table['_dart_cast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: super.cast(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_followedBy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: super.followedBy(
                maybeUnBoxAndBuildArgument<Iterable<dynamic>>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_map'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure f = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.map((e) => f.dispatch(
                  [args[0], e],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_where'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.where((element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_whereType'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: super.whereType(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_expand'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure f = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.expand(
                (element) => maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
                    f.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_forEach'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure f = args[1];
      super.forEach((element) => f.dispatch(
            [args[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_reduce'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure combine = args[1];
      return [
        super.reduce((value, element) => combine.dispatch(
              [args[0], value, element],
              parentState: hydroState,
            )[0])
      ];
    });
    table['_dart_fold'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure combine = args[2];
      return [
        super.fold(
            args[1],
            (previousValue, element) => combine.dispatch(
                  [args[0], previousValue, element],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['_dart_every'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        super.every((element) => test.dispatch(
              [args[0], element],
              parentState: hydroState,
            )[0])
      ];
    });
    table['_dart_join'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.join(args[1])];
    });
    table['_dart_any'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        super.any((element) => test.dispatch(
              [args[0], element],
              parentState: hydroState,
            )[0])
      ];
    });
    table['_dart_toList'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super.toList(growable: args[1]['growable']),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toSet'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Set>(
            object: super.toSet(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_take'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: super.take(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_takeWhile'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.takeWhile((value) => test.dispatch(
                  [args[0], value],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_skip'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: super.skip(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_skipWhile'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.skipWhile((value) => test.dispatch(
                  [args[0], value],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_firstWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        super.firstWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: () => orElse.dispatch(
                  [
                    args[0],
                  ],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['_dart_lastWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        super.lastWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: () => orElse.dispatch(
                  [
                    args[0],
                  ],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['_dart_singleWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        super.singleWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: () => orElse.dispatch(
                  [
                    args[0],
                  ],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['_dart_elementAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.elementAt(args[1])];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
    table['_dart_getIterator'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [iterator];
    });
    table['_dart_getLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.length];
    });
    table['_dart_getIsEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isEmpty];
    });
    table['_dart_getIsNotEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isNotEmpty];
    });
    table['_dart_getFirst'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.first];
    });
    table['_dart_getLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.last];
    });
    table['_dart_getSingle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.single];
    });
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  IterableBase unwrap() => this;
  IterableBase get vmObject => this;
  @override
  bool contains(Object? element) {
    Closure closure = table["contains"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterable<R> cast<R>() {
    Closure closure = table["cast"];
    return maybeUnBoxAndBuildArgument<Iterable<R>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> followedBy(Iterable<dynamic> other) {
    Closure closure = table["followedBy"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<T> map<T>(f) {
    Closure closure = table["map"];
    return maybeUnBoxAndBuildArgument<Iterable<T>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> where(test) {
    Closure closure = table["where"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<T> whereType<T>() {
    Closure closure = table["whereType"];
    return maybeUnBoxAndBuildArgument<Iterable<T>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<T> expand<T>(f) {
    Closure closure = table["expand"];
    return maybeUnBoxAndBuildArgument<Iterable<T>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void forEach(f) {
    Closure closure = table["forEach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic reduce(combine) {
    Closure closure = table["reduce"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  T fold<T>(T initialValue, combine) {
    Closure closure = table["fold"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool every(test) {
    Closure closure = table["every"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String join([String separator = ""]) {
    Closure closure = table["join"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool any(test) {
    Closure closure = table["any"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<dynamic> toList({bool growable = true}) {
    Closure closure = table["toList"];
    return maybeUnBoxAndBuildArgument<List<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Set<dynamic> toSet() {
    Closure closure = table["toSet"];
    return maybeUnBoxAndBuildArgument<Set<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> take(int count) {
    Closure closure = table["take"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> takeWhile(test) {
    Closure closure = table["takeWhile"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> skip(int count) {
    Closure closure = table["skip"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> skipWhile(test) {
    Closure closure = table["skipWhile"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  dynamic firstWhere(test, {orElse}) {
    Closure closure = table["firstWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic lastWhere(test, {orElse}) {
    Closure closure = table["lastWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic singleWhere(test, {orElse}) {
    Closure closure = table["singleWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic elementAt(int index) {
    Closure closure = table["elementAt"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterator<dynamic> get iterator {
    Closure closure = table["getIterator"];
    return maybeUnBoxAndBuildArgument<Iterator<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get length {
    Closure closure = table["getLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isEmpty {
    Closure closure = table["getIsEmpty"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isNotEmpty {
    Closure closure = table["getIsNotEmpty"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic get first {
    Closure closure = table["getFirst"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic get last {
    Closure closure = table["getLast"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic get single {
    Closure closure = table["getSingle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadIterableBase(
    {required HydroState hydroState, required HydroTable table}) {
  table['iterableBase'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [RTManagedIterableBase(table: args[0], hydroState: hydroState)];
  });
  table['iterableBaseIterableToShortString'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<String>(
          object: IterableBase.iterableToShortString(
              maybeUnBoxAndBuildArgument<Iterable<dynamic>>(args[1],
                  parentState: hydroState),
              args[2],
              args[3]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['iterableBaseIterableToFullString'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<String>(
          object: IterableBase.iterableToFullString(
              maybeUnBoxAndBuildArgument<Iterable<dynamic>>(args[1],
                  parentState: hydroState),
              args[2],
              args[3]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<IterableBase>(boxer: (
      {required IterableBase vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedIterableBase(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
