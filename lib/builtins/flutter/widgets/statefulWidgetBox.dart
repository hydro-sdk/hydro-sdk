import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

class StatefulWidgetBox extends StatefulWidget {
  final l.Table table;

  StatefulWidgetBox({@required this.table});

  @override
  StatefulWidgetBoxState createState() {
    l.Table newTable = table.metatable["createState"]([table.map])[0];
    return StatefulWidgetBoxState(table: newTable);
  }
}

class StatefulWidgetBoxState extends State<StatefulWidgetBox> {
  final l.Table table;

  StatefulWidgetBoxState({@required this.table}) {
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
    return maybeUnwrapAndBuildArgument(table);
  }
}
