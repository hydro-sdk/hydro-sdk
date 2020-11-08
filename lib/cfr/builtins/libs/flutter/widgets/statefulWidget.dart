import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/managedBuild.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
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
            managedObject: table, methodName: "createState")
        .dispatch([table], parentState: parentState)[0];
    return StatefulWidgetBoxState(table: newTable, parentState: parentState);
  }
}

class VMManagedStatefulWidget extends VMManagedBox<StatefulWidgetBox> {
  final HydroTable table;
  final HydroState hydroState;
  final StatefulWidgetBox vmObject;
  VMManagedStatefulWidget({
    @required this.table,
    @required this.hydroState,
    @required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {}
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
        args[1].dispatch(
          [args[0]],
          parentState: parentState,
          resetEnclosingLexicalEnvironment: true,
        );
      }
      setState(() {});
      return [];
    });
  }

  @override
  void initState() {
    super.initState();
    Closure managedInitState =
        maybeFindInheritedMethod(managedObject: table, methodName: "initState");
    managedInitState.dispatch([table],
        parentState: parentState, resetEnclosingLexicalEnvironment: true);
  }

  @override
  void dispose() {
    super.dispose();
    Closure managedDispose =
        maybeFindInheritedMethod(managedObject: table, methodName: "dispose");
    managedDispose.dispatch([table],
        parentState: parentState, resetEnclosingLexicalEnvironment: true);
  }

  @override
  Widget build(BuildContext context) {
    return managedBuild(
        context: context, hydroState: parentState, hydroTable: table);
  }
}

void loadStatefulWidget(
    {@required HydroState luaState, @required HydroTable table}) {
  registerBoxer<StatefulWidgetBox>(boxer: (
      {StatefulWidgetBox vmObject, HydroState hydroState, HydroTable table}) {
    return VMManagedStatefulWidget(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });

  registerUnBoxer(unBoxer: ({dynamic box, HydroState parentState}) {
    if (box is HydroTable) {
      //Metatable will contain an inherited build function from the StatlessWidget base class
      Closure createState = maybeFindInheritedMethod(
          managedObject: box, methodName: "createState");
      if (createState != null) {
        return StatefulWidgetBox(
          table: box,
          parentState: parentState,
        );
      }
    }
    return null;
  });

  table["statefulWidget"] = makeLuaDartFunc(func: (List<dynamic> args) {
    HydroTable caller = args[0];
    return [
      maybeBoxObject(
          object: StatefulWidgetBox(
            parentState: luaState,
            table: caller,
          ),
          hydroState: luaState,
          table: caller)
    ];
  });
}
