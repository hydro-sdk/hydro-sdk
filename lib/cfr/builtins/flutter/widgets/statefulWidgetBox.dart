import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter/material.dart';

class StatefulWidgetBox extends StatefulWidget {
  final HydroTable table;
  final HydroState parentState;

  StatefulWidgetBox({@required this.table, @required this.parentState});

  @override
  StatefulWidgetBoxState createState() {
    HydroTable newTable = maybeFindInheritedMethod(
        managedObject: table,
        methodName: "createState")([table.map], parentState: parentState)[0];
    return StatefulWidgetBoxState(table: newTable, parentState: parentState);
  }
}

class StatefulWidgetBoxState extends State<StatefulWidgetBox> {
  final HydroTable table;
  final HydroState parentState;

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
    Closure managedBuild = maybeFindInheritedMethod(managedObject: table, methodName: "build");
    var buildResult =
        managedBuild.dispatch([table, context], parentState: parentState)[0];
    return maybeUnwrapAndBuildArgument<Widget>(buildResult,
        parentState: parentState);
  }
}
