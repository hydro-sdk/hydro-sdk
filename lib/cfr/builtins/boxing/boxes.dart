
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:meta/meta.dart';

abstract class Box<T> {
  final HydroTable table;
  T vmObject;

  Box({@required this.table, @required this.vmObject});

  T unwrap();
}

class VMManagedBox<T> extends Box<T> {
  final HydroTable table;
  T vmObject;

  VMManagedBox({@required this.table, @required this.vmObject}) {
    table["vmObject"] = vmObject;
    table["unwrap"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
  }

  T unwrap() => vmObject;
}

class RTManagedBox<T> extends Box<T> {
  final HydroTable table;
  final T vmObject;

  RTManagedBox({@required this.table, @required this.vmObject}) {
    table["vmObject"] = vmObject;
  }

  T unwrap() => table["unwrap"];
}