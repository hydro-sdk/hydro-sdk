import 'dart:collection';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedMapBase extends VMManagedBox<MapBase<dynamic, dynamic>> {
  VMManagedMapBase(
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
    table['clear'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clear();
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
    table['forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      vmObject.forEach((key, value) => unpackedaction.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          ));
      return [];
    });
    table['addAll'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addAll(
          maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['containsValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.containsValue(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
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
    table['containsKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.containsKey(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getKeys'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.keys, hydroState: hydroState, table: HydroTable()),
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
    table['getValues'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.values,
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

  final MapBase vmObject;
}

void loadMapBase({required HydroState hydroState, required HydroTable table}) {
  table['mapBaseMapToString'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      MapBase.mapToString(
          maybeUnBoxAndBuildArgument<Map<Object?, Object?>, Object?>(
              luaCallerArguments[1],
              parentState: hydroState)),
    ];
  });
  registerBoxer<MapBase>(boxer: (
      {required MapBase vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedMapBase(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
