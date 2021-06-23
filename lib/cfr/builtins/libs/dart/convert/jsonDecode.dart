import 'dart:convert';

import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadJsonDecode(
    {required HydroState hydroState, required HydroTable table}) {
  table["jsonDecode"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [jsonDecode(args[0])];
  });
}
