import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadTextRange(HydroTable table) {
  table["textRange"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextRange(
        start: args[0]["start"],
        end: args[0]["end"],
      )
    ];
  });
}
