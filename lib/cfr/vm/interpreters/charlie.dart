import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/interpreter.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/instructions/add.dart';
import 'package:hydro_sdk/cfr/vm/instructions/call.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadk.dart';
import 'package:hydro_sdk/cfr/vm/instructions/mul.dart';
import 'package:hydro_sdk/cfr/vm/instructions/return.dart';
import 'package:hydro_sdk/cfr/vm/instructions/self.dart';
import 'package:hydro_sdk/cfr/vm/luaerror.dart';
import 'package:meta/meta.dart';

class CharlieInterpreter extends Interpreter {
  final String name;
  final List<int> opcodeSubset;
  CharlieInterpreter()
      : name = "charlie",
        opcodeSubset = [1, 12, 13, 15, 29, 31];

  ThreadResult cont({@required Frame frame, @required Prototype prototype}) {
    try {
      while (true) {
        var pc = frame.programCounter++;
        // ignore: non_constant_identifier_names
        var OP = frame.code[pc * 4];
        var A = frame.code[pc * 4 + 1];
        var B = frame.code[pc * 4 + 2];
        var C = frame.code[pc * 4 + 3];

        if (OP == 1) {
          loadk(frame: frame, A: A, B: B);
        } else if (OP == 12) {
          self(frame: frame, A: A, B: B, C: C);
        } else if (OP == 13) {
          add(frame: frame, A: A, B: B, C: C);
        } else if (OP == 15) {
          mul(frame: frame, A: A, B: B, C: C);
        } else if (OP == 29) {
          var res = call(frame: frame, A: A, B: B, C: C);
          if (res != null) {
            return res;
          }
        } else if (OP == 31) {
          return instReturn(frame: frame, A: A, B: B, C: C);
        } else {
          throw "invalid instruction";
        }
      }
    } catch (e, bt) {
      if (e is LuaError) rethrow;
      throw new LuaErrorImpl(e, prototype, frame.programCounter - 1,
          dartStackTrace: bt);
    }
  }
}
