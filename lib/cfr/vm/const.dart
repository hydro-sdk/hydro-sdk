import 'package:hydro_sdk/cfr/util.dart';

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
  final bool? value;
  toString() => value.toString();
}

class NumberConst extends Const {
  const NumberConst(this.value);
  final type = ConstType.CONST_NUMBER;
  final num? value;
  toString() => value.toString();
}

class StringConst extends Const {
  const StringConst(this.value);
  final type = ConstType.CONST_STRING;
  final String? value;
  toString() => "\"${luaEscape(value!)}\"";
}
