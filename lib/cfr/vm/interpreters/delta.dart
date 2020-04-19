import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/interpreter.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/instructions/call.dart';
import 'package:hydro_sdk/cfr/vm/instructions/concat.dart';
import 'package:hydro_sdk/cfr/vm/instructions/div.dart';
import 'package:hydro_sdk/cfr/vm/instructions/forloop.dart';
import 'package:hydro_sdk/cfr/vm/instructions/forprep.dart';
import 'package:hydro_sdk/cfr/vm/instructions/gettable.dart';
import 'package:hydro_sdk/cfr/vm/instructions/gettabup.dart';
import 'package:hydro_sdk/cfr/vm/instructions/getupval.dart';
import 'package:hydro_sdk/cfr/vm/instructions/loadk.dart';
import 'package:hydro_sdk/cfr/vm/instructions/mod.dart';
import 'package:hydro_sdk/cfr/vm/instructions/move.dart';
import 'package:hydro_sdk/cfr/vm/instructions/return.dart';
import 'package:hydro_sdk/cfr/vm/luaerror.dart';
import 'package:meta/meta.dart';

class DeltaInterpreter extends Interpreter {
  final String name;
  final List<int> opcodeSubset;
  DeltaInterpreter()
      : name = "delta",
        opcodeSubset = [0, 1, 5, 6, 7, 16, 17, 22, 29, 31, 32, 33];
  ThreadResult cont({@required Frame frame, @required Prototype prototype}) {
    try {
      while (true) {
        var pc = frame.programCounter++;
        // ignore: non_constant_identifier_names
        var OP = frame.code[pc * 4];
        var A = frame.code[pc * 4 + 1];
        var B = frame.code[pc * 4 + 2];
        var C = frame.code[pc * 4 + 3];

        switch(OP){
          case 0:
             move(frame: frame, A: A, B: B);
             break;
        }
    
        // if (OP == 0) {
        //   move(frame: frame, A: A, B: B);
        // } else if (OP == 1) {
        //   loadk(frame: frame, A: A, B: B);
        // } else if (OP == 5) {
        //   getupval(frame: frame, A: A, B: B);
        // } else if (OP == 6) {
        //   gettabup(frame: frame, A: A, B: B, C: C);
        // } else if (OP == 7) {
        //   gettable(frame: frame, A: A, B: B, C: C);
        // } else if (OP == 16) {
        //   div(frame: frame, A: A, B: B, C: C);
        // } else if (OP == 17) {
        //   mod(frame: frame, A: A, B: B, C: C);
        // } else if (OP == 22) {
        //   concat(frame: frame, A: A, B: B, C: C);
        // } else if (OP == 29) {
        //   var res = call(frame: frame, A: A, B: B, C: C);
        //   if (res != null) {
        //     return res;
        //   }
        // } else if (OP == 31) {
        //   return instReturn(frame: frame, A: A, B: B, C: C);
        // } else if (OP == 32) {
        //   forloop(frame: frame, A: A, B: B, C: C);
        // } else if (OP == 33) {
        //   forprep(frame: frame, A: A, B: B, C: C);
        // } else {
        //   throw "invalid instruction";
        // }
      }
    } catch (e, bt) {
      if (e is LuaError) rethrow;
      throw new LuaErrorImpl(e, prototype, frame.programCounter - 1,
          dartStackTrace: bt);
    }
  }
}
