import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter_test/flutter_test.dart';

List<LinesAndInst> patterns = [];

class LinesAndInst {
  final int lineStart;
  final int lineEnd;
  final List<int> inst;

  LinesAndInst(
      {@required this.lineStart, @required this.lineEnd, @required this.inst});
}

void recurse(Prototype x) {
  // print("${x.lineStart} to ${x.lineEnd}");
  // print(" ${x.opCodeRange()}");
  // print(" ");

  var range = x.opCodeRange();
  range.sort((a, b) => a.compareTo(b));
  patterns.add(
      LinesAndInst(lineStart: x.lineStart, lineEnd: x.lineEnd, inst: range));

  x.prototypes?.forEach((y) {
    recurse(y);
  });
}

void main() {
  test('', () async {
    var state = HydroState();

    var res = await state.loadFile("test/lua/sha256.hc");

    recurse(res.closure.proto);

    patterns.sort((a, b) => a.inst.length.compareTo(b.inst.length));
    print(patterns.length);

    patterns.forEach((x) {
      print("${x.lineStart} ${x.lineEnd}");
      print(" ${x.inst}");
    });

    print("");
  });
}
