import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:hydro_sdk/builtins/ts/debugger.dart';

loadTsLib(Context ctx) {
  var ts = HydroTable();

  ctx.env["ts"] = ts;

  loadDebugger(ts);
}
