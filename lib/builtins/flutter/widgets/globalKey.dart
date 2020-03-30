import 'package:flua/luastate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/runtimeTypeToGeneric.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/widgets.dart';

class RTManagedGlobalKey extends RTManagedBox<GlobalKey> {
  final HydroTable table;
  final GlobalKey vmObject;
  final LuaState parentState;

  RTManagedGlobalKey({@required this.table,@required this.parentState, @required this.vmObject}) {
    table["currentState"] = makeLuaDartFunc(func: (List<dynamic> args) {
      HydroTable currentState = HydroTable();
      currentState["insertItem"] = (List<dynamic> args) {
        (vmObject.currentState as dynamic).insertItem(args[1]);
      };

      currentState["removeItem"] = (List<dynamic> args) {
        (vmObject.currentState as dynamic).removeItem(args[1],
            (BuildContext context, Animation<double> animation) {
          Closure closure = args[2];
          return maybeUnwrapAndBuildArgument(
              closure([args[0], context, animation])[0],parentState: parentState) as Widget;
        });
      };
      return [currentState];
    });
  }
}

loadGlobalKey(    {@required LuaState luaState, @required HydroTable table}) {
  table["globalKeyCtor"] = makeLuaDartFunc(func: (List<dynamic> args) {
    GlobalKey key = translateRTTIToGenericGlobalKey(
        runtimeType: RuntimeTypes.values.firstWhere(
            (x) => x.toString().split(".")[1] == args[0]["targetRuntimeType"]));

    return [RTManagedGlobalKey(table: args[0],parentState: luaState, vmObject: key)];
  });
  return [];
}
