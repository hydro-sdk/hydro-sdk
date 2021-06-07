import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/core/invocation.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/iterable.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/iterator.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/list.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/set.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadcore({required HydroState hydroState, required HydroTable table}) {
  final core = HydroTable();
  table['core'] = core;
  loadIterable(table: core, hydroState: hydroState);
  loadInvocation(table: core, hydroState: hydroState);
  loadList(table: core, hydroState: hydroState);
  loadIterator(table: core, hydroState: hydroState);
  loadSet(table: core, hydroState: hydroState);
}
