import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/runtimeTypeToGeneric.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/widgets.dart';

class RTManagedGlobalKey extends RTManagedBox<GlobalKey> {
  final l.Table table;
  final GlobalKey vmObject;

  RTManagedGlobalKey({@required this.table, @required this.vmObject}) {
    table["currentState"] = makeLuaDartFunc(func: (List<dynamic> args) {
      l.Table currentState = l.Table();
      currentState["insertItem"] = (List<dynamic> args) {
        (vmObject.currentState as dynamic).insertItem(args[1]);
      };

      currentState["removeItem"] = (List<dynamic> args) {
        (vmObject.currentState as dynamic).removeItem(args[1],
            (BuildContext context, Animation<double> animation) {
          Closure closure = args[2];
          return maybeUnwrapAndBuildArgument(
              closure([args[0], context, animation])[0]) as Widget;
        });
      };
      return [currentState];
    });
  }
}

loadGlobalKey(l.Table table) {
  table["globalKeyCtor"] = makeLuaDartFunc(func: (List<dynamic> args) {
    GlobalKey key = translateRTTIToGenericGlobalKey(
        runtimeType: RuntimeTypes.values.firstWhere(
            (x) => x.toString().split(".")[1] == args[0]["targetRuntimeType"]));

    return [RTManagedGlobalKey(table: args[0], vmObject: key)];
  });
  return [];
}
