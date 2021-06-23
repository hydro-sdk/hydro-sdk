import 'dart:collection';

import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/cfr/util.dart';

enum InstLayout {
  LAYOUT_ABC,
  LAYOUT_ABx,
  LAYOUT_AsBx,
  LAYOUT_Ax,
}
const instLayoutStr = const [
  "ABC",
  "ABx",
  "AsBx",
  "Ax",
];

enum InstParamType {
  PARAM_NONE,
  PARAM_REGISTER,
  PARAM_CONST,
  PARAM_RK,
  PARAM_UPVALUE,
  PARAM_CLOSURE,
  PARAM_LITERAL,
  PARAM_JUMP,
}
const instParamTypeStr = const [
  " ",
  "R",
  "C",
  "T",
  "U",
  "F",
  "L",
  "J",
];

abstract class IO {}

class ReadRegister extends IO {
  ReadRegister(this.reg);
  int reg;
}

class WriteRegister extends IO {
  WriteRegister(this.reg);
  int reg;
}

class JumpTo extends IO {
  JumpTo(this.val);
  int val;
}

class RelJumpTo extends IO {
  RelJumpTo(this.val);
  int val;
}

_InstInfoIO iBasicInst(
    {List<int>? read, List<int>? write, List<int>? jmp, List<int>? reljmp}) {
  return (Inst i, InstInfo info) {
    var params = info.getParams(i).item1;
    return [
      (read ?? []).map((p) => new ReadRegister(params[p])),
      (write ?? []).map((p) => new WriteRegister(params[p]))
    ].expand((e) => e).toList();
  };
}

List<IO> iLoadNil(Inst i, InstInfo info) {
  var param = info.getParams(i).item1;
  return new Iterable.generate(
      param[1], (a) => new WriteRegister(param[0] + a + 1)).toList();
}

List<IO> iSelf(Inst i, InstInfo info) {
  var param = info.getParams(i).item1;
  return [
    new WriteRegister(param[0] + 1),
    new ReadRegister(param[1]),
    new WriteRegister(param[0]),
  ];
}

List<IO> iConcat(Inst i, InstInfo info) {
  var param = info.getParams(i).item1;
  return <Iterable<IO>>[
    [new WriteRegister(param[0])],
    new Iterable.generate(param[2] - param[1] + 1, (a) => new ReadRegister(a)),
  ].expand((e) => e).toList();
}

final int specialBool = 1;
final int specialMaybeSkip = 2;
final int specialSelf = 4;

typedef List<IO> _InstInfoIO(Inst i, InstInfo info);

class InstInfo {
  InstInfo.parse(this.name, String sLayout, String sParams, this.io) {
    layout = InstLayout.values[instLayoutStr.indexOf(sLayout)];
    assert(sParams.length == 3);
    params = [];
    for (int i = 0; i < 3; i++) {
      params!.add(InstParamType.values[instParamTypeStr.indexOf(sParams[i])]);
    }
  }

  _InstInfoIO? io;
  InstInfo(this.name, this.layout, this.params);
  String name;
  InstLayout? layout;
  List<InstParamType>? params;
  int? opcode;

  Inst withParams(List<int> iparams) {
    int A = 0;
    int B = 0;
    int C = 0;

    List<int> out = [0, 0, 0];
    int j = 0;
    for (int i = 0; i < 3; i++) {
      if (params![i] == InstParamType.PARAM_NONE) continue;
      out[i] = iparams[j++];
    }
    if (layout == InstLayout.LAYOUT_ABC) {
      A = out[0];
      B = out[1];
      C = out[2];
    } else if (layout == InstLayout.LAYOUT_ABx) {
      A = out[0];
      B = out[1];
    } else if (layout == InstLayout.LAYOUT_AsBx) {
      A = out[0];
      B = out[1];
    } else if (layout == InstLayout.LAYOUT_Ax) {
      A = out[0];
    }

    return new Inst(
      opcode!,
      A,
      B,
      C,
    );
  }

  Inst decode(int raw) {
    // ignore: non_constant_identifier_names
    int OP = raw & 63;
    int A = 0;
    int B = 0;
    int C = 0;

    if (layout == InstLayout.LAYOUT_ABC ||
        layout == InstLayout.LAYOUT_ABx ||
        layout == InstLayout.LAYOUT_AsBx) A = (raw >> 6) & 255;

    if (layout == InstLayout.LAYOUT_ABC) {
      B = (raw >> 23) & 511;
      C = (raw >> 14) & 511;
    }

    if (layout == InstLayout.LAYOUT_Ax) A = (raw >> 6) & 67108863;
    if (layout == InstLayout.LAYOUT_ABx) B = (raw >> 14) & 262143;
    if (layout == InstLayout.LAYOUT_AsBx) B = ((raw >> 14) & 262143) - 131071;

    return new Inst(OP, A, B, C);
  }

  int encode(Inst inst) {
    int raw = inst.OP & 63;

    if (layout == InstLayout.LAYOUT_ABC ||
        layout == InstLayout.LAYOUT_ABx ||
        layout == InstLayout.LAYOUT_AsBx) raw |= (inst.A & 255) << 6;

    if (layout == InstLayout.LAYOUT_ABC) {
      raw |= (inst.B & 511) << 23;
      raw |= (inst.C & 511) << 14;
    }

    if (layout == InstLayout.LAYOUT_Ax) raw |= (inst.A & 67108863) << 6;
    if (layout == InstLayout.LAYOUT_ABx) raw |= (inst.B & 262143) << 14;
    if (layout == InstLayout.LAYOUT_AsBx) raw |= (inst.B & 262143) + 131071;

    return raw;
  }

  Tuple2<List<int>, List<InstParamType>> getParams(Inst inst) {
    List<int> data = [];
    List<InstParamType> types = [];

    late List<int> rparams;
    if (layout == InstLayout.LAYOUT_ABC) {
      rparams = [inst.A, inst.B, inst.C];
    } else if (layout == InstLayout.LAYOUT_ABx) {
      rparams = [inst.A, inst.B];
    } else if (layout == InstLayout.LAYOUT_AsBx) {
      rparams = [inst.A, inst.B];
    } else if (layout == InstLayout.LAYOUT_Ax) {
      rparams = [inst.A];
    }

    for (int i = 0; i < rparams.length; i++) {
      if (params![i] == InstParamType.PARAM_NONE) continue;
      if (params![i] == InstParamType.PARAM_RK) {
        data.add(i == 0
            ? lua_sign(rparams[i], 8)
            : rparams[i] >> 8 == 0
                ? rparams[i] & 255
                : -(rparams[i] & 255)); // assumes only A B or C
      } else {
        data.add(rparams[i]);
      }
      types.add(params![i]);
    }

    return new Tuple2(data, types);
  }
}

class Inst {
  Inst(this.OP, this.A, this.B, this.C);
  // ignore: non_constant_identifier_names
  final int OP;
  final int A;
  final int B;
  final int C;
}

class InstBlock extends ListBase<Inst> {
  InstBlock(this.list);

  after(Inst x) => new InstBlock(skipWhile((e) => e != x).toList());
  before(Inst x) => new InstBlock(takeWhile((e) => e != x).toList());
  range(Inst x, Inst y) =>
      new InstBlock(skip(indexOf(x)).take(indexOf(y) - indexOf(x)).toList());

  InstBlock get copy => new InstBlock(this.toList());
  List<Inst> list;

  int get length => list.length;
  set length(int x) => list.length = x;
  operator [](int i) => list[i];
  operator []=(int i, Inst v) {
    list[i] = v;
  }
}
