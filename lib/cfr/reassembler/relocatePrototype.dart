import 'dart:core';

import 'package:hydro_sdk/cfr/reassembler/reassembleStatus.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

void relocatePrototype(
    {required ReassembleStatus reassembleStatus,
    required Prototype destination,
    required Prototype source}) {
  if ((destination.lineStart! - source.lineStart!).abs() >= 500) {
    reassembleStatus.bailedOut = true;
    reassembleStatus.bailOutReason =
        "Tried to relocate ${source.lineStart} to ${destination.lineStart}";
  }
  destination.source = source.source;
  destination.lineStart = source.lineStart;
  destination.lineEnd = source.lineEnd;
  destination.lines = List.from(source.lines!);
}
