import 'dart:collection';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedIterableBase extends VMManagedBox<IterableBase<dynamic>> {
  VMManagedIterableBase(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['contains'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.contains(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.cast(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['followedBy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.followedBy(
                maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['map'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.map((e) => unpackedf.dispatch(
                  [luaCallerArguments[0], e],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['where'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.where((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['whereType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.whereType(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['expand'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.expand((element) =>
                maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                    unpackedf.dispatch(
                      [luaCallerArguments[0], element],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[1];
      vmObject.forEach((element) => unpackedf.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['reduce'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcombine = luaCallerArguments[1];
      return [
        vmObject.reduce((value, element) => unpackedcombine.dispatch(
              [luaCallerArguments[0], value, element],
              parentState: hydroState,
            )[0]),
      ];
    });
    table['fold'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcombine = luaCallerArguments[2];
      return [
        vmObject.fold(
            luaCallerArguments[1],
            (previousValue, element) => unpackedcombine.dispatch(
                  [luaCallerArguments[0], previousValue, element],
                  parentState: hydroState,
                )[0]),
      ];
    });
    table['every'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        vmObject.every((element) => unpackedtest.dispatch(
              [luaCallerArguments[0], element],
              parentState: hydroState,
            )[0]),
      ];
    });
    table['join'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.join(luaCallerArguments[1]),
      ];
    });
    table['any'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        vmObject.any((element) => unpackedtest.dispatch(
              [luaCallerArguments[0], element],
              parentState: hydroState,
            )[0]),
      ];
    });
    table['toList'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.toList(
                growable: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['growable']
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toSet'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Set>(
            object: vmObject.toSet(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['take'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.take(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['takeWhile'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.takeWhile((value) => unpackedtest.dispatch(
                  [luaCallerArguments[0], value],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['skip'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.skip(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['skipWhile'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.skipWhile((value) => unpackedtest.dispatch(
                  [luaCallerArguments[0], value],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['firstWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
      return [
        vmObject.firstWhere(
            (element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0],
            orElse: unpackedorElse != null
                ? () => unpackedorElse.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null),
      ];
    });
    table['lastWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
      return [
        vmObject.lastWhere(
            (element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0],
            orElse: unpackedorElse != null
                ? () => unpackedorElse.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null),
      ];
    });
    table['singleWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
      return [
        vmObject.singleWhere(
            (element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0],
            orElse: unpackedorElse != null
                ? () => unpackedorElse.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null),
      ];
    });
    table['elementAt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.elementAt(luaCallerArguments[1]),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getIterator'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterator>(
            object: vmObject.iterator,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.length,
      ];
    });
    table['getIsEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isEmpty,
      ];
    });
    table['getIsNotEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isNotEmpty,
      ];
    });
    table['getFirst'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.first,
      ];
    });
    table['getLast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.last,
      ];
    });
    table['getSingle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.single,
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_contains'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.contains(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_cast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: super.cast(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_followedBy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: super.followedBy(
                maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_map'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.map((e) => unpackedf.dispatch(
                  [luaCallerArguments[0], e],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_where'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.where((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_whereType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: super.whereType(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_expand'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.expand((element) =>
                maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                    unpackedf.dispatch(
                      [luaCallerArguments[0], element],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[1];
      super.forEach((element) => unpackedf.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_reduce'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcombine = luaCallerArguments[1];
      return [
        super.reduce((value, element) => unpackedcombine.dispatch(
              [luaCallerArguments[0], value, element],
              parentState: hydroState,
            )[0])
      ];
    });
    table['_dart_fold'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcombine = luaCallerArguments[2];
      return [
        super.fold(
            luaCallerArguments[1],
            (previousValue, element) => unpackedcombine.dispatch(
                  [luaCallerArguments[0], previousValue, element],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['_dart_every'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        super.every((element) => unpackedtest.dispatch(
              [luaCallerArguments[0], element],
              parentState: hydroState,
            )[0])
      ];
    });
    table['_dart_join'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.join(luaCallerArguments[1])];
    });
    table['_dart_any'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        super.any((element) => unpackedtest.dispatch(
              [luaCallerArguments[0], element],
              parentState: hydroState,
            )[0])
      ];
    });
    table['_dart_toList'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super.toList(
                growable: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['growable']
                    : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toSet'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Set>(
            object: super.toSet(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_take'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: super.take(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_takeWhile'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.takeWhile((value) => unpackedtest.dispatch(
                  [luaCallerArguments[0], value],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_skip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: super.skip(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_skipWhile'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: super.skipWhile((value) => unpackedtest.dispatch(
                  [luaCallerArguments[0], value],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_firstWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
      return [
        super.firstWhere(
            (element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0],
            orElse: unpackedorElse != null
                ? () => unpackedorElse.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
    });
    table['_dart_lastWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
      return [
        super.lastWhere(
            (element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0],
            orElse: unpackedorElse != null
                ? () => unpackedorElse.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
    });
    table['_dart_singleWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
      return [
        super.singleWhere(
            (element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0],
            orElse: unpackedorElse != null
                ? () => unpackedorElse.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
    });
    table['_dart_elementAt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.elementAt(luaCallerArguments[1])];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getIterator'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [iterator];
    });
    table['_dart_getLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.length];
    });
    table['_dart_getIsEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isEmpty];
    });
    table['_dart_getIsNotEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isNotEmpty];
    });
    table['_dart_getFirst'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.first];
    });
    table['_dart_getLast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.last];
    });
    table['_dart_getSingle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.single];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
    return maybeUnBoxAndBuildArgument<Iterable<R>, R>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> followedBy(Iterable other) {
    Closure closure = table["followedBy"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<T> map<T>(f) {
    Closure closure = table["map"];
    return maybeUnBoxAndBuildArgument<Iterable<T>, T>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> where(test) {
    Closure closure = table["where"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<T> whereType<T>() {
    Closure closure = table["whereType"];
    return maybeUnBoxAndBuildArgument<Iterable<T>, T>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<T> expand<T>(f) {
    Closure closure = table["expand"];
    return maybeUnBoxAndBuildArgument<Iterable<T>, T>(
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
    return maybeUnBoxAndBuildArgument<List<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Set<dynamic> toSet() {
    Closure closure = table["toSet"];
    return maybeUnBoxAndBuildArgument<Set<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> take(int count) {
    Closure closure = table["take"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> takeWhile(test) {
    Closure closure = table["takeWhile"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> skip(int count) {
    Closure closure = table["skip"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> skipWhile(test) {
    Closure closure = table["skipWhile"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
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
    return maybeUnBoxAndBuildArgument<Iterator<dynamic>, dynamic>(
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
  table['iterableBase'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedIterableBase(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['iterableBaseIterableToShortString'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      IterableBase.iterableToShortString(
          maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2],
          luaCallerArguments[3]),
    ];
  });
  table['iterableBaseIterableToFullString'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      IterableBase.iterableToFullString(
          maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2],
          luaCallerArguments[3]),
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
