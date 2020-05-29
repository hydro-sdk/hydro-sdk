import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/vm/const.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

String generate({@required Prototype prototype}) {
  String res = "";

  res += """
  import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/lasm/stub.dart';
import 'package:hydro_sdk/cfr/vm/const.dart';
import 'package:hydro_sdk/cfr/vm/local.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/upvaldef.dart';
class \$${hashPrototype(prototype)} extends LasmStub {
\$${hashPrototype(prototype)}(CodeDump root, {@required this.parent}) : super(root,parent:parent);

Prototype parent;
  """;

  res += """
    int lineStart=${prototype.lineStart};
    int lineEnd=${prototype.lineEnd};
    int params=${prototype.params};
    int vararg=${prototype.varag};
    int registers = ${prototype.registers};
    Int32List rawCode = Int32List.fromList(${prototype.rawCode});
    
    List<Const> constants = [
  """;

  prototype.constants.forEach((x) {
    if (x.type == ConstType.CONST_NIL) {
      res += "Const(),\n";
    }
    if (x.type == ConstType.CONST_BOOL) {
      res += "BoolConst(${x.value}),\n";
    }
    if (x.type == ConstType.CONST_NUMBER) {
      res += "NumberConst(${x.value}),\n";
    }
    if (x.type == ConstType.CONST_STRING) {
      res += "StringConst(\"${x.value}\"),\n";
    }
  });
  res += "];\n";

  res += "List<UpvalDef> upvals =[\n";

  prototype.upvals.forEach((x) {
    res += "UpvalDef(${x.stack},${x.reg}),\n";
  });
  res += "];\n";

  res += " String source = ${prototype.source};\n";

  res += "List<Local> locals =[\n";

  prototype.locals.forEach((x) {
    res += "Local(${x.name},${x.from},${x.to}),\n";
  });
  res += "];\n";

  res += "}\n";
  return res;
}
