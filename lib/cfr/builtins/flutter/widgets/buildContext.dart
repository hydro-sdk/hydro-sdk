import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/inheritedWidgetBox.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedBuildContext extends VMManagedBox<BuildContext> {
  final HydroTable table;
  final BuildContext context;
  final HydroState hydroState;
  VMManagedBuildContext({
    @required this.table,
    @required this.context,
    @required this.hydroState,
  }) : super(table: table, vmObject: context) {
    /*
      The real ancestorInheritedElementForWidgetOfExactType is deprecated https://api.flutter.dev/flutter/widgets/BuildContext/ancestorInheritedElementForWidgetOfExactType.html
      This accomplishes the same thing with the same signature
    */
    table["ancestorInheritedElementForWidgetOfExactType"] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      HydroTable res;
      BuildContext activeContext = maybeUnwrapAndBuildArgument<BuildContext>(
          args[0],
          parentState: hydroState);

      activeContext.visitAncestorElements((element) {
        if (element.widget is InheritedWidgetBox) {
          InheritedWidgetBox inheritedWidgetBox = element.widget;
          if (inheritedWidgetBox.table["runtimeType"]["displayName"] ==
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
