import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class ChangeNotifierBox extends ChangeNotifier {
  final HydroTable table;

  ChangeNotifierBox({required this.table}) {
    table.map["notifyListeners"] = makeLuaDartFunc(func: (List<dynamic> args) {
      notifyListeners();
      return [];
    });
  }
}

void loadChangeNotifier() {
  registerUnBoxer(unBoxer: ({dynamic box, HydroState? parentState}) {
    if (box is HydroTable) {
      String? internalRuntimeType = maybeUnBoxRuntimeType(
          managedObject: box, runtimeTypePropName: "internalRuntimeType");

      if (internalRuntimeType == "ChangeNotifier") {
        return ChangeNotifierBox(table: box);
      }
    }
    return null;
  });
}
