import 'package:flutter/widgets.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/runtimeTypeToGeneric.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class RTManagedGlobalKey extends RTManagedBox<GlobalKey> {
  final HydroTable table;
  final GlobalKey vmObject;
  final HydroState parentState;

  RTManagedGlobalKey(
      {required this.table, required this.parentState, required this.vmObject})
      : super(
          table: table,
          vmObject: vmObject,
        ) {
    table["currentState"] = makeLuaDartFunc(func: (List<dynamic> args) {
      HydroTable currentState = HydroTable();
      currentState["insertItem"] = (List<dynamic> args) {
        (vmObject.currentState as dynamic).insertItem(args[1]);
      };

      currentState["removeItem"] = (List<dynamic> args) {
        (vmObject.currentState as dynamic).removeItem(args[1],
            (BuildContext context, Animation<double> animation) {
          Closure closure = args[2];
          return maybeUnBoxAndBuildArgument<Widget, dynamic>(
              closure.dispatch([args[0], context, animation],
                  parentState: parentState)[0],
              parentState: parentState) as Widget;
        });
      };
      return [currentState];
    });
  }
}

void loadGlobalKey({required HydroState luaState, required HydroTable table}) {
  table["globalKeyCtor"] = makeLuaDartFunc(func: (List<dynamic> args) {
    GlobalKey? key = translateRTTIToGenericGlobalKey(
        runtimeType: RuntimeTypes.values.firstWhere((x) =>
            x.toString().split(".")[1] ==
            maybeUnBoxRuntimeType(
                managedObject: args[0],
                runtimeTypePropName: "targetRuntimeType")));

    return [
      RTManagedGlobalKey(
        table: args[0],
        parentState: luaState,
        vmObject: key!,
      )
    ];
  });
}
