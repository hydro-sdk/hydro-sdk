import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

abstract class Box<T> {
  final HydroTable? table;
  final T? vmObject;

  Box({this.table, this.vmObject});

  T unwrap();
}

class VMManagedBox<T> implements Box<T> {
  final HydroTable? table;
  final HydroState? hydroState;
  final T vmObject;

  VMManagedBox({
    required this.table,
    required this.vmObject,
    required this.hydroState,
  }) {
    table!["vmObject"] = vmObject;
    table!["unwrap"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
  }

  T unwrap() => vmObject;
}

class RTManagedBox<T> extends Box<T?> {
  final HydroTable? table;
  final T vmObject;

  RTManagedBox({required this.table, required this.vmObject}) {
    table!["vmObject"] = vmObject;
  }

  T? unwrap() => table!["unwrap"];
}
