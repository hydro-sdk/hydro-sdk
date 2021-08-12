import 'package:hydro_sdk/cfr/builtins/libs/dart/core/duration.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/function.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/invocation.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/iterable.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/iterator.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/list.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/map.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/mapEntry.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/set.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/stackTrace.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/symbol.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadcore({required HydroState hydroState, required HydroTable table}) {
  final core = HydroTable();
  table['core'] = core;
  loadList(table: core, hydroState: hydroState);
  loadIterable(table: core, hydroState: hydroState);
  loadInvocation(table: core, hydroState: hydroState);
  loadMap(table: core, hydroState: hydroState);
  loadMapEntry(table: core, hydroState: hydroState);
  loadSymbol(table: core, hydroState: hydroState);
  loadIterator(table: core, hydroState: hydroState);
  loadFunction(table: core, hydroState: hydroState);
  loadSet(table: core, hydroState: hydroState);
  loadStackTrace(table: core, hydroState: hydroState);
  loadDuration(hydroState: hydroState, table: core);
}
