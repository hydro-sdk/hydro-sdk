import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

void loadTextPosition(HydroTable table) {
  table["textPosition"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextPosition(
          offset: args[0]["offset"],
          affinity: maybeUnBoxEnum(
            values: TextAffinity.values,
            boxedEnum: args[0]["affinity"],
          ))
    ];
  });
}
