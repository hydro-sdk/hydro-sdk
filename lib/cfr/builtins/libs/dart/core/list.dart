import 'dart:math';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedList extends VMManagedBox<List<dynamic>> {
  VMManagedList(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.cast().map((x) => null).toList(),
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
    table['add'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.add(args[1]);
      return [];
    });
    table['addAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addAll(maybeUnBoxAndBuildArgument<Iterable>(args[1],
          parentState: hydroState));
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
      return [vmObject.indexOf(args[1], args[2])];
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
      return [vmObject.lastIndexOf(args[1], args[2])];
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
          maybeUnBoxAndBuildArgument<Iterable>(args[2],
              parentState: hydroState));
      return [];
    });
    table['setAll'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.setAll(
          args[1],
          maybeUnBoxAndBuildArgument<Iterable>(args[2],
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
    table['sublist'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object:
                vmObject.sublist(args[1], args[2]).map((x) => null).toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
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
          maybeUnBoxAndBuildArgument<Iterable>(args[3],
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
          maybeUnBoxAndBuildArgument<Iterable>(args[3],
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
    table['followedBy'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.followedBy(maybeUnBoxAndBuildArgument<Iterable>(
                args[1],
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
            object: vmObject
                .expand((element) => maybeUnBoxAndBuildArgument<Iterable>(
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
          )[0]);
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
            object: vmObject
                .toList(growable: args[1]['growable'])
                .map((x) => null)
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

  final List vmObject;
}

void loadList({@required HydroState hydroState, @required HydroTable table}) {
  table['list'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: List(args[1]).map((x) => null).toList(),
          hydroState: hydroState,
          table: args[0])
    ];
  });
  table['listFilled'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: List.filled(args[1], args[2], growable: args[3]['growable'])
              .map((x) => null)
              .toList(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['listEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: List.empty(growable: args[1]['growable'])
              .map((x) => null)
              .toList(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['listFrom'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: List.from(
                  maybeUnBoxAndBuildArgument<Iterable>(args[1],
                      parentState: hydroState),
                  growable: args[2]['growable'])
              .map((x) => null)
              .toList(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['listOf'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: List.of(
                  maybeUnBoxAndBuildArgument<Iterable>(args[1],
                      parentState: hydroState),
                  growable: args[2]['growable'])
              .map((x) => null)
              .toList(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['listGenerate'] = makeLuaDartFunc(func: (List<dynamic> args) {
    Closure generator = args[2];

    return [
      maybeBoxObject<List<dynamic>>(
          object: List.generate(
                  args[1],
                  (index) => generator.dispatch(
                        [args[0], index],
                        parentState: hydroState,
                      )[0],
                  growable: args[3]['growable'])
              .map((x) => null)
              .toList(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['listUnmodifiable'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: List.unmodifiable(maybeUnBoxAndBuildArgument<Iterable>(
                  args[1],
                  parentState: hydroState))
              .map((x) => null)
              .toList(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['listCastFrom'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: List.castFrom(maybeUnBoxAndBuildArgument<List>(args[1],
                  parentState: hydroState))
              .map((x) => null)
              .toList(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['listCopyRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
    List.copyRange(
        maybeUnBoxAndBuildArgument<List>(args[1], parentState: hydroState),
        args[2],
        maybeUnBoxAndBuildArgument<List>(args[3], parentState: hydroState),
        args[4],
        args[5]);
    return [];
  });
  table['listWriteIterable'] = makeLuaDartFunc(func: (List<dynamic> args) {
    List.writeIterable(
        maybeUnBoxAndBuildArgument<List>(args[1], parentState: hydroState),
        args[2],
        maybeUnBoxAndBuildArgument<Iterable>(args[3], parentState: hydroState));
    return [];
  });
  registerBoxer<List>(boxer: (
      {@required List vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedList(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
