import 'dart:collection';
import 'dart:math';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/thread/thread.dart';
import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/const.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/interpreters/alpha.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/upVal.dart';
import 'package:flutter/foundation.dart';

class Frame {
  Frame(
    this.prototype, {
    this.parent,
    Context context,
    List<Upval> upvalues,
    @required Thread thread,
  })  : context = context ?? parent.context,
        upvalues = upvalues ?? new List.filled(prototype.upvals.length, null),
        K = prototype.constants,
        R = new List.filled(prototype.registers, null, growable: true),
        code = prototype.rawCode,
        thread = thread;

  final Thread thread;
  final Frame parent;
  final Context context;
  final Prototype prototype;
  final List<Upval> upvalues;
  // ignore: non_constant_identifier_names
  final List<Const> K;
  // ignore: non_constant_identifier_names
  final List<dynamic> R;
  List<dynamic> varargs;
  final Int32List code;
  final _openUVs = new LinkedList<Upval>();

  int programCounter = 0;
  int top = 0;

  int getExtraArg() => code[programCounter++ * 4 + 1];
  int getNextJump() => code[programCounter * 4 + 2];

  // ignore: non_constant_identifier_names
  dynamic RK(int x) => x >= 256 ? K[x - 256].value : GR(x);
  // for debugging:
  // ignore: non_constant_identifier_names
  dynamic GR(int x) => R[x];
  // ignore: non_constant_identifier_names
  dynamic SR(int x, dynamic y) => R[x] = y;

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void loadReturns(List<dynamic> ret) {
    var pc = programCounter - 1;
    var A = code[pc * 4 + 1];
    var B = code[pc * 4 + 2];
    var C = code[pc * 4 + 3];

    if (C == 2) {
      SR(A, maybeAt(ret, 0));
    } else if (C != 1) {
      if (C == 0) setTop(A + ret.length - 1);
      if (B == 1) {
        if (C == 0) {
          for (int i = A; i < A + ret.length; i++) SR(i, maybeAt(ret, i - A));
        } else {
          int g = 0;
          for (int i = A; i < A + C; i++) SR(i, maybeAt(ret, g++));
        }
      } else {
        if (C == 0) {
          for (var i = 0; i < ret.length; i++) SR(A + i, maybeAt(ret, i));
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

  dynamic getUpval(int idx) => upvalues[idx].get();
  dynamic setUpval(int idx, dynamic value) => upvalues[idx].set(value);

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void closeUpvals(int from) {
    if (_openUVs.isEmpty) return;

    var e = _openUVs.first;
    while (e != null && e.reg >= from) {
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
    while (e.reg >= reg) {
      if (e.reg == reg) return e;
      if (e.next == null) {
        var uv = new Upval(reg, R);
        e.insertAfter(uv);
        return uv;
      }
      e = e.next;
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
    for (int i = 0; i < min(args.length, prototype.params); i++) {
      SR(i, maybeAt(args, i));
    }

    if (prototype.varag > 0) varargs = args;
  }

  bool get finished => programCounter >= prototype.code.length;

  ThreadResult cont() {
    if (prototype.interpreter == null) {
      prototype.interpreter = AlphaInterpreter().cont;
    }

    return prototype.interpreter(frame: this, prototype: prototype);
  }
}
