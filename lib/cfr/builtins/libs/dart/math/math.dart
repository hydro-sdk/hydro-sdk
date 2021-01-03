import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/math/random.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadMath({@required HydroState luaState, @required HydroTable table}) {
  var math = HydroTable();

  table["math"] = math;
  loadRandom(hydroState: luaState, table: math);
}
