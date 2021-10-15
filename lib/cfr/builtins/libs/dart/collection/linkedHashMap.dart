import 'dart:collection';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLinkedHashMap
    extends VMManagedBox<LinkedHashMap<dynamic, dynamic>> {
  VMManagedLinkedHashMap(
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
    table['containsValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.containsValue(maybeUnBoxAndBuildArgument<Object?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
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
    table['map'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedconvert = luaCallerArguments[1];
      return [
        maybeBoxObject<Map>(
            object: vmObject.map((key, value) =>
                maybeUnBoxAndBuildArgument<MapEntry<dynamic, dynamic>, dynamic>(
                    unpackedconvert.dispatch(
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
    table['forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      vmObject.forEach((key, value) => unpackedaction.dispatch(
            [luaCallerArguments[0], key, value],
            parentState: hydroState,
          ));
      return [];
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
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
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

  final LinkedHashMap vmObject;
}

void loadLinkedHashMap(
    {required HydroState hydroState, required HydroTable table}) {
  table['linkedHashMap'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedequals =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['equals'] : null;
    Closure? unpackedhashCode = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['hashCode']
        : null;
    Closure? unpackedisValidKey = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['isValidKey']
        : null;
    return [
      maybeBoxObject<LinkedHashMap>(
          object: LinkedHashMap(
              equals: unpackedequals != null
                  ? (_, __) => unpackedequals.dispatch(
                        [luaCallerArguments[0], _, __],
                        parentState: hydroState,
                      )[0]
                  : null,
              hashCode: unpackedhashCode != null
                  ? (_) => unpackedhashCode.dispatch(
                        [luaCallerArguments[0], _],
                        parentState: hydroState,
                      )[0]
                  : null,
              isValidKey: unpackedisValidKey != null
                  ? (_) => unpackedisValidKey.dispatch(
                        [luaCallerArguments[0], _],
                        parentState: hydroState,
                      )[0]
                  : null),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['linkedHashMapIdentity'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<LinkedHashMap>(
          object: LinkedHashMap.identity(),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['linkedHashMapFrom'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<LinkedHashMap>(
          object: LinkedHashMap.from(
              maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['linkedHashMapOf'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<LinkedHashMap>(
          object: LinkedHashMap.of(
              maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['linkedHashMapFromIterable'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedkey =
        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['key'] : null;
    Closure? unpackedvalue =
        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['value'] : null;
    return [
      maybeBoxObject<LinkedHashMap>(
          object: LinkedHashMap.fromIterable(
              maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
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
  table['linkedHashMapFromIterables'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<LinkedHashMap>(
          object: LinkedHashMap.fromIterables(
              maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['linkedHashMapFromEntries'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<LinkedHashMap>(
          object: LinkedHashMap.fromEntries(maybeUnBoxAndBuildArgument<
                  Iterable<MapEntry<dynamic, dynamic>>,
                  MapEntry<dynamic, dynamic>>(luaCallerArguments[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<LinkedHashMap>(boxer: (
      {required LinkedHashMap vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLinkedHashMap(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
