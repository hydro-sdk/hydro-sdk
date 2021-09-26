import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class InheritedWidgetBox extends InheritedWidget {
  final HydroTable table;
  final HydroState parentState;
  InheritedWidgetBox({required this.table, required this.parentState})
      : super(
            child: maybeUnBoxAndBuildArgument<Widget, dynamic>(table["child"],
                parentState: parentState));

  @override
  bool updateShouldNotify(InheritedWidgetBox old) => true;
}

void loadInheritedWidget() {
  registerUnBoxer(unBoxer: ({dynamic box, HydroState? parentState}) {
    if (box is HydroTable) {
      String? internalRuntimeType = maybeUnBoxRuntimeType(
          managedObject: box, runtimeTypePropName: "internalRuntimeType");

      if (internalRuntimeType == "InheritedWidget") {
        return InheritedWidgetBox(
          table: box,
          parentState: parentState!,
        );
      }
    }
    return null;
  });
}
