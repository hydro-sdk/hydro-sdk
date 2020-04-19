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

        switch (OP) {
          case 1:
            loadk(frame: frame, A: A, B: B);
            break;
          case 12:
            self(frame: frame, A: A, B: B, C: C);
            break;
          case 13:
            add(frame: frame, A: A, B: B, C: C);
            break;
          case 15:
            mul(frame: frame, A: A, B: B, C: C);
            break;
          case 29:
            var res = call(frame: frame, A: A, B: B, C: C);
            if (res != null) {
              return res;
            }
            break;
          case 31:
            return instReturn(frame: frame, A: A, B: B, C: C);
            break;
        }
      }
    } catch (e, bt) {
      if (e is LuaError) rethrow;
      throw new LuaErrorImpl(e, prototype, frame.programCounter - 1,
          dartStackTrace: bt);
    }
  }
}
