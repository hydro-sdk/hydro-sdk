

import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/jsonDecode.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadConvert(
    {required HydroTable table, required HydroState hydroState}) {
  var convert = HydroTable();

  table["convert"] = convert;

  loadJsonDecode(table: convert, hydroState: hydroState);
}
