import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCollection(
    {@required HydroTable table, @required HydroState hydroState}) {
  var collection = HydroTable();

  table["collection"] = collection;
}
