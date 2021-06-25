import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/local.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

String disassemble(CodeDump code) {
  String o = "";
  int indent = 0;
  void writeLine(String txt) {
    o += "  " * indent + txt + "\n";
  }

  writeLine(
      ".version 0x${(code.versionMajor! * 16 + code.versionMinor!).toRadixString(16)}");
  writeLine(".implementation ${code.implementation}");
  writeLine(".endian ${code.littleEndian ? 1 : 0}");
  writeLine(".int_size ${code.intSize}");
  writeLine(".size_t ${code.ptrSize}");
  writeLine(".inst_size ${code.instSize}");
  writeLine(".number_size ${code.instSize}");
  writeLine(".use_int ${code.useInt ? 1 : 0}");

  void writeFunc(Prototype func, String name) {
    if (name != "main") {
      writeLine(".func " + name + " " + hashPrototype(func));
      indent++;
    }
    if (func.lineStart != 0 || func.lineEnd != 0)
      writeLine(".lines " +
          func.lineStart.toString() +
          " " +
          func.lineEnd.toString());
    if (func.params != 0) writeLine(".params " + func.params.toString());
    if (func.varag != 0) writeLine(".vararg " + func.varag.toString());
    void writeConst(int i, [String? comment]) {
      writeLine(".const " +
          i.toString() +
          " " +
          func.constantScope!.elementAt(i - 1).toString() +
          (comment == null ? "" : " ; $comment"));
    }

    for (int i = 0; i < func.constants!.length; i++) {
      writeConst(func.constantScope!.toList().indexOf(func.constants![i]) + 1);
    }
    for (int i = 0; i < func.prototypes!.length; i++) {
      writeFunc(func.prototypes![i], i.toString());
    }
    for (int i = 0; i < func.upvals.length; i++) {
      writeLine(".upval " +
          (func.upvals[i].stack ? "0" : "1") +
          " " +
          func.upvals[i].reg.toString() +
          (func.upvals[i].name == null
              ? ""
              : " \"" + luaEscape(func.upvals[i].name!) + "\""));
    }
    writeLine(".registers " + func.registers.toString());
    // ignore: non_constant_identifier_names
    Map<int, List<Local>> local_start = {};
    // ignore: non_constant_identifier_names
    Map<int, List<Local>> local_end = {};
    for (int i = 0; i < func.locals.length; i++) {
      var c = func.locals[i];
      local_start[c.from] = local_start[c.from] ?? [];
      local_start[c.from]!.add(c);
      local_end[c.to] = local_end[c.to] ?? [];
      local_end[c.to]!.add(c);
    }

    int clocal = 0;

    if (local_start.containsKey(0)) {
      local_start[0]!.forEach((e) => writeLine(".local " +
          (clocal++).toString() +
          " \"" +
          luaEscape(e.name) +
          "\""));
    }

    for (int i = 0; i < func.code!.length; i++) {
      var c = func.code![i];
      if (local_end.containsKey(i + 1)) {
        local_end[i + 1]!
            .forEach((e) => writeLine(".endlocal " + (--clocal).toString()));
      }

      if (local_start.containsKey(i + 1)) {
        local_start[i + 1]!.forEach((e) => writeLine(".local " +
            (clocal++).toString() +
            " \"" +
            luaEscape(e.name) +
            "\""));
      }

      var info = code.flavor!.instructions![c.OP];
      writeLine(info.name + " " + info.getParams(c).item1.join(" "));
    }

    if (name != "main") {
      indent--;
      writeLine(".end");
    }
  }

  writeLine("");
  writeFunc(code.main!, "main");

  return o;
}
