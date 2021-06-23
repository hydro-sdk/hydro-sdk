import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/iterableBase.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/list.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadcollection(
    {required HydroState hydroState, required HydroTable table}) {
  final collection = HydroTable();
  table['collection'] = collection;
  loadIterableBase(table: collection, hydroState: hydroState);
  loadCoreList(hydroState: hydroState, table: collection);
}
