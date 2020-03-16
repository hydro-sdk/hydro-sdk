import 'dart:math';

import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';

const rpd = pi / 180;

loadMathLib(Context ctx) {
  var math = new Table();
  ctx.env["math"] = math;

  math["abs"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "abs");
    return [x.abs()];
  };

  math["acos"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "acos");
    return [acos(x)];
  };

  math["asin"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "asin");
    return [asin(x)];
  };

  math["atan"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "atan");
    return [atan(x)];
  };

  math["atan2"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "atan2");
    num y = Context.getArg1<num>(args, 1, "atan2");
    return [atan2(x, y)];
  };

  math["ceil"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "ceil");
    return [x.ceil()];
  };

  math["cos"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "cos");
    return [cos(x)];
  };

  math["cosh"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "cosh");
    return [
      (pow(e, x) + pow(e, -x)) / 2,
    ];
  };

  math["deg"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "deg");
    return [x / rpd];
  };

  math["exp"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "exp");
    return [pow(e, x)];
  };

  math["floor"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "floor");
    return [x.floor()];
  };

  math["fmod"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "fmod");
    num y = Context.getArg1<num>(args, 1, "fmod");
    return [(x % y) * x.sign];
  };

  math["frexp"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "frexp");

    int e = 0;

    while (x < 0.5) {
      x *= 2;
      e--;
    }

    while (x > 1.0) {
      x /= 2;
      e++;
    }

    return [x, e];
  };

  math["huge"] = double.infinity;

  math["ldexp"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "ldexp");
    num y = Context.getArg1<num>(args, 1, "ldexp");
    return [x * pow(2, y)];
  };

  math["log"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "log");
    if (args.length < 2) return [log(x)];
    num y = Context.getArg1<num>(args, 1, "log");
    return [log(x) / log(y)];
  };

  math["max"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "max");
    for (int i = 1; i < args.length; i++) {
      x = max(x, Context.getArg1<num>(args, 0, "max"));
    }
    return [x];
  };

  math["min"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "min");
    for (int i = 1; i < args.length; i++) {
      x = min(x, Context.getArg1<num>(args, 0, "min"));
    }
    return [x];
  };

  math["modf"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "modf");
    var o = x.floor();
    return [o, x - o];
  };

  math["pi"] = pi;

  math["pow"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "pow");
    num y = Context.getArg1<num>(args, 1, "pow");
    return [pow(x, y)];
  };

  math["rad"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "rad");
    return [x * rpd];
  };

  var rng = new Random();

  math["random"] = (List<dynamic> args) {
    if (args.length == 0) return [rng.nextDouble()];
    num mn = Context.getArg1<num>(args, 0, "random");
    num mx;

    if (args.length < 2) {
      mx = mn;
      mn = 1;
    } else {
      mx = Context.getArg1<num>(args, 1, "random");
      if (mx < mn) throw "bad argument #2 to 'random' (interval is empty)";
    }

    return [rng.nextInt(mx.floor() - mn.floor()) + mn.floor()];
  };

  math["randomseed"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "randomseed");
    rng = new Random(x.floor());
    return [];
  };

  math["sin"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "sin");
    return [sin(x)];
  };

  math["sinh"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "sinh");
    return [(pow(e, x) - pow(e, -x)) / 2];
  };

  math["sqrt"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "sqrt");
    return [sqrt(x)];
  };

  math["tan"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "tan");
    return [tan(x)];
  };

  math["tanh"] = (List<dynamic> args) {
    num x = Context.getArg1<num>(args, 0, "tanh");
    return [(pow(e, x) - pow(e, -x)) / (pow(e, x) + pow(e, -x))];
  };
}
