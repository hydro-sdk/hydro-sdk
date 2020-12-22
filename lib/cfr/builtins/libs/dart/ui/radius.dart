import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

void loadRadius(HydroTable table) {
  table["radiusElliptical"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Radius.elliptical(args[0].toDouble(), args[1].toDouble())];
  });
}
