import 'dart:collection';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedMapView extends VMManagedBox<MapView<dynamic, dynamic>> {
  VMManagedMapView(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.cast(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['addAll'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addAll(
          maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['clear'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clear();
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
    table['forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      vmObject.forEach((key, value) => unpackedaction.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          ));
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
    table['getLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.length,
      ];
    });
    table['getKeys'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.keys, hydroState: hydroState, table: HydroTable()),
      ];
    });
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
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
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
    table['getEntries'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.entries,
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
    table['removeWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      vmObject.removeWhere((key, value) => unpackedtest.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          )[0]);
      return [];
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

  final MapView vmObject;
}

class RTManagedMapView extends MapView implements Box<MapView> {
  RTManagedMapView(Map<dynamic, dynamic> map$,
      {required this.table, required this.hydroState})
      : super(
          map$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_cast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: super.cast(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_addAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addAll(maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_clear'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clear();
      return [];
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
    table['_dart_forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      super.forEach((key, value) => unpackedaction.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          ));
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
    table['_dart_getLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.length];
    });
    table['_dart_getKeys'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.keys];
    });
    table['_dart_remove'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.remove(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getValues'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.values];
    });
    table['_dart_getEntries'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.entries];
    });
    table['_dart_addEntries'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addEntries(maybeUnBoxAndBuildArgument<
              Iterable<MapEntry<dynamic, dynamic>>,
              MapEntry<dynamic, dynamic>>(luaCallerArguments[1],
          parentState: hydroState));
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
    table['_dart_removeWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      super.removeWhere((key, value) => unpackedtest.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  MapView unwrap() => this;
  MapView get vmObject => this;
  @override
  Map<RK, RV> cast<RK, RV>() {
    Closure closure = table["cast"];
    return maybeUnBoxAndBuildArgument<Map<RK, RV>, RK>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void addAll(Map other) {
    Closure closure = table["addAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clear() {
    Closure closure = table["clear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic putIfAbsent(dynamic key, ifAbsent) {
    Closure closure = table["putIfAbsent"];
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
  void forEach(action) {
    Closure closure = table["forEach"];
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
  int get length {
    Closure closure = table["getLength"];
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
  dynamic? remove(Object? key) {
    Closure closure = table["remove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterable<dynamic> get values {
    Closure closure = table["getValues"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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
  void addEntries(Iterable entries) {
    Closure closure = table["addEntries"];
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
  void removeWhere(test) {
    Closure closure = table["removeWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMapView({required HydroState hydroState, required HydroTable table}) {
  table['mapView'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedMapView(
          maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<MapView>(boxer: (
      {required MapView vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedMapView(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
