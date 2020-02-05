import 'package:flua/src/flavor.dart';
import 'package:flua/src/inst.dart';
import 'package:flua/src/util.dart';

import 'dart:typed_data';

class CodeDump {
  String name;
  int versionMajor;
  int versionMinor;
  int implementation;
  bool littleEndian;
  bool get bigEndian => !littleEndian;
  int intSize;
  int ptrSize;
  int instSize;
  int numSize;
  bool useInt;
  Prototype main;
  Flavor flavor;
}

enum ConstType {
  CONST_NIL,
  CONST_BOOL,
  CONST_UNKNOWN,
  CONST_NUMBER,
  CONST_STRING,
}

class Const {
  const Const();
  final type = ConstType.CONST_NIL;
  dynamic get value => null;
  toString() => "nil";
}

class BoolConst extends Const {
  const BoolConst(this.value);
  final type = ConstType.CONST_BOOL;
  final bool value;
  toString() => value.toString();
}

class NumberConst extends Const {
  const NumberConst(this.value);
  final type = ConstType.CONST_NUMBER;
  final num value;
  toString() => value.toString();
}

class StringConst extends Const {
  const StringConst(this.value);
  final type = ConstType.CONST_STRING;
  final String value;
  toString() => "\"${luaEscape(value)}\"";
}

class UpvalDef {
  UpvalDef(this.stack, this.reg);
  String name;
  bool stack;
  int reg;
}

class Local {
  Local(this.name, this.from, this.to);
  String name;
  int from;
  int to;
}

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
