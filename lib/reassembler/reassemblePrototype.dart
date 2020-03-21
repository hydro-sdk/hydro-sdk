import 'dart:typed_data';
import 'dart:developer';
import 'package:flua/vm/prototype.dart';
import 'package:flua/reassembler/copyConstant.dart';
import 'package:meta/meta.dart';

void reassemblePrototype(
    {@required Prototype destination, @required Prototype source}) {
  destination.varag = source.varag;
  destination.registers = source.registers;
  destination.code.list = List.from(source.code.list);
  destination.rawCode = Int32List.fromList(source.rawCode);
  destination.constants =
      List.from(source.constants.map((x) => copyConstant(source: x)).toList());
  destination.constantScope = List.from(
      source.constantScope.map((x) => copyConstant(source: x)).toList());
  destination.upvals = List.from(source.upvals);
  destination.source = source.source;
  destination.lines = List.from(source.lines);
  destination.locals = List.from(source.locals);
}
