import 'dart:typed_data';

import 'package:flua/codedump.dart';
import 'package:flua/const.dart';
import 'package:flua/inst.dart';
import 'package:flua/local.dart';
import 'package:flua/upvaldef.dart';

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
