import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/math/random.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadmath({required HydroState hydroState, required HydroTable table}) {
  final math = HydroTable();
  table['math'] = math;
  loadRandom(table: math, hydroState: hydroState);
}
