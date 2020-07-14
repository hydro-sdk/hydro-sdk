import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/list.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

void loadCollection({@required HydroTable table, @required HydroState hydroState}) {
  var collection = HydroTable();

  table["collection"] = collection;

  loadList(table: collection, hydroState: hydroState);
}
