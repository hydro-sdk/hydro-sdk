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

class VMManagedUnmodifiableFloat32x4ListView
    extends VMManagedBox<UnmodifiableFloat32x4ListView> {
  VMManagedUnmodifiableFloat32x4ListView(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['sublist'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4List>(
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
      vmObject.add(maybeUnBoxAndBuildArgument<Float32x4>(args[1],
          parentState: hydroState));
      return [];
    });
    table['addAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addAll(maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[1],
          parentState: hydroState));
      return [];
    });
    table['sort'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure compare = args[1];
      vmObject.sort((a, b) => compare.dispatch(
            [args[0], a, b],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['shuffle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.shuffle(
          maybeUnBoxAndBuildArgument<Random>(args[1], parentState: hydroState));
      return [];
    });
    table['indexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.indexOf(
            maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                parentState: hydroState),
            args[2])
      ];
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
    table['lastIndexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.lastIndexOf(
            maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                parentState: hydroState),
            args[2])
      ];
    });
    table['clear'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.clear();
      return [];
    });
    table['insert'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.insert(
          args[1],
          maybeUnBoxAndBuildArgument<Float32x4>(args[2],
              parentState: hydroState));
      return [];
    });
    table['insertAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.insertAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[2],
              parentState: hydroState));
      return [];
    });
    table['setAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.setAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[2],
              parentState: hydroState));
      return [];
    });
    table['remove'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.remove(maybeUnBoxAndBuildArgument<Object>(args[1],
            parentState: hydroState))
      ];
    });
    table['removeAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.removeAt(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['removeLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.removeLast(),
            hydroState: hydroState,
            table: HydroTable())
      ];
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
          maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[3],
              parentState: hydroState),
          args[4]);
      return [];
    });
    table['removeRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.removeRange(args[1], args[2]);
      return [];
    });
    table['fillRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.fillRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Float32x4>(args[3],
              parentState: hydroState));
      return [];
    });
    table['replaceRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.replaceRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[3],
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
      vmObject.first = (maybeUnBoxAndBuildArgument<Float32x4>(args[1],
          parentState: hydroState));
      return [];
    });
    table['setLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.last = (maybeUnBoxAndBuildArgument<Float32x4>(args[1],
          parentState: hydroState));
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
                maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[1],
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
        vmObject.contains(maybeUnBoxAndBuildArgument<Object>(args[1],
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
        maybeBoxObject<Float32x4>(
            object: vmObject.reduce(
                (value, element) => maybeUnBoxAndBuildArgument<Float32x4>(
                    combine.dispatch(
                      [args[0], value, element],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
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
            object: vmObject
                .toList(growable: args[1]['growable'])
                .map((x) => maybeBoxObject<Float32x4>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
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
        maybeBoxObject<Float32x4>(
            object: vmObject.firstWhere(
                (element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0],
                orElse: () => maybeUnBoxAndBuildArgument<Float32x4>(
                    orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['lastWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.lastWhere(
                (element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0],
                orElse: () => maybeUnBoxAndBuildArgument<Float32x4>(
                    orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['singleWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.singleWhere(
                (element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0],
                orElse: () => maybeUnBoxAndBuildArgument<Float32x4>(
                    orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['elementAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.elementAt(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
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
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.first, hydroState: hydroState, table: HydroTable())
      ];
    });
    table['getLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.last, hydroState: hydroState, table: HydroTable())
      ];
    });
    table['getSingle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.single,
            hydroState: hydroState,
            table: HydroTable())
      ];
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

  final UnmodifiableFloat32x4ListView vmObject;
}

class RTManagedUnmodifiableFloat32x4ListView
    extends UnmodifiableFloat32x4ListView
    implements Box<UnmodifiableFloat32x4ListView> {
  RTManagedUnmodifiableFloat32x4ListView(Float32x4List list,
      {required this.table, required this.hydroState})
      : super(
          list,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_sublist'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4List>(
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
      add(maybeUnBoxAndBuildArgument<Float32x4>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_addAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      addAll(maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_sort'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure compare = args[1];
      sort((a, b) => compare.dispatch(
            [args[0], a, b],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['_dart_shuffle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      shuffle(
          maybeUnBoxAndBuildArgument<Random>(args[1], parentState: hydroState));
      return [];
    });
    table['_dart_indexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        indexOf(
            maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                parentState: hydroState),
            args[2])
      ];
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
    table['_dart_lastIndexOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        lastIndexOf(
            maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                parentState: hydroState),
            args[2])
      ];
    });
    table['_dart_clear'] = makeLuaDartFunc(func: (List<dynamic> args) {
      clear();
      return [];
    });
    table['_dart_insert'] = makeLuaDartFunc(func: (List<dynamic> args) {
      insert(
          args[1],
          maybeUnBoxAndBuildArgument<Float32x4>(args[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_insertAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      insertAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_setAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      setAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_remove'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        remove(maybeUnBoxAndBuildArgument<Object>(args[1],
            parentState: hydroState))
      ];
    });
    table['_dart_removeAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: removeAt(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_removeLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: removeLast(), hydroState: hydroState, table: HydroTable())
      ];
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
          maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[3],
              parentState: hydroState),
          args[4]);
      return [];
    });
    table['_dart_removeRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      removeRange(args[1], args[2]);
      return [];
    });
    table['_dart_fillRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      fillRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Float32x4>(args[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_replaceRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      replaceRange(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[3],
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
      first = (maybeUnBoxAndBuildArgument<Float32x4>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_setLast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      last = (maybeUnBoxAndBuildArgument<Float32x4>(args[1],
          parentState: hydroState));
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
            object: super.followedBy(
                maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(args[1],
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
        super.contains(maybeUnBoxAndBuildArgument<Object>(args[1],
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
        maybeBoxObject<Float32x4>(
            object: super.reduce(
                (value, element) => maybeUnBoxAndBuildArgument<Float32x4>(
                    combine.dispatch(
                      [args[0], value, element],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
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
            object: super
                .toList(growable: args[1]['growable'])
                .map((x) => maybeBoxObject<Float32x4>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
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
        maybeBoxObject<Float32x4>(
            object: super.firstWhere(
                (element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0],
                orElse: () => maybeUnBoxAndBuildArgument<Float32x4>(
                    orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_lastWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        maybeBoxObject<Float32x4>(
            object: super.lastWhere(
                (element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0],
                orElse: () => maybeUnBoxAndBuildArgument<Float32x4>(
                    orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_singleWhere'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2]['orElse'];
      return [
        maybeBoxObject<Float32x4>(
            object: super.singleWhere(
                (element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0],
                orElse: () => maybeUnBoxAndBuildArgument<Float32x4>(
                    orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_elementAt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: super.elementAt(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
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

  UnmodifiableFloat32x4ListView unwrap() => this;
  UnmodifiableFloat32x4ListView get vmObject => this;
  @override
  Float32x4List sublist(int start, [int end]) {
    Closure closure = table["sublist"];
    return maybeUnBoxAndBuildArgument<Float32x4List>(
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
  void add(Float32x4 value) {
    Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addAll(Iterable<Float32x4> iterable) {
    Closure closure = table["addAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void sort([compare]) {
    Closure closure = table["sort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void shuffle([Random random]) {
    Closure closure = table["shuffle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int indexOf(Float32x4 element, [int start = 0]) {
    Closure closure = table["indexOf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int indexWhere(test, [int start = 0]) {
    Closure closure = table["indexWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int lastIndexWhere(test, [int start]) {
    Closure closure = table["lastIndexWhere"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int lastIndexOf(Float32x4 element, [int start]) {
    Closure closure = table["lastIndexOf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clear() {
    Closure closure = table["clear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void insert(int index, Float32x4 element) {
    Closure closure = table["insert"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void insertAll(int index, Iterable<Float32x4> iterable) {
    Closure closure = table["insertAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setAll(int index, Iterable<Float32x4> iterable) {
    Closure closure = table["setAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool remove(Object value) {
    Closure closure = table["remove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Float32x4 removeAt(int index) {
    Closure closure = table["removeAt"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Float32x4 removeLast() {
    Closure closure = table["removeLast"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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
  Iterable<Float32x4> getRange(int start, int end) {
    Closure closure = table["getRange"];
    return maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void setRange(int start, int end, Iterable<Float32x4> iterable,
      [int skipCount = 0]) {
    Closure closure = table["setRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeRange(int start, int end) {
    Closure closure = table["removeRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void fillRange(int start, int end, [Float32x4 fillValue]) {
    Closure closure = table["fillRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void replaceRange(int start, int end, Iterable<Float32x4> replacement) {
    Closure closure = table["replaceRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Map<int, Float32x4> asMap() {
    Closure closure = table["asMap"];
    return maybeUnBoxAndBuildArgument<Map<int, Float32x4>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set first(Float32x4 value) {
    Closure closure = table["setFirst"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set last(Float32x4 value) {
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
  Iterable<Float32x4> get reversed {
    Closure closure = table["getReversed"];
    return maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<Float32x4> followedBy(Iterable<Float32x4> other) {
    Closure closure = table["followedBy"];
    return maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(
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
  Iterable<Float32x4> where(test) {
    Closure closure = table["where"];
    return maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(
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
  bool contains(Object element) {
    Closure closure = table["contains"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void forEach(f) {
    Closure closure = table["forEach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Float32x4 reduce(combine) {
    Closure closure = table["reduce"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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
  List<Float32x4> toList({bool growable = true}) {
    Closure closure = table["toList"];
    return maybeUnBoxAndBuildArgument<List<Float32x4>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Set<Float32x4> toSet() {
    Closure closure = table["toSet"];
    return maybeUnBoxAndBuildArgument<Set<Float32x4>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<Float32x4> take(int count) {
    Closure closure = table["take"];
    return maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<Float32x4> takeWhile(test) {
    Closure closure = table["takeWhile"];
    return maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<Float32x4> skip(int count) {
    Closure closure = table["skip"];
    return maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<Float32x4> skipWhile(test) {
    Closure closure = table["skipWhile"];
    return maybeUnBoxAndBuildArgument<Iterable<Float32x4>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Float32x4 firstWhere(test, {orElse}) {
    Closure closure = table["firstWhere"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Float32x4 lastWhere(test, {orElse}) {
    Closure closure = table["lastWhere"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Float32x4 singleWhere(test, {orElse}) {
    Closure closure = table["singleWhere"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Float32x4 elementAt(int index) {
    Closure closure = table["elementAt"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterator<Float32x4> get iterator {
    Closure closure = table["getIterator"];
    return maybeUnBoxAndBuildArgument<Iterator<Float32x4>>(
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
  Float32x4 get first {
    Closure closure = table["getFirst"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Float32x4 get last {
    Closure closure = table["getLast"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Float32x4 get single {
    Closure closure = table["getSingle"];
    return maybeUnBoxAndBuildArgument<Float32x4>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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

void loadUnmodifiableFloat32x4ListView(
    {required HydroState hydroState, required HydroTable table}) {
  table['unmodifiableFloat32x4ListView'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedUnmodifiableFloat32x4ListView(
          maybeUnBoxAndBuildArgument<Float32x4List>(args[1],
              parentState: hydroState),
          table: args[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<UnmodifiableFloat32x4ListView>(boxer: (
      {required UnmodifiableFloat32x4ListView vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedUnmodifiableFloat32x4ListView(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
