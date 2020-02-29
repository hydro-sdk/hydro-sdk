import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/runtimeTypeToGeneric.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
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
