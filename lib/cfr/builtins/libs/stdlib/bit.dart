import 'dart:math';

import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

int _tobit(num x) {
  if (x is int) return x % 0x100000000;
  return (x + 0.5).floor() % 0x100000000;
}

void loadBitLib(Context ctx) {
  var bit = new HydroTable();
  ctx.env["bit"] = bit;

  bit["tobit"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "tobit");
    return [_tobit(x)];
  };

  bit["tohex"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "tohex");
    num n = args.length < 2
        ? 8
        : Context.getArg1<num>(args, 1, "tohex").abs().floor();
    var o = _tobit(x).toRadixString(16).padLeft(n as int, "0");
    return [o.substring(o.length - n)];
  };

  bit["bnot"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "bnot");
    return [~_tobit(x)];
  };

  bit["band"] = (List<dynamic> args) {
    var o = 0xFFFFFFFF;
    for (int i = 0; i < max(1, args.length); i++) {
      o = o & _tobit(Context.getArg1<num>(args, i, "band"));
    }
    return [o];
  };

  bit["bor"] = (List<dynamic> args) {
    var o = 0;
    for (int i = 0; i < max(1, args.length); i++) {
      o = o | _tobit(Context.getArg1<num>(args, i, "bor"));
    }
    return [o];
  };

  bit["bxor"] = (List<dynamic> args) {
    var o = 0;
    for (int i = 0; i < max(1, args.length); i++) {
      o = o ^ _tobit(Context.getArg1<num>(args, i, "bxor"));
    }
    return [o];
  };

  bit["lshift"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "lshift");
    num y = Context.getArg1<num>(args, 1, "lshift");
    return [_tobit(x) << _tobit(y)];
  };

  bit["rshift"] = (List<dynamic> args) {
    int x = _tobit(Context.getArg1<num>(args, 0, "rshift"));
    int y = _tobit(Context.getArg1<num>(args, 1, "rshift"));

    return [_tobit(x) >> _tobit(y)];
  };

  bit["arshift"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "arshift");
    num y = _tobit(Context.getArg1<num>(args, 1, "arshift"));
    var o = _tobit(x);
    return [
      (o >> (y as int)) |
          ((o & 0x80000000 == 0 ? 0 : (0xFFFFFFFF << (32 - y)) & 0xFFFFFFFF))
    ];
  };

  bit["rol"] = (List<dynamic> args) {
    int x = _tobit(Context.getArg1<num>(args, 0, "rol"));
    int y = _tobit(Context.getArg1<num>(args, 1, "rol")) % 32;
    return [(x << y) | (x >> (32 - y))];
  };

  bit["ror"] = (List<dynamic> args) {
    if (args.length < 1)
      throw "bad argument #1 to 'ror' (number expected, got no value)";
    if (args[0] is! num)
      throw "bad argument #1 to 'ror' (number expected, got ${Context.getTypename(args[0])})";
    int x = _tobit(args[0]);
    if (args.length < 2)
      throw "bad argument #2 to 'ror' (number expected, got no value)";
    if (args[0] is! num)
      throw "bad argument #2 to 'ror' (number expected, got ${Context.getTypename(args[1])})";
    int y = _tobit(args[1]);

    return [_tobit((x >> y) | (x << (32 - y)))];
  };

  bit["bswap"] = (List<dynamic> args) {
    int x = _tobit(Context.getArg1<num>(args, 0, "bswap"));
    return [
      ((x & 0xFF) << 24) |
          ((x & 0xFF00) << 8) |
          ((x & 0xFF0000) >> 8) |
          ((x & 0xFF000000) >> 24)
    ];
  };
}
