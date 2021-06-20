import 'dart:convert';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/decode/decoderException.dart';
import 'package:hydro_sdk/cfr/decode/flavor.dart';
import 'package:hydro_sdk/cfr/decode/maybeAssignDebugSymbol.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/linkStatus.dart';
import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/const.dart';
import 'package:hydro_sdk/cfr/vm/inst.dart';
import 'package:hydro_sdk/cfr/vm/local.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/upvaldef.dart';
import 'package:hydro_sdk/hydroState.dart';

class Decoder {
  Decoder(this.buffer);
  ByteBuffer buffer;
  Flavor? flavor;
  String? doing;
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

  int readInt(int? sz, [bool bendian = false, bool sgn = false]) {
    int o = 0;
    if (bendian) {
      read(sz!).forEach((n) {
        o = (o << 8) + n;
      });
    } else {
      int i = 0;
      read(sz!).forEach((n) {
        o += n << (8 * i);
        i++;
      });
    }
    return sgn ? sign(o, sz * 8) : o;
  }

  String readString() {
    var uint8list = read(readInt(code!.ptrSize, code!.bigEndian) - 1);
    if (read(1)[0] != 0) throw "Corrupt string";
    try {
      String o = Utf8Decoder().convert(uint8list);

      return o;
    } catch (err) {
      return String.fromCharCodes(uint8list);
    }
  }

  Inst readInst() {
    var raw = readInt(code!.instSize);
    return flavor!.decode(raw);
  }

  Prototype readFunc({
    required Prototype? parent,
    required CodeDump root,
    required LinkStatus? linkStatus,
    required HydroState hydroState,
    required Map<String, NativeThunk>? thunks,
  }) {
    doing = "reading primitive";
    var prim = new Prototype(root);
    prim.parent = parent;
    prim.lineStart = readInt(code!.intSize, code!.bigEndian);
    prim.lineEnd = readInt(code!.intSize, code!.bigEndian);
    prim.params = read(1)[0];
    prim.varag = read(1)[0];
    prim.registers = read(1)[0];
    doing = "reading instructions";
    int instCount = readInt(code!.intSize, code!.bigEndian);
    prim.code = new InstBlock(new List.generate(instCount, (i) => readInst()));
    prim.rawCode = new Int32List.fromList(
        prim.code!.expand((e) => [e.OP, e.A, e.B, e.C]).toList().cast<int>());
    doing = "reading constants";
    prim.constants =
        new List.generate(readInt(code!.intSize, code!.bigEndian), (i) {
      switch (read(1)[0]) {
        case 0:
          return new Const();
        case 1:
          return new BoolConst(read(1)[0] > 0);
        case 3:
          num x = code!.useInt
              ? readInt(code!.numSize, code!.bigEndian)
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
        : [parent.constantScope, prim.constants].expand((f) => f!);
    prim.prototypes = new List.generate(
        readInt(code!.intSize, code!.bigEndian),
        (i) => readFunc(
            parent: prim,
            root: root,
            linkStatus: linkStatus,
            hydroState: hydroState,
            thunks: thunks));
    doing = "reading upvals";
    prim.upvals =
        new List.generate(readInt(code!.intSize, code!.bigEndian), (i) {
      return new UpvalDef(read(1)[0] == 1, read(1)[0]);
    });
    doing = "reading source code";
    try {
      prim.source = readString();
    } catch (err) {}
    doing = "reading debug lines";
    prim.lines = new List.generate(readInt(code!.intSize, code!.bigEndian),
        (i) => readInt(code!.intSize, code!.bigEndian));
    doing = "reading locals";
    prim.locals =
        new List.generate(readInt(code!.intSize, code!.bigEndian), (i) {
      return new Local(readString(), readInt(code!.intSize, code!.bigEndian),
          readInt(code!.intSize, code!.bigEndian));
    });
    doing = "reading debug upvals";
    int len = readInt(code!.intSize, code!.bigEndian);
    for (int i = 0; i < len; i++) prim.upvals[i].name = readString();

    if (thunks != null) {
      if (thunks[hashPrototype(prim)] != null) {
        var res = thunks[hashPrototype(prim)]!(codeDump: root, parent: parent!);
        res.parent = parent;
        maybeAssignDebugSymbol(hydroState: hydroState, prototype: res);
        linkStatus?.nativePrototypes += 1;
        return res;
      }
    }
    linkStatus?.virtualPrototypes += 1;
    maybeAssignDebugSymbol(hydroState: hydroState, prototype: prim);

    return prim;
  }

  CodeDump? code;
  CodeDump? readCodeDump(
      {String? name = "stdin",
      required CodeDump? dump,
      required LinkStatus? linkStatus,
      required HydroState hydroState,
      required Map<String, NativeThunk>? thunks}) {
    try {
      code = new CodeDump();

      code!.name = name;

      doing = "reading header";
      if (read(1)[0] != 0x1B ||
          read(1)[0] != 0x4C ||
          read(1)[0] != 0x75 ||
          read(1)[0] != 0x61) throw "Invalid signature";
      var version = read(1)[0];
      code!.versionMajor = version >> 4;
      code!.versionMinor = version & 15;
      code!.implementation = read(1)[0];

      var qualFlavors = flavors.where((f) =>
          f.version_major == code!.versionMajor &&
          f.version_minor == code!.versionMinor);

      if (qualFlavors.isEmpty) {
        throw "No flavors for version ${code!.versionMinor}.${code!.versionMinor}";
      }

      for (int i = 0; i < qualFlavors.length; i++) {
        int sindex = index;
        flavor = qualFlavors.elementAt(i);
        try {
          code!.littleEndian = read(1)[0] > 0;
          code!.intSize = read(1)[0];
          code!.ptrSize = read(1)[0];
          code!.instSize = read(1)[0];
          code!.numSize = read(1)[0];
          code!.useInt = read(1)[0] > 0;
          doing = "reading magic";

          if (read(1)[0] != 0x19 ||
              read(1)[0] != 0x93 ||
              read(1)[0] != 0x0d ||
              read(1)[0] != 0x0a ||
              read(1)[0] != 0x1a ||
              read(1)[0] != 0x0a) throw "Invalid magic";

          code!.main = readFunc(
              parent: null,
              root: code!,
              hydroState: hydroState,
              linkStatus: linkStatus,
              thunks: thunks);
          code!.flavor = flavor;

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
