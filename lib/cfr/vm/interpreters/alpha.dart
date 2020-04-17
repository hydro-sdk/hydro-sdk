import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/interpreter.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/instructions/add.dart';
import 'package:hydro_sdk/cfr/vm/instructions/call.dart';
import 'package:hydro_sdk/cfr/vm/instructions/closure.dart';
import 'package:hydro_sdk/cfr/vm/instructions/concat.dart';
import 'package:hydro_sdk/cfr/vm/instructions/div.dart';
import 'package:hydro_sdk/cfr/vm/instructions/eq.dart';
import 'package:hydro_sdk/cfr/vm/instructions/forloop.dart';
import 'package:hydro_sdk/cfr/vm/instructions/forprep.dart';
import 'package:hydro_sdk/cfr/vm/instructions/gettable.dart';
import 'package:hydro_sdk/cfr/vm/instructions/gettabup.dart';
import 'package:hydro_sdk/cfr/vm/instructions/getupval.dart';
import 'package:hydro_sdk/cfr/vm/instructions/jmp.dart';
import 'package:hydro_sdk/cfr/vm/instructions/le.dart';
import 'package:hydro_sdk/cfr/vm/instructions/len.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadbool.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadk.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadkx.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadnil.dart';
import 'package:hydro_sdk/cfr/vm/instructions/lt.dart';
import 'package:hydro_sdk/cfr/vm/instructions/mod.dart';
import 'package:hydro_sdk/cfr/vm/instructions/move.dart';
import 'package:hydro_sdk/cfr/vm/instructions/mul.dart';
import 'package:hydro_sdk/cfr/vm/instructions/newtable.dart';
import 'package:hydro_sdk/cfr/vm/instructions/not.dart';
import 'package:hydro_sdk/cfr/vm/instructions/pow.dart';
import 'package:hydro_sdk/cfr/vm/instructions/return.dart';
import 'package:hydro_sdk/cfr/vm/instructions/self.dart';
import 'package:hydro_sdk/cfr/vm/instructions/setlist.dart';
import 'package:hydro_sdk/cfr/vm/instructions/settable.dart';
import 'package:hydro_sdk/cfr/vm/instructions/settabup.dart';
import 'package:hydro_sdk/cfr/vm/instructions/setupval.dart';
import 'package:hydro_sdk/cfr/vm/instructions/sub.dart';
import 'package:hydro_sdk/cfr/vm/instructions/tailcall.dart';
import 'package:hydro_sdk/cfr/vm/instructions/test.dart';
import 'package:hydro_sdk/cfr/vm/instructions/testset.dart';
import 'package:hydro_sdk/cfr/vm/instructions/tforcall.dart';
import 'package:hydro_sdk/cfr/vm/instructions/tforloop.dart';
import 'package:hydro_sdk/cfr/vm/instructions/unm.dart';
import 'package:hydro_sdk/cfr/vm/instructions/vararg.dart';
import 'package:hydro_sdk/cfr/vm/luaerror.dart';
import 'package:meta/meta.dart';

class AlphaInterpreter extends Interpreter {
  final String name;
  final List<int> opcodeSubset;
  AlphaInterpreter()
      : name = "alpha",
        opcodeSubset = [];
  ThreadResult cont({@required Frame frame, @required Prototype prototype}) {
    try {
      while (true) {
        var pc = frame.programCounter++;
        // ignore: non_constant_identifier_names
        var OP = frame.code[pc * 4];
        var A = frame.code[pc * 4 + 1];
        var B = frame.code[pc * 4 + 2];
        var C = frame.code[pc * 4 + 3];

        if (OP == 0) {
          move(frame: frame, A: A, B: B);
        } else if (OP == 1) {
          loadk(frame: frame, A: A, B: B);
        } else if (OP == 2) {
          loadkx(frame: frame, A: A);
        } else if (OP == 3) {
          loadbool(frame: frame, A: A, B: B, C: C);
        } else if (OP == 4) {
          loadnil(frame: frame, A: A, B: B);
        } else if (OP == 5) {
          getupval(frame: frame, A: A, B: B);
        } else if (OP == 6) {
          gettabup(frame: frame, A: A, B: B, C: C);
        } else if (OP == 7) {
          gettable(frame: frame, A: A, B: B, C: C);
        } else if (OP == 8) {
          settabup(frame: frame, A: A, B: B, C: C);
        } else if (OP == 9) {
          setupval(frame: frame, A: A, B: B);
        } else if (OP == 10) {
          settable(frame: frame, A: A, B: B, C: C);
        } else if (OP == 11) {
          newtable(frame: frame, A: A);
        } else if (OP == 12) {
          self(frame: frame, A: A, B: B, C: C);
        } else if (OP == 13) {
          add(frame: frame, A: A, B: B, C: C);
        } else if (OP == 14) {
          sub(frame: frame, A: A, B: B, C: C);
        } else if (OP == 15) {
          mul(frame: frame, A: A, B: B, C: C);
        } else if (OP == 16) {
          div(frame: frame, A: A, B: B, C: C);
        } else if (OP == 17) {
          mod(frame: frame, A: A, B: B, C: C);
        } else if (OP == 18) {
          instPow(frame: frame, A: A, B: B, C: C);
        } else if (OP == 19) {
          unm(frame: frame, A: A);
        } else if (OP == 20) {
          not(frame: frame, A: A, B: B);
        } else if (OP == 21) {
          len(frame: frame, A: A, B: B);
        } else if (OP == 22) {
          concat(frame: frame, A: A, B: B, C: C);
        } else if (OP == 23) {
          jmp(frame: frame, A: A, B: B);
        } else if (OP == 24) {
          eq(frame: frame, A: A, B: B, C: C);
        } else if (OP == 25) {
          lt(frame: frame, A: A, B: B, C: C);
        } else if (OP == 26) {
          le(frame: frame, A: A, B: B, C: C);
        } else if (OP == 27) {
          test(frame: frame, A: A, B: B, C: C);
        } else if (OP == 28) {
          testset(frame: frame, A: A, B: B, C: C);
        } else if (OP == 29) {
          var res = call(frame: frame, A: A, B: B, C: C);
          if (res != null) {
            return res;
          }
        } else if (OP == 30) {
          var res = tailcall(frame: frame, A: A, B: B, C: C);
          if (res != null) {
            return res;
          }
        } else if (OP == 31) {
          return instReturn(frame: frame, A: A, B: B, C: C);
        } else if (OP == 32) {
          forloop(frame: frame, A: A, B: B, C: C);
        } else if (OP == 33) {
          forprep(frame: frame, A: A, B: B, C: C);
        } else if (OP == 34) {
          tforcall(frame: frame, A: A, B: B, C: C);
        } else if (OP == 35) {
          tforloop(frame: frame, A: A, B: B);
        } else if (OP == 36) {
          setlist(frame: frame, A: A, B: B, C: C);
        } else if (OP == 37) {
          closure(frame: frame, A: A, B: B);
        } else if (OP == 38) {
          vararg(frame: frame, A: A, B: B);
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
