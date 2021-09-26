import 'dart:typed_data';

import 'package:hydro_sdk/cfr/reassembler/copyConstant.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

void reassemblePrototype(
    {required Prototype destination, required Prototype source}) {
  destination.varag = source.varag;
  destination.registers = source.registers;
  destination.code!.list = List.from(source.code!.list);
  destination.rawCode = Int32List.fromList(source.rawCode!);
  destination.constants =
      List.from(source.constants!.map((x) => copyConstant(source: x)).toList());
  destination.upvals = List.from(source.upvals);
  destination.source = source.source;
  destination.lines = List.from(source.lines!);
  destination.locals = List.from(source.locals);
}
