import 'dart:collection';
import 'dart:math';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/thread/thread.dart';
import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/const.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/hydroError.dart';
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
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/upVal.dart';

class Frame {
  Frame(
    this.prototype, {
    this.parent,
    Context? context,
    List<Upval?>? upvalues,
    required Thread thread,
  })   : context = context ?? parent!.context,
        upvalues = upvalues ?? new List.filled(prototype.upvals.length, null),
        K = prototype.constants,
        R = new List.filled(prototype.registers!, null, growable: true),
        code = prototype.rawCode,
        thread = thread;

  final Thread thread;
  final Frame? parent;
  final Context context;
  final Prototype prototype;
  final List<Upval?> upvalues;
  // ignore: non_constant_identifier_names
  final List<Const>? K;
  // ignore: non_constant_identifier_names
  final List<dynamic> R;
  late List<dynamic> varargs;
  final Int32List? code;
  final _openUVs = new LinkedList<Upval>();

  int programCounter = 0;
  int top = 0;

  int getExtraArg() => code![programCounter++ * 4 + 1];
  int getNextJump() =>
      code != null ? code![programCounter * 4 + 2] : programCounter * 4 + 2;

  // ignore: non_constant_identifier_names
  dynamic RK(int x) => x >= 256 ? K![x - 256].value : GR(x);
  // for debugging:
  // ignore: non_constant_identifier_names
  dynamic GR(int x) => R[x];
  // ignore: non_constant_identifier_names
  dynamic SR(int x, dynamic y) => R[x] = y;

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void loadReturns(List<dynamic>? ret) {
    var pc = programCounter - 1;
    var A = code![pc * 4 + 1];
    var B = code![pc * 4 + 2];
    var C = code![pc * 4 + 3];

    if (C == 2) {
      SR(A, maybeAt(ret, 0));
    } else if (C != 1) {
      if (C == 0) setTop(A + ret!.length - 1);
      if (B == 1) {
        if (C == 0) {
          for (int i = A; i < A + ret!.length; i++) SR(i, maybeAt(ret, i - A));
        } else {
          int g = 0;
          for (int i = A; i < A + C; i++) SR(i, maybeAt(ret, g++));
        }
      } else {
        if (C == 0) {
          for (var i = 0; i < ret!.length; i++) SR(A + i, maybeAt(ret, i));
        } else {
          var g = 0;
          for (int i = A; i < A + C - 1; i++) SR(i, maybeAt(ret, g++));
        }
      }
    }
  }

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  bool convertToString(int reg) {
    var x = GR(reg);
    if (x is num)
      SR(reg, Context.numToString(x));
    else if (x is! String) return false;
    return true;
  }

  dynamic getUpval(int idx) => upvalues[idx]!.get();
  dynamic setUpval(int idx, dynamic value) => upvalues[idx]!.set(value);

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void closeUpvals(int from) {
    if (_openUVs.isEmpty) return;

    Upval? e = _openUVs.first;
    while (e != null && e.reg! >= from) {
      var next = e.next;
      e.close();
      e = next;
    }
  }

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Upval openUpval(int reg) {
    if (_openUVs.isEmpty) {
      var uv = new Upval(reg, R);
      _openUVs.addFirst(uv);
      return uv;
    }

    var e = _openUVs.first;
    while (e.reg! >= reg) {
      if (e.reg == reg) return e;
      if (e.next == null) {
        var uv = new Upval(reg, R);
        e.insertAfter(uv);
        return uv;
      }
      e = e.next!;
    }

    var uv = new Upval(reg, R);
    e.insertBefore(uv);
    return uv;
  }

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void setTop(int x) {
    if (x >= R.length) {
      // expand registers when 1full
      R.length = x + 1;
    }
    top = x;
  }

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void loadArgs(List<dynamic> args) {
    for (int i = 0; i < min(args.length, prototype.params!); i++) {
      SR(i, maybeAt(args, i));
    }

    if (prototype.varag! > 0) varargs = args;
  }

  bool get finished => programCounter >= prototype.code!.length;

  ThreadResult cont() {
    try {
      if (prototype.interpreter != null) {
        return prototype.interpreter!(frame: this, prototype: prototype);
      }
      while (true) {
        var pc = programCounter++;
        // ignore: non_constant_identifier_names
        var OP = code![pc * 4];
        var A = code![pc * 4 + 1];
        var B = code![pc * 4 + 2];
        var C = code![pc * 4 + 3];

        if (OP == 0) {
          move(frame: this, A: A, B: B);
        } else if (OP == 1) {
          loadk(frame: this, A: A, B: B);
        } else if (OP == 2) {
          loadkx(frame: this, A: A);
        } else if (OP == 3) {
          loadbool(frame: this, A: A, B: B, C: C);
        } else if (OP == 4) {
          loadnil(frame: this, A: A, B: B);
        } else if (OP == 5) {
          getupval(frame: this, A: A, B: B);
        } else if (OP == 6) {
          gettabup(frame: this, A: A, B: B, C: C);
        } else if (OP == 7) {
          gettable(frame: this, A: A, B: B, C: C);
        } else if (OP == 8) {
          settabup(frame: this, A: A, B: B, C: C);
        } else if (OP == 9) {
          setupval(frame: this, A: A, B: B);
        } else if (OP == 10) {
          settable(frame: this, A: A, B: B, C: C);
        } else if (OP == 11) {
          newtable(frame: this, A: A);
        } else if (OP == 12) {
          self(frame: this, A: A, B: B, C: C);
        } else if (OP == 13) {
          add(frame: this, A: A, B: B, C: C);
        } else if (OP == 14) {
          sub(frame: this, A: A, B: B, C: C);
        } else if (OP == 15) {
          mul(frame: this, A: A, B: B, C: C);
        } else if (OP == 16) {
          div(frame: this, A: A, B: B, C: C);
        } else if (OP == 17) {
          mod(frame: this, A: A, B: B, C: C);
        } else if (OP == 18) {
          instPow(frame: this, A: A, B: B, C: C);
        } else if (OP == 19) {
          unm(frame: this, A: A);
        } else if (OP == 20) {
          not(frame: this, A: A, B: B);
        } else if (OP == 21) {
          len(frame: this, A: A, B: B);
        } else if (OP == 22) {
          concat(frame: this, A: A, B: B, C: C);
        } else if (OP == 23) {
          jmp(frame: this, A: A, B: B);
        } else if (OP == 24) {
          eq(frame: this, A: A, B: B, C: C);
        } else if (OP == 25) {
          lt(frame: this, A: A, B: B, C: C);
        } else if (OP == 26) {
          le(frame: this, A: A, B: B, C: C);
        } else if (OP == 27) {
          test(frame: this, A: A, B: B, C: C);
        } else if (OP == 28) {
          testset(frame: this, A: A, B: B, C: C);
        } else if (OP == 29) {
          var res = call(frame: this, A: A, B: B, C: C);
          if (res != null) {
            return res;
          }
        } else if (OP == 30) {
          var res = tailcall(frame: this, A: A, B: B, C: C);
          if (res != null) {
            return res;
          }
        } else if (OP == 31) {
          return instReturn(frame: this, A: A, B: B, C: C);
        } else if (OP == 32) {
          forloop(frame: this, A: A, B: B, C: C);
        } else if (OP == 33) {
          forprep(frame: this, A: A, B: B, C: C);
        } else if (OP == 34) {
          tforcall(frame: this, A: A, B: B, C: C);
        } else if (OP == 35) {
          tforloop(frame: this, A: A, B: B);
        } else if (OP == 36) {
          setlist(frame: this, A: A, B: B, C: C);
        } else if (OP == 37) {
          closure(frame: this, A: A, B: B);
        } else if (OP == 38) {
          instVararg(frame: this, A: A, B: B);
        } else {
          throw "invalid instruction";
        }
      }
    } catch (e, st) {
      if (e is HydroError) {
        e.addFrame(frame: this);
        throw e;
      } else {
        throw HydroError(
            errMsg: e.toString(),
            frame: this,
            inst: programCounter - 1,
            dartStackTrace: st);
      }
    }
  }
}
