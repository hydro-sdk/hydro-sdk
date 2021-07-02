import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/iterableBase.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/listBase.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/listMixin.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadcollection(
    {required HydroState hydroState, required HydroTable table}) {
  final collection = HydroTable();
  table['collection'] = collection;
  loadIterableBase(table: collection, hydroState: hydroState);
  loadListBase(table: collection, hydroState: hydroState);
  loadListMixin(table: collection, hydroState: hydroState);
}
