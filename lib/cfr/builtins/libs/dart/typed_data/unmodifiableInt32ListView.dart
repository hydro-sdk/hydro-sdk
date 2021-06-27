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

class VMManagedUnmodifiableInt32ListView
    extends VMManagedBox<UnmodifiableInt32ListView> {
  VMManagedUnmodifiableInt32ListView(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['lastIndexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.lastIndexOf(
            maybeUnBoxAndBuildArgument<Object?>(args[1],
                parentState: hydroState),
            maybeUnBoxAndBuildArgument<int?>(args[2], parentState: hydroState))
      ];
    });
    table['indexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.indexOf(
            maybeUnBoxAndBuildArgument<Object?>(args[1],
                parentState: hydroState),
            args[2])
      ];
    });
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
      vmObject.addAll(maybeUnBoxAndBuildArgument<Iterable<int>>(args[1],
          parentState: hydroState));
      return [];
    });
    table['sort'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? compare = args[1];
      vmObject.sort(compare != null
          ? (a, b) => compare.dispatch(
                [args[0], a, b],
                parentState: hydroState,
              )[0]
          : null);
      return [];
    });
    table['shuffle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.shuffle(maybeUnBoxAndBuildArgument<Random?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['indexWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        vmObject.indexWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            args[2])
      ];
    });
    table['lastIndexWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        vmObject.lastIndexWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            args[2])
      ];
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
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[2],
              parentState: hydroState));
      return [];
    });
    table['setAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.setAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[2],
              parentState: hydroState));
      return [];
    });
    table['remove'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.remove(maybeUnBoxAndBuildArgument<Object?>(args[1],
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
      vmObject.removeWhere((element) => test.dispatch(
            [args[0], element],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['retainWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      vmObject.retainWhere((element) => test.dispatch(
            [args[0], element],
            parentState: hydroState,
          )[0]);
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
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[3],
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
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[3],
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
    table['followedBy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.followedBy(
                maybeUnBoxAndBuildArgument<Iterable<int>>(args[1],
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
    table['contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.contains(maybeUnBoxAndBuildArgument<Object?>(args[1],
            parentState: hydroState))
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
      Closure? orElse = args[2]['orElse'];
      return [
        vmObject.firstWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
    });
    table['lastWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        vmObject.lastWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
    });
    table['singleWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        vmObject.singleWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
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

  final UnmodifiableInt32ListView vmObject;
}

class RTManagedUnmodifiableInt32ListView extends UnmodifiableInt32ListView
    implements Box<UnmodifiableInt32ListView> {
  RTManagedUnmodifiableInt32ListView(Int32List list,
      {required this.table, required this.hydroState})
      : super(
          list,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_lastIndexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.lastIndexOf(
            maybeUnBoxAndBuildArgument<Object?>(args[1],
                parentState: hydroState),
            maybeUnBoxAndBuildArgument<int?>(args[2], parentState: hydroState))
      ];
    });
    table['_dart_indexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.indexOf(
            maybeUnBoxAndBuildArgument<Object?>(args[1],
                parentState: hydroState),
            args[2])
      ];
    });
    table['_dart_sublist'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32List>(
            object: sublist(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_cast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: cast(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_add'] = makeLuaDartFunc(func: (List<dynamic> args) {
      add(args[1]);
      return [];
    });
    table['_dart_addAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      addAll(maybeUnBoxAndBuildArgument<Iterable<int>>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_sort'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? compare = args[1];
      sort(compare != null
          ? (a, b) => compare.dispatch(
                [args[0], a, b],
                parentState: hydroState,
              )[0]
          : null);
      return [];
    });
    table['_dart_shuffle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      shuffle(maybeUnBoxAndBuildArgument<Random?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_indexWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        indexWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            args[2])
      ];
    });
    table['_dart_lastIndexWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      return [
        lastIndexWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            args[2])
      ];
    });
    table['_dart_clear'] = makeLuaDartFunc(func: (List<dynamic> args) {
      clear();
      return [];
    });
    table['_dart_insert'] = makeLuaDartFunc(func: (List<dynamic> args) {
      insert(args[1], args[2]);
      return [];
    });
    table['_dart_insertAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      insertAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_setAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      setAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_remove'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        remove(maybeUnBoxAndBuildArgument<Object?>(args[1],
            parentState: hydroState))
      ];
    });
    table['_dart_removeAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [removeAt(args[1])];
    });
    table['_dart_removeLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [removeLast()];
    });
    table['_dart_removeWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      removeWhere((element) => test.dispatch(
            [args[0], element],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['_dart_retainWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      retainWhere((element) => test.dispatch(
            [args[0], element],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['_dart_getRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: getRange(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_setRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      setRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[3],
              parentState: hydroState),
          args[4]);
      return [];
    });
    table['_dart_removeRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      removeRange(args[1], args[2]);
      return [];
    });
    table['_dart_fillRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      fillRange(args[1], args[2], args[3]);
      return [];
    });
    table['_dart_replaceRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      replaceRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Iterable<int>>(args[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_asMap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Map>(
            object: asMap(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_setFirst'] = makeLuaDartFunc(func: (List<dynamic> args) {
      first = (args[1]);
      return [];
    });
    table['_dart_setLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      last = (args[1]);
      return [];
    });
    table['_dart_getLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [length];
    });
    table['_dart_setLength'] = makeLuaDartFunc(func: (List<dynamic> args) {
      length = (args[1]);
      return [];
    });
    table['_dart_getReversed'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [reversed];
    });
    table['_dart_followedBy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: super.followedBy(maybeUnBoxAndBuildArgument<Iterable<int>>(
                args[1],
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
    table['_dart_contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.contains(maybeUnBoxAndBuildArgument<Object?>(args[1],
            parentState: hydroState))
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
      Closure? orElse = args[2]['orElse'];
      return [
        super.firstWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
    });
    table['_dart_lastWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        super.lastWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
    });
    table['_dart_singleWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure? orElse = args[2]['orElse'];
      return [
        super.singleWhere(
            (element) => test.dispatch(
                  [args[0], element],
                  parentState: hydroState,
                )[0],
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
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
    table['_dart_getElementSizeInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [elementSizeInBytes];
    });
    table['_dart_getOffsetInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [offsetInBytes];
    });
    table['_dart_getLengthInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [lengthInBytes];
    });
    table['_dart_getBuffer'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [buffer];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  UnmodifiableInt32ListView unwrap() => this;
  UnmodifiableInt32ListView get vmObject => this;
  @override
  int lastIndexOf(Object? element, [int? start]) {
    Closure closure = table["lastIndexOf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int indexOf(Object? element, [int start = 0]) {
    Closure closure = table["indexOf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Int32List sublist(int start, [int? end]) {
    Closure closure = table["sublist"];
    return maybeUnBoxAndBuildArgument<Int32List>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<R> cast<R>() {
    Closure closure = table["cast"];
    return maybeUnBoxAndBuildArgument<List<R>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void add(int value) {
    Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addAll(Iterable iterable) {
    Closure closure = table["addAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void sort([compare]) {
    Closure closure = table["sort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void shuffle([Random? random]) {
    Closure closure = table["shuffle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int indexWhere(test, [int start = 0]) {
    Closure closure = table["indexWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int lastIndexWhere(test, [int? start]) {
    Closure closure = table["lastIndexWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clear() {
    Closure closure = table["clear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void insert(int index, int element) {
    Closure closure = table["insert"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void insertAll(int index, Iterable iterable) {
    Closure closure = table["insertAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setAll(int index, Iterable iterable) {
    Closure closure = table["setAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool remove(Object? value) {
    Closure closure = table["remove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int removeAt(int index) {
    Closure closure = table["removeAt"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int removeLast() {
    Closure closure = table["removeLast"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeWhere(test) {
    Closure closure = table["removeWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void retainWhere(test) {
    Closure closure = table["retainWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterable<int> getRange(int start, int end) {
    Closure closure = table["getRange"];
    return maybeUnBoxAndBuildArgument<Iterable<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void setRange(int start, int end, Iterable iterable, [int skipCount = 0]) {
    Closure closure = table["setRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeRange(int start, int end) {
    Closure closure = table["removeRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void fillRange(int start, int end, [int? fillValue]) {
    Closure closure = table["fillRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void replaceRange(int start, int end, Iterable replacement) {
    Closure closure = table["replaceRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Map<int, int> asMap() {
    Closure closure = table["asMap"];
    return maybeUnBoxAndBuildArgument<Map<int, int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set first(int value) {
    Closure closure = table["setFirst"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set last(int value) {
    Closure closure = table["setLast"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get length {
    Closure closure = table["getLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set length(int newLength) {
    Closure closure = table["setLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterable<int> get reversed {
    Closure closure = table["getReversed"];
    return maybeUnBoxAndBuildArgument<Iterable<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<int> followedBy(Iterable other) {
    Closure closure = table["followedBy"];
    return maybeUnBoxAndBuildArgument<Iterable<int>>(
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
  Iterable<int> where(test) {
    Closure closure = table["where"];
    return maybeUnBoxAndBuildArgument<Iterable<int>>(
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
  bool contains(Object? element) {
    Closure closure = table["contains"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void forEach(f) {
    Closure closure = table["forEach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int reduce(combine) {
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
  List<int> toList({bool growable = true}) {
    Closure closure = table["toList"];
    return maybeUnBoxAndBuildArgument<List<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Set<int> toSet() {
    Closure closure = table["toSet"];
    return maybeUnBoxAndBuildArgument<Set<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<int> take(int count) {
    Closure closure = table["take"];
    return maybeUnBoxAndBuildArgument<Iterable<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<int> takeWhile(test) {
    Closure closure = table["takeWhile"];
    return maybeUnBoxAndBuildArgument<Iterable<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<int> skip(int count) {
    Closure closure = table["skip"];
    return maybeUnBoxAndBuildArgument<Iterable<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<int> skipWhile(test) {
    Closure closure = table["skipWhile"];
    return maybeUnBoxAndBuildArgument<Iterable<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int firstWhere(test, {orElse}) {
    Closure closure = table["firstWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int lastWhere(test, {orElse}) {
    Closure closure = table["lastWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int singleWhere(test, {orElse}) {
    Closure closure = table["singleWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int elementAt(int index) {
    Closure closure = table["elementAt"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterator<int> get iterator {
    Closure closure = table["getIterator"];
    return maybeUnBoxAndBuildArgument<Iterator<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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
  int get first {
    Closure closure = table["getFirst"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get last {
    Closure closure = table["getLast"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get single {
    Closure closure = table["getSingle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get elementSizeInBytes {
    Closure closure = table["getElementSizeInBytes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get offsetInBytes {
    Closure closure = table["getOffsetInBytes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get lengthInBytes {
    Closure closure = table["getLengthInBytes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ByteBuffer get buffer {
    Closure closure = table["getBuffer"];
    return maybeUnBoxAndBuildArgument<ByteBuffer>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadUnmodifiableInt32ListView(
    {required HydroState hydroState, required HydroTable table}) {
  table['unmodifiableInt32ListView'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedUnmodifiableInt32ListView(
          maybeUnBoxAndBuildArgument<Int32List>(args[1],
              parentState: hydroState),
          table: args[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<UnmodifiableInt32ListView>(boxer: (
      {required UnmodifiableInt32ListView vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedUnmodifiableInt32ListView(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
