import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCoreList(
    {@required HydroState hydroState, @required HydroTable table}) {
  table["fromArray"] = makeLuaDartFunc(func: (List<dynamic> args) {
    if (args[0] is HydroTable) {
      HydroTable arg = args[0];
      return [
        maybeBoxObject<List<dynamic>>(
          object: arg.arr,
          hydroState: hydroState,
          table: HydroTable(),
        )
      ];
    } else if (args[0] is List<dynamic>) {
      List<dynamic> arg = args[0];
      return [
        maybeBoxObject<List<dynamic>>(
          object: arg,
          hydroState: hydroState,
          table: HydroTable(),
        )
      ];
    }
    return [];
  });
}
