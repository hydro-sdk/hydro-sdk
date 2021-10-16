import 'dart:collection';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSplayTreeMap
    extends VMManagedBox<SplayTreeMap<dynamic, dynamic>> {
  VMManagedSplayTreeMap(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['remove'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.remove(
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['putIfAbsent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedifAbsent = luaCallerArguments[2];
      return [
        vmObject.putIfAbsent(
            luaCallerArguments[1],
            () => unpackedifAbsent.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )[0]),
      ];
    });
    table['addAll'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addAll(
          maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
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
    table['forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[1];
      vmObject.forEach((key, value) => unpackedf.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          ));
      return [];
    });
    table['getLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.length,
      ];
    });
    table['clear'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clear();
      return [];
    });
    table['containsKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.containsKey(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['containsValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.containsValue(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['getKeys'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.keys, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['getValues'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.values,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['firstKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.firstKey();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['lastKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.lastKey();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['lastKeyBefore'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.lastKeyBefore(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['firstKeyAfter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.firstKeyAfter(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.cast(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['update'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedupdate = luaCallerArguments[2];
      Closure? unpackedifAbsent = luaCallerArguments.length >= 4
          ? luaCallerArguments[3]['ifAbsent']
          : null;
      return [
        vmObject.update(
            luaCallerArguments[1],
            (value) => unpackedupdate.dispatch(
                  [luaCallerArguments[0], value],
                  parentState: hydroState,
                )[0],
            ifAbsent: unpackedifAbsent != null
                ? () => unpackedifAbsent.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null),
      ];
    });
    table['updateAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedupdate = luaCallerArguments[1];
      vmObject.updateAll((key, value) => unpackedupdate.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['map'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtransform = luaCallerArguments[1];
      return [
        maybeBoxObject<Map>(
            object: vmObject.map((key, value) =>
                maybeUnBoxAndBuildArgument<MapEntry<dynamic, dynamic>, dynamic>(
                    unpackedtransform.dispatch(
                      [luaCallerArguments[0], key, value],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['addEntries'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addEntries(maybeUnBoxAndBuildArgument<
              Iterable<MapEntry<dynamic, dynamic>>,
              MapEntry<dynamic, dynamic>>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['removeWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      vmObject.removeWhere((key, value) => unpackedtest.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getEntries'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.entries,
            hydroState: hydroState,
            table: HydroTable()),
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

  final SplayTreeMap vmObject;
}

class RTManagedSplayTreeMap extends SplayTreeMap implements Box<SplayTreeMap> {
  RTManagedSplayTreeMap(compare, isValidKey,
      {required this.table, required this.hydroState})
      : super(
          compare,
          isValidKey,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_remove'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.remove(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_putIfAbsent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedifAbsent = luaCallerArguments[2];
      return [
        super.putIfAbsent(
            luaCallerArguments[1],
            () => unpackedifAbsent.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )[0])
      ];
    });
    table['_dart_addAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addAll(maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getIsEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isEmpty];
    });
    table['_dart_getIsNotEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isNotEmpty];
    });
    table['_dart_forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[1];
      super.forEach((key, value) => unpackedf.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_getLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.length];
    });
    table['_dart_clear'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clear();
      return [];
    });
    table['_dart_containsKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.containsKey(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_containsValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.containsValue(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_getKeys'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.keys];
    });
    table['_dart_getValues'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.values];
    });
    table['_dart_firstKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.firstKey()];
    });
    table['_dart_lastKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.lastKey()];
    });
    table['_dart_lastKeyBefore'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.lastKeyBefore(luaCallerArguments[1])];
    });
    table['_dart_firstKeyAfter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.firstKeyAfter(luaCallerArguments[1])];
    });
    table['_dart_cast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: super.cast(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_update'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedupdate = luaCallerArguments[2];
      Closure? unpackedifAbsent = luaCallerArguments.length >= 4
          ? luaCallerArguments[3]['ifAbsent']
          : null;
      return [
        super.update(
            luaCallerArguments[1],
            (value) => unpackedupdate.dispatch(
                  [luaCallerArguments[0], value],
                  parentState: hydroState,
                )[0],
            ifAbsent: unpackedifAbsent != null
                ? () => unpackedifAbsent.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
    });
    table['_dart_updateAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedupdate = luaCallerArguments[1];
      super.updateAll((key, value) => unpackedupdate.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['_dart_map'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtransform = luaCallerArguments[1];
      return [
        maybeBoxObject<Map>(
            object: super.map((key, value) =>
                maybeUnBoxAndBuildArgument<MapEntry<dynamic, dynamic>, dynamic>(
                    unpackedtransform.dispatch(
                      [luaCallerArguments[0], key, value],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_addEntries'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addEntries(maybeUnBoxAndBuildArgument<
              Iterable<MapEntry<dynamic, dynamic>>,
              MapEntry<dynamic, dynamic>>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_removeWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      super.removeWhere((key, value) => unpackedtest.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getEntries'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.entries];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SplayTreeMap unwrap() => this;
  SplayTreeMap get vmObject => this;
  @override
  dynamic? remove(Object? key) {
    Closure closure = table["remove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic putIfAbsent(dynamic key, ifAbsent) {
    Closure closure = table["putIfAbsent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addAll(Map other) {
    Closure closure = table["addAll"];
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
  void forEach(f) {
    Closure closure = table["forEach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get length {
    Closure closure = table["getLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clear() {
    Closure closure = table["clear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool containsKey(Object? key) {
    Closure closure = table["containsKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool containsValue(Object? value) {
    Closure closure = table["containsValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterable<dynamic> get keys {
    Closure closure = table["getKeys"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> get values {
    Closure closure = table["getValues"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  dynamic? firstKey() {
    Closure closure = table["firstKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic? lastKey() {
    Closure closure = table["lastKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic? lastKeyBefore(dynamic key) {
    Closure closure = table["lastKeyBefore"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic? firstKeyAfter(dynamic key) {
    Closure closure = table["firstKeyAfter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Map<RK, RV> cast<RK, RV>() {
    Closure closure = table["cast"];
    return maybeUnBoxAndBuildArgument<Map<RK, RV>, RK>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  dynamic update(dynamic key, update, {ifAbsent}) {
    Closure closure = table["update"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void updateAll(update) {
    Closure closure = table["updateAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Map<K2, V2> map<K2, V2>(transform) {
    Closure closure = table["map"];
    return maybeUnBoxAndBuildArgument<Map<K2, V2>, K2>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void addEntries(Iterable newEntries) {
    Closure closure = table["addEntries"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeWhere(test) {
    Closure closure = table["removeWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterable<MapEntry<dynamic, dynamic>> get entries {
    Closure closure = table["getEntries"];
    return maybeUnBoxAndBuildArgument<Iterable<MapEntry<dynamic, dynamic>>,
            MapEntry<dynamic, dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSplayTreeMap(
    {required HydroState hydroState, required HydroTable table}) {
  table['splayTreeMap'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedcompare = luaCallerArguments[1];
    Closure? unpackedisValidKey = luaCallerArguments[2];
    return [
      RTManagedSplayTreeMap(
          unpackedcompare != null
              ? (key1, key2) => unpackedcompare.dispatch(
                    [luaCallerArguments[0], key1, key2],
                    parentState: hydroState,
                  )[0]
              : null,
          unpackedisValidKey != null
              ? (potentialKey) => unpackedisValidKey.dispatch(
                    [luaCallerArguments[0], potentialKey],
                    parentState: hydroState,
                  )[0]
              : null,
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  table['splayTreeMapFrom'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedcompare = luaCallerArguments[2];
    Closure? unpackedisValidKey = luaCallerArguments[3];
    return [
      maybeBoxObject<SplayTreeMap>(
          object: SplayTreeMap.from(
              maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              unpackedcompare != null
                  ? (key1, key2) => unpackedcompare.dispatch(
                        [luaCallerArguments[0], key1, key2],
                        parentState: hydroState,
                      )[0]
                  : null,
              unpackedisValidKey != null
                  ? (potentialKey) => unpackedisValidKey.dispatch(
                        [luaCallerArguments[0], potentialKey],
                        parentState: hydroState,
                      )[0]
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['splayTreeMapOf'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedcompare = luaCallerArguments[2];
    Closure? unpackedisValidKey = luaCallerArguments[3];
    return [
      maybeBoxObject<SplayTreeMap>(
          object: SplayTreeMap.of(
              maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              unpackedcompare != null
                  ? (key1, key2) => unpackedcompare.dispatch(
                        [luaCallerArguments[0], key1, key2],
                        parentState: hydroState,
                      )[0]
                  : null,
              unpackedisValidKey != null
                  ? (potentialKey) => unpackedisValidKey.dispatch(
                        [luaCallerArguments[0], potentialKey],
                        parentState: hydroState,
                      )[0]
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['splayTreeMapFromIterable'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedcompare = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['compare']
        : null;
    Closure? unpackedisValidKey = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['isValidKey']
        : null;
    Closure? unpackedkey =
        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['key'] : null;
    Closure? unpackedvalue =
        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['value'] : null;
    return [
      maybeBoxObject<SplayTreeMap>(
          object: SplayTreeMap.fromIterable(
              maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              compare: unpackedcompare != null
                  ? (key1, key2) => unpackedcompare.dispatch(
                        [luaCallerArguments[0], key1, key2],
                        parentState: hydroState,
                      )[0]
                  : null,
              isValidKey: unpackedisValidKey != null
                  ? (potentialKey) => unpackedisValidKey.dispatch(
                        [luaCallerArguments[0], potentialKey],
                        parentState: hydroState,
                      )[0]
                  : null,
              key: unpackedkey != null
                  ? (element) => unpackedkey.dispatch(
                        [luaCallerArguments[0], element],
                        parentState: hydroState,
                      )[0]
                  : null,
              value: unpackedvalue != null
                  ? (element) => unpackedvalue.dispatch(
                        [luaCallerArguments[0], element],
                        parentState: hydroState,
                      )[0]
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['splayTreeMapFromIterables'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedcompare = luaCallerArguments[3];
    Closure? unpackedisValidKey = luaCallerArguments[4];
    return [
      maybeBoxObject<SplayTreeMap>(
          object: SplayTreeMap.fromIterables(
              maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              unpackedcompare != null
                  ? (key1, key2) => unpackedcompare.dispatch(
                        [luaCallerArguments[0], key1, key2],
                        parentState: hydroState,
                      )[0]
                  : null,
              unpackedisValidKey != null
                  ? (potentialKey) => unpackedisValidKey.dispatch(
                        [luaCallerArguments[0], potentialKey],
                        parentState: hydroState,
                      )[0]
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<SplayTreeMap>(boxer: (
      {required SplayTreeMap vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSplayTreeMap(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
