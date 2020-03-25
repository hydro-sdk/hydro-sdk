import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/widgets/statefulWidgetBox.dart';
import 'package:flua/builtins/flutter/widgets/statelessWidgetBox.dart';
import 'package:flutter/widgets.dart';
import 'package:flua/vm/table.dart';

dynamic maybeUnwrapAndBuildArgument(dynamic arg, {BuildContext context}) {
  //Unboxed Flutter widgets
  if (arg is Widget) {
    return arg;
  }
  //Synthetic Flutter widgets
  if (arg is HydroTable) {
    //Metatable will contain an inherited build function from the StatlessWidget base class
    Closure createState =
        arg?.metatable != null ? arg.metatable["createState"] : null;
    if (createState != null) {
      return StatefulWidgetBox(table: arg);
      // return maybeUnwrapAndBuildArgument(createState([arg.map])[0]);
    }

    Closure build = arg?.metatable != null ? arg.metatable["build"] : null;
    if (build != null) {
      if (arg["runtimeType"] == "PreferredSize") {
        return StatelessPreferredSizeBox(
          table: arg,
        );
      }
      return StatelessWidgetBox(table: arg);
    }

    dynamic unwrap;
    unwrap = arg?.metatable != null ? arg.metatable["unwrap"] : null;
    if (unwrap == null) {
      unwrap = arg.map["unwrap"];
    }
    if (unwrap != null) {
      //Call the objects synthetic unwrap method with itself as first arg
      //(Effectively a this call) and unbox the result
      return maybeUnwrapAndBuildArgument(unwrap([arg.map, context])[0]);
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
