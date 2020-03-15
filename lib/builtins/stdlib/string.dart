import 'dart:math';

import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart';
import 'package:flua/util.dart';

loadStringLib(Context ctx) {
  var string = new Table();

  ctx.env["string"] = string;
  ctx.stringMetatable = string;

  string["rep"] = (List<dynamic> args) {
    String str = Context.luaToString(Context.getArg1<String>(args, 0, "rep"));
    num amount = Context.getArg1<num>(args, 1, "rep");
    return [str * amount.floor()];
  };

  string["char"] = (List<dynamic> args) {
    var o = new StringBuffer();

    for (int i = 0; i < args.length; i++) {
      int n = Context.getArg1<num>(args, i, "char").floor();
      if (n < 0 || n > 255)
        throw "bad argument #${i + 1} to 'char' (value out of range)";
      o.writeCharCode(n);
    }

    return [o.toString()];
  };

  string["sub"] = (List<dynamic> args) {
    if (args.length < 1)
      throw "bad argument #1 to 'sub' (string expected, got no value)";
    var i = args[0];
    String str;
    if (i is String) {
      str = i;
    } else if (i is num) {
      str = Context.numToString(i);
    } else {
      throw "bad argument #1 to 'sub' (string expected, got ${Context.getTypename(i)})";
    }

    int start = Context.getArg1<num>(args, 1, "sub").floor();
    int end = maybeAt(args, 2) == null
        ? str.length
        : Context.getArg1<num>(args, 2, "sub").floor();

    if (start == 0) start = 1;
    if (start < 0) start = str.length + start + 1;
    end = min(end, str.length);
    if (end < 0) end = str.length + end + 1;

    return start > end ? [""] : [str.substring(start - 1, end)];
  };

  string["byte"] = (List<dynamic> args) {
    if (args.length < 1)
      throw "bad argument #1 to 'byte' (string expected, got no value)";
    var i = args[0];
    String str;
    if (i is String) {
      str = i;
    } else if (i is num) {
      str = Context.numToString(i);
    } else {
      throw "bad argument #1 to 'byte' (string expected, got ${Context.getTypename(i)})";
    }

    int start = Context.getArg1<num>(args, 1, "byte").floor();
    int end = maybeAt(args, 2) == null
        ? start
        : Context.getArg1<num>(args, 2, "byte");

    if (start == 0) start = 1;
    if (start < 0) start = str.length + start + 1;
    end = min(end, str.length);
    if (end < 0) end = str.length + end + 1;

    return start > end ? [] : str.substring(start - 1, end).codeUnits;
  };
}
