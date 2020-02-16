import 'package:flua/5_2/closure.dart';
import 'package:flua/5_2/flutter/widgets/statefulWidgetBox.dart';
import 'package:flutter/widgets.dart';
import 'package:flua/5_2/table.dart' as l;

dynamic maybeUnwrapAndBuildArgument(dynamic arg) {
  //Unboxed Flutter widgets
  if (arg is Widget) {
    return arg;
  }
  //Synthetic Flutter widgets
  if (arg is l.Table) {
    //Metatable will contain an inherited build function from the StatlessWidget base class
    if (arg.metatable != null) {
      Closure build = arg.metatable["build"];
      if (build != null) {
        //Call the widgets synthetic build method with the itself as first arg
        //(Effectively a this call) and unbox the result
        return maybeUnwrapAndBuildArgument(build([arg.map])[0]);
      }

      Closure createState = arg.metatable["createState"];
      if (createState != null) {
        return StatefulWidgetBox(table: arg);
        // return maybeUnwrapAndBuildArgument(createState([arg.map])[0]);
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
