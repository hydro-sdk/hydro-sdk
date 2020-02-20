import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/runtimeTypeToGeneric.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadGlobalKey(l.Table table) {
  table["globalKeyCtor"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedBox<GlobalKey>(
          table: args[0],
          vmObject: translateRTTIToGenericGlobalKey(
              runtimeType: RuntimeTypes.values
                  .firstWhere((x) => x == args[0]["targetRunTimeType"])))
    ];
  });
  return [];
}
