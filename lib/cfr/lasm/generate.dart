import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/hashedPrototype.dart';
import 'package:hydro_sdk/cfr/vm/const.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

class LStubGenerator {
  List<HashedPrototype>? _prototypes;
  List<HashedPrototype>? get protoypes => _prototypes;
  LStubGenerator({required List<HashedPrototype> prototypes}) {
    var unique = <HashedPrototype>[];
    prototypes.forEach((x) {
      if (unique.firstWhereOrNull((k) => k.hash == x.hash) == null) {
        unique.add(x);
      }
    });
    _prototypes = unique;
  }
  String _lasmPreamble = """
 import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/local.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/upvaldef.dart';
import 'package:hydro_sdk/cfr/vm/const.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/inst.dart';
import 'package:hydro_sdk/cfr/vm/instructions/add.dart';
import 'package:hydro_sdk/cfr/vm/instructions/call.dart';
import 'package:hydro_sdk/cfr/vm/instructions/closure.dart';
import 'package:hydro_sdk/cfr/vm/instructions/concat.dart';
import 'package:hydro_sdk/cfr/vm/instructions/div.dart';
import 'package:hydro_sdk/cfr/vm/instructions/eq.dart';
import 'package:hydro_sdk/cfr/vm/instructions/forloop.dart';
import 'package:hydro_sdk/cfr/vm/instructions/forprep.dart';
import 'package:hydro_sdk/cfr/vm/instructions/gettable.dart';
import 'package:hydro_sdk/cfr/vm/instructions/gettabup.dart';
import 'package:hydro_sdk/cfr/vm/instructions/getupval.dart';
import 'package:hydro_sdk/cfr/vm/instructions/jmp.dart';
import 'package:hydro_sdk/cfr/vm/instructions/le.dart';
import 'package:hydro_sdk/cfr/vm/instructions/len.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadbool.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadk.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadkx.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadnil.dart';
import 'package:hydro_sdk/cfr/vm/instructions/lt.dart';
import 'package:hydro_sdk/cfr/vm/instructions/mod.dart';
import 'package:hydro_sdk/cfr/vm/instructions/move.dart';
import 'package:hydro_sdk/cfr/vm/instructions/mul.dart';
import 'package:hydro_sdk/cfr/vm/instructions/newtable.dart';
import 'package:hydro_sdk/cfr/vm/instructions/not.dart';
import 'package:hydro_sdk/cfr/vm/instructions/pow.dart';
import 'package:hydro_sdk/cfr/vm/instructions/return.dart';
import 'package:hydro_sdk/cfr/vm/instructions/self.dart';
import 'package:hydro_sdk/cfr/vm/instructions/setlist.dart';
import 'package:hydro_sdk/cfr/vm/instructions/settable.dart';
import 'package:hydro_sdk/cfr/vm/instructions/settabup.dart';
import 'package:hydro_sdk/cfr/vm/instructions/setupval.dart';
import 'package:hydro_sdk/cfr/vm/instructions/sub.dart';
import 'package:hydro_sdk/cfr/vm/instructions/tailcall.dart';
import 'package:hydro_sdk/cfr/vm/instructions/test.dart';
import 'package:hydro_sdk/cfr/vm/instructions/testset.dart';
import 'package:hydro_sdk/cfr/vm/instructions/tforcall.dart';
import 'package:hydro_sdk/cfr/vm/instructions/tforloop.dart';
import 'package:hydro_sdk/cfr/vm/instructions/unm.dart';
import 'package:hydro_sdk/cfr/vm/instructions/vararg.dart';
""";

  String _thunkPreamble = """
Map<String, Prototype Function({required CodeDump codeDump, required Prototype parent,})> thunks = {
""";

  String _generateThunk({required Prototype prototype}) {
    String res = "";

    res += """
"${hashPrototype(prototype, includeSourceLocations: true)}": ({
    required CodeDump codeDump,
    required Prototype parent,
  }) =>
      Prototype(
          codeDump,
        )..lineStart=${prototype.lineStart}
        ..lineEnd=${prototype.lineEnd}
        ..params=${prototype.params}
        ..varag=${prototype.varag}
        ..registers = ${prototype.registers}
        ..constants = const [
  """;
    prototype.constants!.forEach((x) {
      if (x.type == ConstType.CONST_NIL) {
        res += "const Const(),\n";
      }
      if (x.type == ConstType.CONST_BOOL) {
        res += "const BoolConst(${x.value}),\n";
      }
      if (x.type == ConstType.CONST_NUMBER) {
        res += "const NumberConst(${x.value}),\n";
      }
      if (x.type == ConstType.CONST_STRING) {
        res +=
            "const StringConst(\"${(x.value as String).replaceAll("\$", "\\\$").replaceAll("\n", "\\n")}\"),\n";
      }
    });
    res += "]\n";
    res += "..upvals =[\n";
    prototype.upvals.forEach((x) {
      res += "UpvalDef(${x.stack},${x.reg}),\n";
    });
    res += "]\n";

    res += " ..source = \"${prototype.source}\"\n";

    res += "..locals =[\n";

    prototype.locals.forEach((x) {
      res += "Local(\"${x.name}\",${x.from},${x.to}),\n";
    });
    res += "]\n";
    res += "..lines = const [\n";
    prototype.lines?.forEach((element) {
      res += "$element,";
    });
    res += "]\n";
    res += "..code = InstBlock([\n";
    prototype.code?.forEach((x) {
      res += "Inst(${x.OP},${x.A},${x.B},${x.C}),";
    });
    res += "])\n";
    res += "..rawCode = Int32List.fromList(${prototype.rawCode})";
    res +=
        """..interpreter= ({required Frame frame, required Prototype prototype,}){
    while(true){
      var pc = frame.programCounter++;
      switch(pc){
    """;
    for (var i = 0; i != prototype.code!.list.length; ++i) {
      switch (prototype.code!.list[i].OP) {
        case 0:
          res += "case $i:\n";
          res +=
              "move(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 1:
          res += "case $i:\n";
          res +=
              "loadk(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 2:
          res += "case $i:\n";
          res +=
              "loadkx(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 3:
          res += "case $i:\n";
          res +=
              "loadbool(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 4:
          res += "case $i:\n";
          res +=
              "loadnil(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 5:
          res += "case $i:\n";
          res +=
              "getupval(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 6:
          res += "case $i:\n";
          res +=
              "gettabup(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 7:
          res += "case $i:\n";
          res +=
              "gettable(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 8:
          res += "case $i:\n";
          res +=
              "settabup(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 9:
          res += "case $i:\n";
          res +=
              "setupval(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 10:
          res += "case $i:\n";
          res +=
              "settable(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 11:
          res += "case $i:\n";
          res += "newtable(frame:frame,A:${prototype.code!.list[i].A},);\n";

          res += "break;\n";
          break;
        case 12:
          res += "case $i:\n";
          res +=
              "self(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 13:
          res += "case $i:\n";
          res +=
              "add(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 14:
          res += "case $i:\n";
          res +=
              "sub(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 15:
          res += "case $i:\n";
          res +=
              "mul(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 16:
          res += "case $i:\n";
          res +=
              "div(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 17:
          res += "case $i:\n";
          res +=
              "mod(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 18:
          res += "case $i:\n";
          res +=
              "instPow(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 19:
          res += "case $i:\n";
          res += "unm(frame:frame,A:${prototype.code!.list[i].A},);\n";

          res += "break;\n";
          break;
        case 20:
          res += "case $i:\n";
          res +=
              "not(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 21:
          res += "case $i:\n";
          res +=
              "len(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 22:
          res += "case $i:\n";
          res +=
              "concat(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 23:
          res += "case $i:\n";
          res +=
              "jmp(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 24:
          res += "case $i:\n";
          res +=
              "eq(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 25:
          res += "case $i:\n";
          res +=
              "lt(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 26:
          res += "case $i:\n";
          res +=
              "le(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 27:
          res += "case $i:\n";
          res +=
              "test(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 28:
          res += "case $i:\n";
          res +=
              "testset(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 29:
          res += "case $i:\n";
          res += """
        var res = call(frame: frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});
          if (res != null) {
            return res;
          }
        """;
          res += "break;\n";
          break;
        case 30:
          res += "case $i:\n";
          res += """
        var res = tailcall(frame: frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});
          if (res != null) {
            return res;
          }
        """;
          res += "break;\n";
          break;
        case 31:
          res += "case $i:\n";
          res +=
              "return instReturn(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";
          break;
        case 32:
          res += "case $i:\n";
          res +=
              "forloop(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 33:
          res += "case $i:\n";
          res +=
              "forprep(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 34:
          res += "case $i:\n";
          res +=
              "tforcall(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 35:
          res += "case $i:\n";
          res +=
              "tforloop(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 36:
          res += "case $i:\n";
          res +=
              "setlist(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},C:${prototype.code!.list[i].C});\n";

          res += "break;\n";
          break;
        case 37:
          res += "case $i:\n";
          res +=
              "closure(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
        case 38:
          res += "case $i:\n";
          res +=
              "instVararg(frame:frame,A:${prototype.code!.list[i].A},B:${prototype.code!.list[i].B},);\n";

          res += "break;\n";
          break;
      }
    }

    res += """
    }}},
    """;
    return res;
  }

  String _thunkPostAmble = "};";

  String generate() {
    String res = "";
    res += _lasmPreamble;

    res += _thunkPreamble;
    _prototypes!.forEach((x) {
      res += _generateThunk(prototype: x.prototype);
    });
    res += _thunkPostAmble;

    return res;
  }
}
