import 'package:hydro_sdk/cfr/vm/inst.dart';

class Flavor {
  Flavor(
      {this.name,
      // ignore: non_constant_identifier_names
      this.version_major,
      // ignore: non_constant_identifier_names
      this.version_minor,
      this.instructions}) {
    int i = 0;
    instructions!.forEach((e) => e.opcode = i++);
  }
  final String? name;
  // ignore: non_constant_identifier_names
  final int? version_major;
  // ignore: non_constant_identifier_names
  final int? version_minor;
  final List<InstInfo>? instructions;

  InstInfo getInfo(int raw) => instructions![raw & 63];
  Inst decode(int raw) => getInfo(raw).decode(raw);
}

List<Flavor> flavors = [
  new Flavor(
    name: "Vanilla 5.2",
    version_major: 5,
    version_minor: 2,
    instructions: [
      /* 0*/ new InstInfo.parse(
          "MOVE", "ABC", "RR ", iBasicInst(write: [0], read: [1])),
      /* 1*/ new InstInfo.parse(
          "LOADK", "ABx", "RC ", iBasicInst(write: [0], read: [1])),
      /* 2*/ new InstInfo.parse("LOADKX", "ABx", "R  ", iBasicInst(write: [0])),
      /* 3*/ new InstInfo.parse(
          "LOADBOOL", "ABC", "RLL", iBasicInst(write: [0])),
      /* 4*/ new InstInfo.parse("LOADNIL", "ABC", "RL ", iLoadNil),
      /* 5*/ new InstInfo.parse(
          "GETUPVAL", "ABC", "RU ", iBasicInst(write: [0], read: [1])),
      /* 6*/ new InstInfo.parse(
          "GETTABUP", "ABC", "RUT", iBasicInst(write: [0], read: [1, 2])),
      /* 7*/ new InstInfo.parse(
          "GETTABLE", "ABC", "RRT", iBasicInst(write: [0], read: [1, 2])),
      /* 8*/ new InstInfo.parse(
          "SETTABUP", "ABC", "UTT", iBasicInst(read: [0, 1, 2])),
      /* 9*/ new InstInfo.parse(
          "SETUPVAL", "ABC", "RU ", iBasicInst(write: [0], read: [1])),
      /*10*/ new InstInfo.parse(
          "SETTABLE", "ABC", "RTT", iBasicInst(read: [0, 1, 2])),
      /*11*/ new InstInfo.parse(
          "NEWTABLE", "ABC", "RLL", iBasicInst(write: [0])),
      /*12*/ new InstInfo.parse("SELF", "ABC", "RTT", iSelf),
      /*13*/ new InstInfo.parse(
          "ADD", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*14*/ new InstInfo.parse(
          "SUB", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*15*/ new InstInfo.parse(
          "MUL", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*16*/ new InstInfo.parse(
          "DIV", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*17*/ new InstInfo.parse(
          "MOD", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*18*/ new InstInfo.parse(
          "POW", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*19*/ new InstInfo.parse(
          "UNM", "ABC", "RR ", iBasicInst(write: [0], read: [1])),
      /*20*/ new InstInfo.parse(
          "NOT", "ABC", "RR ", iBasicInst(write: [0], read: [1])),
      /*21*/ new InstInfo.parse(
          "LEN", "ABC", "RR ", iBasicInst(write: [0], read: [1])),
      /*22*/ new InstInfo.parse("CONCAT", "ABC", "RRR", iConcat),
      /*23*/ new InstInfo.parse("JMP", "AsBx", "RJ ", iBasicInst(reljmp: [1])),
      /*24*/ new InstInfo.parse("EQ", "ABC", "LTT", iBasicInst()),
      /*25*/ new InstInfo.parse("LT", "ABC", "LTT", iBasicInst()),
      /*26*/ new InstInfo.parse("LE", "ABC", "LTT", iBasicInst()),
      /*27*/ new InstInfo.parse("TEST", "ABC", "R L", iBasicInst()),
      /*28*/ new InstInfo.parse("TESTSET", "ABC", "RRL", iBasicInst()),
      /*29*/ new InstInfo.parse("CALL", "ABC", "RRR", iBasicInst()),
      /*30*/ new InstInfo.parse("TAILCALL", "ABC", "RR ", iBasicInst()),
      /*31*/ new InstInfo.parse("RETURN", "ABC", "RR ", iBasicInst()),
      /*32*/ new InstInfo.parse("FORLOOP", "AsBx", "RJ ", iBasicInst()),
      /*33*/ new InstInfo.parse("FORPREP", "AsBx", "RJ ", iBasicInst()),
      /*34*/ new InstInfo.parse("TFORCALL", "ABC", "R R", iBasicInst()),
      /*35*/ new InstInfo.parse("TFORLOOP", "AsBx", "RJ ", iBasicInst()),
      /*36*/ new InstInfo.parse("SETLIST", "ABC", "RLL", iBasicInst()),
      /*37*/ new InstInfo.parse("CLOSURE", "ABx", "RF ", iBasicInst()),
      /*38*/ new InstInfo.parse("VARARG", "ABC", "RR ", iBasicInst()),
      /*39*/ new InstInfo.parse("EXTRAARG", "Ax", "L  ", iBasicInst()),
    ],
  ),
  new Flavor(
    name: "Vanilla 5.3",
    version_major: 5,
    version_minor: 3,
    instructions: [
      /* 0*/ new InstInfo.parse(
          "MOVE", "ABC", "RR ", iBasicInst(write: [0], read: [1])),
      /* 1*/ new InstInfo.parse(
          "LOADK", "ABx", "RC ", iBasicInst(write: [0], read: [1])),
      /* 2*/ new InstInfo.parse("LOADKX", "ABx", "R  ", iBasicInst(write: [0])),
      /* 3*/ new InstInfo.parse(
          "LOADBOOL", "ABC", "RLL", iBasicInst(write: [0])),
      /* 4*/ new InstInfo.parse("LOADNIL", "ABC", "RL ", iLoadNil),
      /* 5*/ new InstInfo.parse(
          "GETUPVAL", "ABC", "RU ", iBasicInst(write: [0], read: [1])),
      /* 6*/ new InstInfo.parse(
          "GETTABUP", "ABC", "RUT", iBasicInst(write: [0], read: [1, 2])),
      /* 7*/ new InstInfo.parse(
          "GETTABLE", "ABC", "RRT", iBasicInst(write: [0], read: [1, 2])),
      /* 8*/ new InstInfo.parse(
          "SETTABUP", "ABC", "UTT", iBasicInst(read: [0, 1, 2])),
      /* 9*/ new InstInfo.parse(
          "SETUPVAL", "ABC", "RU ", iBasicInst(write: [0], read: [1])),
      /*10*/ new InstInfo.parse(
          "SETTABLE", "ABC", "RTT", iBasicInst(read: [0, 1, 2])),
      /*11*/ new InstInfo.parse(
          "NEWTABLE", "ABC", "RLL", iBasicInst(write: [0])),
      /*12*/ new InstInfo.parse("SELF", "ABC", "RTT", iSelf),
      /*13*/ new InstInfo.parse(
          "ADD", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*14*/ new InstInfo.parse(
          "SUB", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*15*/ new InstInfo.parse(
          "MUL", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*16*/ new InstInfo.parse(
          "DIV", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*17*/ new InstInfo.parse(
          "MOD", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*18*/ new InstInfo.parse(
          "POW", "ABC", "RTT", iBasicInst(write: [0], read: [1, 2])),
      /*19*/ new InstInfo.parse("IDIV", "ABC", "RTT", iBasicInst()),
      /*20*/ new InstInfo.parse("BAND", "ABC", "RTT", iBasicInst()),
      /*21*/ new InstInfo.parse("BOR", "ABC", "RTT", iBasicInst()),
      /*22*/ new InstInfo.parse("BXOR", "ABC", "RTT", iBasicInst()),
      /*23*/ new InstInfo.parse("SHL", "ABC", "RTT", iBasicInst()),
      /*24*/ new InstInfo.parse("SHR", "ABC", "RTT", iBasicInst()),
      /*19*/ new InstInfo.parse(
          "UNM", "ABC", "RR ", iBasicInst(write: [0], read: [1])),
      /*26*/ new InstInfo.parse("BNOT", "ABC", "RR ", iBasicInst()),
      /*27*/ new InstInfo.parse(
          "NOT", "ABC", "RR ", iBasicInst(write: [0], read: [1])),
      /*28*/ new InstInfo.parse(
          "LEN", "ABC", "RR ", iBasicInst(write: [0], read: [1])),
      /*29*/ new InstInfo.parse("CONCAT", "ABC", "RRR", iConcat),
      /*30*/ new InstInfo.parse("JMP", "AsBx", "RJ ", iBasicInst(reljmp: [1])),
      /*31*/ new InstInfo.parse("EQ", "ABC", "LTT", iBasicInst()),
      /*32*/ new InstInfo.parse("LT", "ABC", "LTT", iBasicInst()),
      /*33*/ new InstInfo.parse("LE", "ABC", "LTT", iBasicInst()),
      /*34*/ new InstInfo.parse("TEST", "ABC", "R L", iBasicInst()),
      /*35*/ new InstInfo.parse("TESTSET", "ABC", "RRL", iBasicInst()),
      /*36*/ new InstInfo.parse("CALL", "ABC", "RRR", iBasicInst()),
      /*37*/ new InstInfo.parse("TAILCALL", "ABC", "RR ", iBasicInst()),
      /*38*/ new InstInfo.parse("RETURN", "ABC", "RR ", iBasicInst()),
      /*39*/ new InstInfo.parse("FORLOOP", "AsBx", "RJ ", iBasicInst()),
      /*40*/ new InstInfo.parse("FORPREP", "AsBx", "RJ ", iBasicInst()),
      /*41*/ new InstInfo.parse("TFORCALL", "ABC", "R R", iBasicInst()),
      /*42*/ new InstInfo.parse("TFORLOOP", "AsBx", "RJ ", iBasicInst()),
      /*43*/ new InstInfo.parse("SETLIST", "ABC", "RLL", iBasicInst()),
      /*44*/ new InstInfo.parse("CLOSURE", "ABx", "RF ", iBasicInst()),
      /*45*/ new InstInfo.parse("VARARG", "ABC", "RR ", iBasicInst()),
      /*46*/ new InstInfo.parse("EXTRAARG", "Ax", "L  ", iBasicInst()),
    ],
  ),
];
