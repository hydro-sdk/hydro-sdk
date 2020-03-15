import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart';
import 'package:flua/5_2/ts/debugger.dart';

loadTsLib(Context ctx) {
  var ts = Table();

  ctx.env["ts"] = ts;

  loadDebugger(ts);
}
