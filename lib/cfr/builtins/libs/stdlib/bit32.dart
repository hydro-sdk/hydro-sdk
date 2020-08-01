//https://www.lua.org/manual/5.2/manual.html#6.7
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

int _tobit(num x) {
  if (x is int) return x % 0x100000000;
  return (x + 0.5).floor() % 0x100000000;
}

void loadBit32Lib(Context ctx) {
  var bit32 = HydroTable();

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

  bit32["lshift"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "lshift");
    num y = Context.getArg1<num>(args, 1, "lshift");
    return [_tobit(x) << _tobit(y)];
  };

  ctx.env["bit32"] = bit32;
}
