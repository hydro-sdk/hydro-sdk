//https://www.lua.org/manual/5.2/manual.html#6.7
import 'package:flua/src/5_2/context.dart';
import 'package:flua/src/5_2/table.dart';

void loadBit32Lib(Context ctx) {
  var bit32 = Table();

  bit32["band"] = makeLuaDartFunc(func: (List<dynamic> args) {
    int r = ~0;
    for (var i = 0; i != args.length; ++i) {
      r &= args[i];
    }
    return [r];
  });

  bit32["bnot"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [~args[0]];
  });

  bit32["bor"] = makeLuaDartFunc(func: (List<dynamic> args) {
    int r = 0;
    for (var i = 0; i != args.length; ++i) {
      r |= args[i];
    }
    return [r];
  });

  bit32["btest"] = makeLuaDartFunc(func: (List<dynamic> args) {
    int r = 0;
    for (var i = 0; i != args.length; ++i) {
      r &= args[i];
    }
    return [r == 0];
  });

  bit32["bxor"] = makeLuaDartFunc(func: (List<dynamic> args) {
    int r = 0;
    for (var i = 0; i != args.length; ++i) {
      r ^= args[i];
    }
    return [r];
  });

  ctx.env["bit32"] = bit32;
}
