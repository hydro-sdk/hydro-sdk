import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flua/luastate.dart';
import 'package:flutter/material.dart';

class StatefulWidgetBox extends StatefulWidget {
  final HydroTable table;
  final LuaState parentState;

  StatefulWidgetBox({@required this.table, @required this.parentState});

  @override
  StatefulWidgetBoxState createState() {
    HydroTable newTable = table.metatable["createState"]([table.map],
        parentState: parentState)[0];
    return StatefulWidgetBoxState(table: newTable, parentState: parentState);
  }
}

class StatefulWidgetBoxState extends State<StatefulWidgetBox> {
  final HydroTable table;
  final LuaState parentState;

  StatefulWidgetBoxState({@required this.table, @required this.parentState}) {
    table.map["setState"] = makeLuaDartFunc(func: (List<dynamic> args) {
      //args[0] will be a self reference
      //args[1] will be setState closure to call
      //Do a this call of args[1]
      if (args[1] != null && args[1] is Closure) {
        args[1]([args[0]]);
      }
      setState(() {});
      return [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Closure managedBuild = table.metatable["build"];
    var buildResult =
        managedBuild.dispatch([table, context], parentState: parentState)[0];
    return maybeUnwrapAndBuildArgument<Widget>(buildResult,
        parentState: parentState);
  }
}
