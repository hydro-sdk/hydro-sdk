import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadTableLib({required HydroState hydroState, required Context ctx}) {
  var table = new HydroTable();

  ctx.env["table"] = table;

  table["concat"] = (List<dynamic> args) {
    HydroTable t = Context.getArg1<HydroTable>(args, 0, "concat");
    var delim = Context.luaToString(
        maybeAt(
              args,
              1,
            ) ??
            "",
        hydroState: hydroState);
    num s =
        maybeAt(args, 2) == null ? 1 : Context.getArg1<num>(args, 2, "concat");
    num e = maybeAt(args, 3) == null
        ? t.length
        : Context.getArg1<num>(args, 3, "concat");

    var o = new StringBuffer();
    for (int i = s.floor(); i <= e.floor(); i++) {
      if (i != s.floor()) o.write(delim);
      var e = t.rawget(i);
      if (e == null)
        throw "invalid value (nil) at index $i in table for 'concat'";
      o.write(Context.luaToString(e, hydroState: hydroState));
    }

    return [o];
  };

  table["insert"] = (List<dynamic> args) {
    if (args.length < 2 || args.length > 3)
      throw "wrong number of arguments to 'insert";

    HydroTable t = Context.getArg1<HydroTable>(args, 0, "insert");
    var len = t.length;

    var v = args[args.length < 3 ? 1 : 2];
    int pos = args.length < 3
        ? len + 1
        : Context.getArg1<num>(args, 1, "insert").floor();
    if (pos > len || pos < 0)
      throw "bad argument #2 to 'insert' (position out of bounds)";

    for (int i = len + 1; i > pos; i--) t.rawset(i, t.rawget(i - 1));
    t.rawset(pos, v);

    return [];
  };

  table["maxn"] = (List<dynamic> args) {
    HydroTable t = Context.getArg1<HydroTable>(args, 0, "maxn");
    return [
      t.map.keys.fold(t.length, (dynamic s, e) => e is num && e > s ? e : s)
    ];
  };

  table["remove"] = (List<dynamic> args) {
    HydroTable t = Context.getArg1<HydroTable>(args, 0, "remove");
    int pos = maybeAt(args, 1) == null
        ? t.length
        : Context.getArg1<num>(args, 1, "remove").floor();

    var len = t.length;

    if (pos > len || pos < 0)
      throw "bad argument #2 to 'remove' (position out of bounds)";

    for (int i = pos; i <= len; i++) {
      t.rawset(i, t.rawget(i + 1));
    }

    t.rawset(len, null);

    return [];
  };

  table["sort"] = (List<dynamic> args) {
    HydroTable t = Context.getArg1<HydroTable>(args, 0, "maxn");
    LuaDartFunc? f = maybeAt(args, 1) == null
        ? null
        : Context.getArg1<LuaDartFunc>(args, 1, "sort");

    t.arr.sort((a, b) {
      if (f != null) {
        var lt = Context.truthy(maybeAt(f([a, b]), 0));
        var gt = Context.truthy(maybeAt(f([b, a]), 0));
        return lt
            ? -1
            : gt
                ? 1
                : 0;
      } else if (a is num && b is num) {
        return a.compareTo(b);
      } else if ((a is HydroTable && Context.hasMetamethod(a, "__le")) ||
          (b is HydroTable && Context.hasMetamethod(b, "__le"))) {
        var lt = Context.checkLT(a, b, hydroState: hydroState)!;
        var gt = Context.checkLT(b, a, hydroState: hydroState);
        return lt
            ? -1
            : gt!
                ? 1
                : 0;
      } else {
        var at = Context.getTypename(a);
        var bt = Context.getTypename(b);

        if (at == bt) throw "attempt to compare two $at value";
        throw "attempt to compare $at with $bt";
      }
    });

    return [];
  };
}
