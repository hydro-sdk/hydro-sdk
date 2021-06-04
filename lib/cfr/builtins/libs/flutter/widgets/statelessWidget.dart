import 'package:flutter/widgets.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/managedBuild.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class StatelessWidgetBox extends StatelessWidget {
  final HydroTable table;
  final HydroState? parentState;

  StatelessWidgetBox({required this.table, required this.parentState});

  @override
  Widget build(BuildContext context) {
    return managedBuild(
        context: context, hydroState: parentState!, hydroTable: table)!;
  }
}

void loadStatelessWidget(
    {required HydroState luaState, required HydroTable table}) {
  registerUnBoxer(unBoxer: ({dynamic box, HydroState? parentState}) {
    if (box is HydroTable) {
      Closure? build =
          maybeFindInheritedMethod(managedObject: box, methodName: "build");
      if (build != null) {
        return StatelessWidgetBox(
          table: box,
          parentState: parentState,
        );
      }
    }
    return null;
  });
}
