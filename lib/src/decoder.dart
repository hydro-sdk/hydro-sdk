import 'dart:typed_data';

import 'package:flua/src/codedump.dart';
import 'package:flua/src/const.dart';
import 'package:flua/src/decoderException.dart';
import 'package:flua/src/flavor.dart';
import 'package:flua/src/inst.dart';
import 'package:flua/src/local.dart';
import 'package:flua/src/prototype.dart';
import 'package:flua/src/upvaldef.dart';
import 'package:flua/src/util.dart';

class Decoder {
  Decoder(this.buffer);
  ByteBuffer buffer;
  Flavor flavor;
  String doing;
  int index = 0;

  Uint8List read(int len) {
    if (index + len >= buffer.lengthInBytes + 1) throw "Unexpected EOF";
    Uint8List out = new Uint8List.view(buffer, index, len);
    index += len;
    return out;
  }

  double readDouble() {
    return (new Uint8List(8)..setRange(0, 8, read(8)))
        .buffer
        .asFloat64List()[0];
  }

  int readInt(int sz, [bool bendian = false, bool sgn = false]) {
    int o = 0;
    if (bendian) {
      read(sz).forEach((n) {
        o = (o << 8) + n;
      });
    } else {
      int i = 0;
      read(sz).forEach((n) {
        o += n << (8 * i);
        i++;
      });
    }
    return sgn ? sign(o, sz * 8) : o;
  }

  String readString() {
    String o = new String.fromCharCodes(
        read(readInt(code.ptrSize, code.bigEndian) - 1));
    if (read(1)[0] != 0) throw "Corrupt string";
    return o;
  }

  Inst readInst() {
    var raw = readInt(code.instSize);
    return flavor.decode(raw);
  }

  Prototype readFunc(Prototype parent, CodeDump root) {
    doing = "reading primitive";
    var prim = new Prototype(root);
    prim.parent = parent;
    prim.lineStart = readInt(code.intSize, code.bigEndian);
    prim.lineEnd = readInt(code.intSize, code.bigEndian);
    prim.params = read(1)[0];
    prim.varag = read(1)[0];
    prim.registers = read(1)[0];
    doing = "reading instructions";
    int instCount = readInt(code.intSize, code.bigEndian);
    prim.code = new InstBlock(new List.generate(instCount, (i) => readInst()));
    prim.rawCode = new Int32List.fromList(
        prim.code.expand((e) => [e.OP, e.A, e.B, e.C]).toList());
    doing = "reading constants";
    prim.constants =
        new List.generate(readInt(code.intSize, code.bigEndian), (i) {
      switch (read(1)[0]) {
        case 0:
          return new Const();
        case 1:
          return new BoolConst(read(1)[0] > 0);
        case 3:
          num x = code.useInt
              ? readInt(code.numSize, code.bigEndian)
              : readDouble();
          if (x == x.floor()) x = x.floor(); // Convert to int when possible
          return new NumberConst(x);
        case 4:
          return new StringConst(readString());
        default:
          throw "Unknown constant id";
      }
    });

    prim.constantScope = parent == null
        ? prim.constants
        : [parent.constantScope, prim.constants].expand((f) => f);
    prim.prototypes = new List.generate(
        readInt(code.intSize, code.bigEndian), (i) => readFunc(prim, root));
    doing = "reading upvals";
    prim.upvals = new List.generate(readInt(code.intSize, code.bigEndian), (i) {
      return new UpvalDef(read(1)[0] == 1, read(1)[0]);
    });
    doing = "reading source code";
    prim.source = readString();
    doing = "reading debug lines";
    prim.lines = new List.generate(readInt(code.intSize, code.bigEndian),
        (i) => readInt(code.intSize, code.bigEndian));
    doing = "reading locals";
    prim.locals = new List.generate(readInt(code.intSize, code.bigEndian), (i) {
      return new Local(readString(), readInt(code.intSize, code.bigEndian),
          readInt(code.intSize, code.bigEndian));
    });
    doing = "reading debug upvals";
    int len = readInt(code.intSize, code.bigEndian);
    for (int i = 0; i < len; i++) prim.upvals[i].name = readString();
    return prim;
  }

  CodeDump code;
  CodeDump readCodeDump([String name = "stdin"]) {
    try {
      code = new CodeDump();

      code.name = name;

      doing = "reading header";
      if (read(1)[0] != 0x1B ||
          read(1)[0] != 0x4C ||
          read(1)[0] != 0x75 ||
          read(1)[0] != 0x61) throw "Invalid signature";
      var version = read(1)[0];
      code.versionMajor = version >> 4;
      code.versionMinor = version & 15;
      code.implementation = read(1)[0];

      var qualFlavors = flavors.where((f) =>
          f.version_major == code.versionMajor &&
          f.version_minor == code.versionMinor);

      if (qualFlavors.isEmpty) {
        throw "No flavors for version ${code.versionMinor}.${code.versionMinor}";
      }

      for (int i = 0; i < qualFlavors.length; i++) {
        int sindex = index;
        flavor = qualFlavors.elementAt(i);
        try {
          code.littleEndian = read(1)[0] > 0;
          code.intSize = read(1)[0];
          code.ptrSize = read(1)[0];
          code.instSize = read(1)[0];
          code.numSize = read(1)[0];
          code.useInt = read(1)[0] > 0;
          doing = "reading magic";

          if (read(1)[0] != 0x19 ||
              read(1)[0] != 0x93 ||
              read(1)[0] != 0x0d ||
              read(1)[0] != 0x0a ||
              read(1)[0] != 0x1a ||
              read(1)[0] != 0x0a) throw "Invalid magic";

          code.main = readFunc(null, code);
          code.flavor = flavor;

          return code;
        } on String {
          if (i == qualFlavors.length - 1) {
            rethrow;
          } else {
            index = sindex; // retry with next flavor
          }
        }
      }
    } on String catch (e) {
      throw new DecoderException(e, doing, index);
    }

    return null; // not possible
  }
}