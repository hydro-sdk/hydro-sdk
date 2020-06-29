import 'package:hydro_sdk/cfr/reassembler/reassembleStatus.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:meta/meta.dart';
import 'dart:core';

void relocatePrototype(
    {@required ReassembleStatus reassembleStatus,
    @required Prototype destination,
    @required Prototype source}) {
  if ((destination.lineStart - source.lineStart).abs() >= 100) {
    reassembleStatus.bailedOut = true;
    reassembleStatus.bailOutReason =
        "Tried to relocate ${source.lineStart} to ${destination.lineStart}";
  }
  destination.source = source.source;
  destination.lineStart = source.lineStart;
  destination.lineEnd = source.lineEnd;
  destination.lines = List.from(source.lines);
}
