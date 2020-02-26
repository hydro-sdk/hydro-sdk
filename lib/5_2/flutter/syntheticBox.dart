import 'package:flua/5_2/closure.dart';
import 'package:flua/5_2/flutter/widgets/statefulWidgetBox.dart';
import 'package:flua/5_2/flutter/widgets/statelessWidgetBox.dart';
import 'package:flutter/widgets.dart';
import 'package:flua/5_2/table.dart' as l;

dynamic maybeUnwrapAndBuildArgument(dynamic arg, {BuildContext context}) {
  //Unboxed Flutter widgets
  if (arg is Widget) {
    return arg;
  }
  //Synthetic Flutter widgets
  if (arg is l.Table) {
    //Metatable will contain an inherited build function from the StatlessWidget base class
    if (arg.metatable != null) {
      Closure createState = arg.metatable["createState"];
      if (createState != null) {
        return StatefulWidgetBox(table: arg);
        // return maybeUnwrapAndBuildArgument(createState([arg.map])[0]);
      }

      Closure build = arg.metatable["build"];
      if (build != null) {
        return StatelessWidgetBox(table: arg);
      }

      Closure unwrap;
      unwrap = arg.metatable["unwrap"];
      if (unwrap == null) {
        unwrap = arg.map["unwrap"];
      }
      if (unwrap != null) {
        //Call the objects synthetic unwrap method with itself as first arg
        //(Effectively a this call) and unbox the result
        return maybeUnwrapAndBuildArgument(unwrap([arg.map, context])[0]);
      }
    }
    //Unbox an array of synthetic widgets
    if (arg.arr != null && arg.arr.isNotEmpty) {
      return arg.arr
          .map((x) => maybeUnwrapAndBuildArgument(x))
          .toList()
          .cast<Widget>();
    }
  }
  return arg;
}

abstract class Box<T> {
  final l.Table table;
  T vmObject;

  Box({@required this.table, @required this.vmObject});

  T unwrap();
}

class VMManagedBox<T> extends Box<T> {
  final l.Table table;
  T vmObject;

  VMManagedBox({@required this.table, @required this.vmObject}) {
    table["vmObject"] = vmObject;
  }

  T unwrap() => vmObject;
}

class RTManagedBox<T> extends Box<T> {
  final l.Table table;
  final T vmObject;

  RTManagedBox({@required this.table, @required this.vmObject}) {
    table["vmObject"] = vmObject;
  }

  T unwrap() => table["unwrap"];
}
