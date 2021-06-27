import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/list.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/iterableBase.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/listMixin.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadcollection(
    {required HydroState hydroState, required HydroTable table}) {
  final collection = HydroTable();
  table['collection'] = collection;
  loadIterableBase(table: collection, hydroState: hydroState);
  loadListMixin(table: collection, hydroState: hydroState);
  loadCoreList(hydroState: hydroState, table: collection);
}
