import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/cfr/builtins/ts/debugger.dart';

void loadTsLib(Context ctx) {
  var ts = HydroTable();

  ctx.env["ts"] = ts;

  loadDebugger(ts);
}
