import 'dart:collection';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedHasNextIterator extends VMManagedBox<HasNextIterator<dynamic>> {
  VMManagedHasNextIterator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getHasNext'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasNext,
      ];
    });
    table['next'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.next(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final HasNextIterator vmObject;
}

class RTManagedHasNextIterator extends HasNextIterator
    implements Box<HasNextIterator> {
  RTManagedHasNextIterator(Iterator<dynamic> _iterator,
      {required this.table, required this.hydroState})
      : super(
          _iterator,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getHasNext'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasNext];
    });
    table['_dart_next'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.next()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  HasNextIterator unwrap() => this;
  HasNextIterator get vmObject => this;
  @override
  bool get hasNext {
    Closure closure = table["getHasNext"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic next() {
    Closure closure = table["next"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadHasNextIterator(
    {required HydroState hydroState, required HydroTable table}) {
  table['hasNextIterator'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedHasNextIterator(
          maybeUnBoxAndBuildArgument<Iterator<dynamic>, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<HasNextIterator>(boxer: (
      {required HasNextIterator vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedHasNextIterator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
