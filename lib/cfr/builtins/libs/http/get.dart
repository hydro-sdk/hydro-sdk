import 'package:http/http.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadGet({required HydroState hydroState, required HydroTable table}) {
  table["get"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Future<List<dynamic>>>(
        object: get(args[0], headers: args.length >= 2 ? args[1] : null)
            .then((res) => [
                  maybeBoxObject<Response>(
                    object: res,
                    hydroState: hydroState,
                    table: HydroTable(),
                  )
                ]),
        hydroState: hydroState,
        table: HydroTable(),
      )
    ];
  });
}
