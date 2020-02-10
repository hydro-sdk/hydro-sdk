import 'package:flua/src/5_2/context.dart';
import 'package:flua/src/5_2/table.dart';
import 'package:flua/src/5_2/vm.dart';
import 'package:flua/src/5_2/luaerror.dart';
import 'package:flua/src/util.dart';

loadBaseLib(Context ctx) {
  ctx.env["assert"] = (List<dynamic> args) {
    if (args.length < 1 || args[0] == null || args[0] == false) {
      throw args.length < 2 ? "assertion failed!" : args[1];
    }

    return [args[0]];
  };

  ctx.env["collectgarbage"] = (List<dynamic> args) {
    throw "NYI"; // TODO
  };

  ctx.env["dofile"] = (List<dynamic> args) {
    throw "NYI"; // TODO
  };

  ctx.env["error"] = (List<dynamic> args) {
    throw (args.length < 1 ? null : args[0]) ?? "";
  };

  ctx.env["_G"] = ctx.env;

  ctx.env["getmetatable"] = (List<dynamic> args) {
    return [Context.getMetatable(args.length < 1 ? null : args[0])];
  };

  ctx.env["ipairs"] = (List<dynamic> args) {
    var t = args[0];

    if (Context.hasMetamethod(t, "__ipairs")) {
      return Context.invokeMetamethod(t, "__ipairs", [t])
          .take(3)
          .toList(growable: false);
    }

    return [
      (List<dynamic> args) {
        var i = args[1] + 1;
        var v = ctx.tableIndex(args[0], i);
        return v != null ? [i, v] : [];
      },
      t,
      0,
    ];
  };

  // ctx.env["load"] = (List<dynamic> args) {
  //   var ld = Context.getArg2<LuaDartFunc, dynamic>(args, 0, "load");

  //   if (ld is! LuaDartFunc) ld = Context.luaToString(ld);

  //   var source = maybeAt(args, 1) ?? ld;
  //   var mode = maybeAt(args, 2) ?? "bt";
  //   var env = maybeAt(args, 3) ?? ctx.env;

  //   throw "NYI"; // TODO
  // };

  // ctx.env["loadfile"] = (List<dynamic> args) {
  //   throw "NYI"; // TODO
  // };

  ctx.env["next"] = (List<dynamic> args) {
    Table table = Context.getArg1<Table>(args, 0, "next");
    var k = table.next(maybeAt(args, 1));
    return [k, table.rawget(k)];
  };

  ctx.env["pairs"] = (List<dynamic> args) {
    return [ctx.env["next"], Context.getArg1<Table>(args, 0, "pairs"), null];
  };

  ctx.env["pcall"] = (Thread thread, List<dynamic> args) {
    var f = Context.getArg1<dynamic>(args, 0, "pcall");
    try {
      return <dynamic>[true]
        ..addAll(thread.attemptCall(f, args.skip(1).toList(growable: false)));
    } on LuaError catch (e) {
      if (e.value is String) {
        return [false, e.toStringShort()];
      } else {
        return [false, e.value];
      }
    } catch (e) {
      return [
        false,
        e,
      ];
    }
  };

  ctx.env["print"] = (List<dynamic> args) {
    print(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    return [];
  };

  ctx.env["rawequal"] = (List<dynamic> args) {
    return [maybeAt(args, 0) == maybeAt(args, 1)];
  };

  ctx.env["rawget"] = (List<dynamic> args) {
    Table t = Context.getArg1<Table>(args, 0, "rawget");
    var k = Context.getAny(
      args,
      1,
      "rawget",
    );
    return [
      t.rawget(k),
    ];
  };

  ctx.env["rawlen"] = (List<dynamic> args) {
    Table t = Context.getArg1<Table>(args, 0, "rawlen");
    return [
      t.length,
    ];
  };

  ctx.env["rawset"] = (List<dynamic> args) {
    Table t = Context.getArg1<Table>(args, 0, "rawset");
    var k = Context.getAny(args, 1, "rawset");
    var v = Context.getAny(args, 2, "rawset");
    t.rawset(k, v);
    return [];
  };

  ctx.env["select"] = (List<dynamic> args) {
    var a = Context.getArg2<num, String>(args, 0, "select");

    if (a is String) {
      if (a == "#") {
        return [args.length - 1];
      } else {
        throw "bad argument #1 to 'select' (number expected, got string)";
      }
    }

    var n = (a as num).floor();
    if (n < 1) throw "bad argument #1 to 'select' (index out of range)";
    return args.skip(n).toList(growable: false);
  };

  ctx.env["setmetatable"] = (List<dynamic> args) {
    Table t = Context.getArg1<Table>(args, 0, "setmetatable");

    if (args.length < 2)
      throw "bad argument #2 to 'setmetatable' (nil or table expected)";

    Table v = Context.getArg1<Table>(args, 1, "setmetatable");

    t.metatable = v;

    return [t];
  };

  ctx.env["tonumber"] = (List<dynamic> args) {
    if (args.length == 0)
      throw "bad argument #1 to 'tonumber' (value expected)";
    var x = args[0];

    if (x is num) return [x];

    if (x is String)
      return [
        int.parse(x, onError: (_) => null) ?? double.parse(x, (_) => null),
      ];

    return [null];
  };

  ctx.env["tostring"] = (List<dynamic> args) {
    if (args.length == 0)
      throw "bad argument #1 to 'tostring' (value expected)";
    return [Context.luaToString(args[0])];
  };

  ctx.env["type"] = (List<dynamic> args) {
    if (args.length == 0) throw "bad argument #1 to 'type' (value expected)";
    return [Context.getTypename(args[0])];
  };

  ctx.env["_VERSION"] = "Lua 5.2";
}
