import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flua/builtins/ts/debugger.dart';

loadTsLib(Context ctx) {
  var ts = Table();

  ctx.env["ts"] = ts;

  loadDebugger(ts);
}
