import 'package:collection/collection.dart';
import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/vm/interpreter.dart';
import 'package:hydro_sdk/cfr/vm/interpreters/bravo.dart';
import 'package:hydro_sdk/cfr/vm/interpreters/charlie.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:meta/meta.dart';

class InterpreterSelectionStatus {
  final int lineStart;
  final int lineEnd;
  final String hash;
  final String selectedInterpreter;
  InterpreterSelectionStatus(
      {@required this.lineStart,
      @required this.lineEnd,
      @required this.hash,
      @required this.selectedInterpreter});
}

void maybeSelectInterpreter(
    {@required List<InterpreterSelectionStatus> status,
    @required Prototype prototype}) {
  var range = prototype.opCodeRange();
  range.sort((a, b) => a.compareTo(b));

  List<Interpreter> interpreters = [BravoInterpreter(), CharlieInterpreter()];

  for (var i = 0; i != interpreters.length; ++i) {
    if (ListEquality().equals(range, interpreters[i].opcodeSubset)) {
      prototype.interpreter = interpreters[i].cont;
      status.add(InterpreterSelectionStatus(
          lineStart: prototype.lineStart,
          lineEnd: prototype.lineEnd,
          hash: hashPrototype(prototype, includeSourceLocations: false),
          selectedInterpreter: interpreters[i].name));
    }
  }

  prototype.prototypes?.forEach((x) {
    maybeSelectInterpreter(status: status, prototype: x);
  });
}
