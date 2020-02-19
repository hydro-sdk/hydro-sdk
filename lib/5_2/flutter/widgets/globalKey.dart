import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

class HydroGlobalKey extends VMManagedBox<GlobalKey> {
  final l.Table table;
  final GlobalKey vmObject;

  HydroGlobalKey({@required this.table, @required this.vmObject}) {
    table["_currentState"] = makeLuaDartFunc(func: (List<dynamic> args) {
      final Element element = vmObject.currentContext;
      if (element is StatefulElement) {
        final StatefulElement statefulElement = element;
        final State state = statefulElement.state;
        if (state.runtimeType == table["targetRuntimeType"]) return [state];
      }
      return [null];
    });
  }
}

loadCenter(l.Table table) {
  table["globalKey"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Center(
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
      )
    ];
  });
}
