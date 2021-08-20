import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/inheritedWidget.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedBuildContext extends VMManagedBox<BuildContext> {
  final HydroTable table;
  final BuildContext vmObject;
  final HydroState hydroState;
  VMManagedBuildContext({
    required this.table,
    required this.vmObject,
    required this.hydroState,
  }) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    /*
      The real ancestorInheritedElementForWidgetOfExactType is deprecated https://api.flutter.dev/flutter/widgets/BuildContext/ancestorInheritedElementForWidgetOfExactType.html
      This accomplishes the same thing with the same signature
    */
    table["ancestorInheritedElementForWidgetOfExactType"] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      HydroTable? res;
      BuildContext activeContext =
          maybeUnBoxAndBuildArgument<BuildContext, dynamic>(
        args[0],
        parentState: hydroState,
      );

      activeContext.visitAncestorElements((element) {
        if (element.widget is InheritedWidgetBox) {
          InheritedWidgetBox inheritedWidgetBox =
              element.widget as InheritedWidgetBox;
          if (maybeUnBoxRuntimeType(
                  managedObject: inheritedWidgetBox.table,
                  runtimeTypePropName: "runtimeType") ==
              args[1]["displayName"]) {
            res = inheritedWidgetBox.table;
            return false;
          }
        }
        return true;
      });

      return [res];
    });
  }
}

void loadBuildContext() {
  registerBoxer<BuildContext>(boxer: ({
    required BuildContext vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedBuildContext(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });
}
