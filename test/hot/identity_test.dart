import 'package:flua/luastate.dart';
import 'package:flua/vm/const.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/vm/inst.dart';
import 'package:flua/vm/prototype.dart';
import 'package:flua/vm/upvaldef.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

List<int> hashInstruction(Inst inst) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add([inst.OP, inst.A, inst.B, inst.C]);

  input.close();
  output.close();
  return output.events.single.bytes;
}

List<int> hashInstructionBlock(InstBlock instBlock) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var instHash = instBlock.map((x) => hashInstruction(x));

  instHash.forEach((x) => input.add(x));

  input.close();
  output.close();
  return output.events.single.bytes;
}

List<int> hashConstant(Const constant) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add(constant.toString().codeUnits);

  input.close();
  output.close();
  return output.events.single.bytes;
}

List<int> hashConstants(List<Const> constants) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var constHash = constants.map((x) => hashConstant(x));

  constHash.forEach((x) => input.add(x));

  input.close();
  output.close();
  return output.events.single.bytes;
}

List<int> hashUpvalue(UpvalDef upvalue) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add(upvalue.name.codeUnits);
  input.add(upvalue.stack.toString().codeUnits);
  input.add([upvalue.reg]);

  input.close();
  output.close();
  return output.events.single.bytes;
}

List<int> hashUpvalues(List<UpvalDef> upvalues) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var upvalHash = upvalues.map((x) => hashUpvalue(x));

  upvalHash.forEach((x) => input.add(x));

  input.close();
  output.close();
  return output.events.single.bytes;
}

String hashPrototype(Prototype prototype,
    {bool includeSourceLocations = true}) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var instHash = hashInstructionBlock(prototype.code);
  var constantsHash = hashConstants(prototype.constants);
  var upvalueHash = hashUpvalues(prototype.upvals);

  if (includeSourceLocations) {
    input.add(prototype.lines);
    input.add([prototype.lineStart, prototype.lineEnd]);
  }

  input.add(instHash);
  input.add(constantsHash);
  input.add(upvalueHash);

  input.close();
  output.close();

  return output.events.single.toString();
}

bool isCopyCandidate(Prototype a, Prototype b) {
  var aHash = hashPrototype(a, includeSourceLocations: false);
  var bHash = hashPrototype(b, includeSourceLocations: false);

  if (aHash == bHash) {
    if (a.lineStart != b.lineStart) {
      return true;
    }
  }
  return false;
}

void main() {
  test('', () async {
    var state1 = LuaState();

    List<String> outLines = [];

    state1.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    var state2 = LuaState();

    state2.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    var state3 = LuaState();

    state3.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    LuaFunctionImpl res1 = await state1.loadFile("test/hot/simple1.lc");

    var global1 = res1.closure.proto.prototypes[0];
    var local1 = res1.closure.proto.prototypes[1];

    LuaFunctionImpl res2 = await state2.loadFile("test/hot/simple2.lc");

    var global2 = res2.closure.proto.prototypes[0];
    var local2 = res2.closure.proto.prototypes[1];

    LuaFunctionImpl res3 = await state2.loadFile("test/hot/simple3.lc");

    var global3 = res3.closure.proto.prototypes[1];
    var local3 = res3.closure.proto.prototypes[2];

    //All 4 functions should have identical instructions
    expect(
        hashInstructionBlock(global1.code), hashInstructionBlock(local1.code));
    expect(
        hashInstructionBlock(global2.code), hashInstructionBlock(local2.code));
    expect(
        hashInstructionBlock(global1.code), hashInstructionBlock(global2.code));
    expect(
        hashInstructionBlock(global1.code), hashInstructionBlock(local2.code));
    expect(
        hashInstructionBlock(local1.code), hashInstructionBlock(local3.code));
    expect(
        hashInstructionBlock(global3.code), hashInstructionBlock(global3.code));

    expect(
        hashInstructionBlock(local1.code), hashInstructionBlock(local1.code));
    expect(
        hashInstructionBlock(global2.code), hashInstructionBlock(global2.code));
    expect(
        hashInstructionBlock(local3.code), hashInstructionBlock(local3.code));
    expect(
        hashInstructionBlock(global3.code), hashInstructionBlock(global3.code));

    expect(hashPrototype(global1), hashPrototype(global1));
    expect(hashPrototype(local1), hashPrototype(local1));

    expect(hashPrototype(global2), hashPrototype(global2));
    expect(hashPrototype(local2), hashPrototype(local2));
    expect(hashPrototype(local3), hashPrototype(local3));

    //Prototypes should differ due to different constants
    expect(hashPrototype(global1), isNot(hashPrototype(local1)));
    expect(hashPrototype(global2), isNot(hashPrototype(local2)));
    expect(hashPrototype(global1), isNot(hashPrototype(global2)));
    expect(hashPrototype(local1), isNot(hashPrototype(local2)));
    expect(hashPrototype(global2), isNot(hashPrototype(local1)));
    expect(hashPrototype(global1), isNot(hashPrototype(local2)));
    expect(hashPrototype(global1), isNot(hashPrototype(local3)));
    expect(hashPrototype(local1), isNot(hashPrototype(local3)));
    expect(hashPrototype(global1), isNot(hashPrototype(global3)));

    expect(isCopyCandidate(global1, global1), false);
    expect(isCopyCandidate(local1, local1), false);

    expect(isCopyCandidate(global1, global3), true);
    expect(isCopyCandidate(global3, global1), true);
    expect(isCopyCandidate(global2, global3), false);
    expect(isCopyCandidate(global2, global1), false);

    expect(isCopyCandidate(local1, local3), true);
    expect(isCopyCandidate(local3, local1), true);
    expect(isCopyCandidate(local2, local3), false);
    expect(isCopyCandidate(local2, local1), false);
  });
}
