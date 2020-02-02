import 'package:flua/src/5_2/context.dart';
import 'package:flua/src/5_2/table.dart';

void loadBit32(Context ctx) {
  var bit32 = Table();

  bit32["band"] = (List<dynamic> args) {
    int r = ~0;
    for (var i = 0; i != args.length; ++i) {
      r &= args[i];
    }
    return [r];
  };

  bit32["bnot"] = (List<dynamic> args) {
    return [~args[0]];
  };

  ctx.env["bit32"] = bit32;
}
