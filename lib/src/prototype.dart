import 'dart:typed_data';

import 'package:flua/src/codedump.dart';
import 'package:flua/src/const.dart';
import 'package:flua/src/inst.dart';
import 'package:flua/src/local.dart';
import 'package:flua/src/upvaldef.dart';

class Prototype {
  Prototype(this.root);
  final CodeDump root;
  Prototype parent;
  String name;
  int lineStart;
  int lineEnd;
  int params;
  int varag;
  int registers;
  InstBlock code;
  Int32List rawCode;
  List<Const> constants;
  Iterable<Const> constantScope;
  List<Prototype> prototypes;
  List<UpvalDef> upvals;
  String source;
  List<int> lines;
  List<Local> locals;
}
