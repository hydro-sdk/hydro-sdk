import 'package:flua/buildProfile.dart';
import 'package:flua/luastate.dart';
import 'package:flua/reassembler/hashInstructionBlock.dart';
import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/reassembler/isRelocationCandidate.dart';
import 'package:flua/vm/context.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state1 = LuaState();

    List<String> outLines1 = [];

    state1.context.env["print"] = (List<dynamic> args) {
      outLines1
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    var state2 = LuaState();

    List<String> outLines2 = [];

    state2.context.env["print"] = (List<dynamic> args) {
      outLines2
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    LuaFunctionImpl res1 = await state1.loadFile("hot/debug.lc");
    expect(res1.closure.buildProfile, BuildProfile.debug);
    res1.pcall([]);

    expect(outLines1[0], "3");

    LuaFunctionImpl res2 = await state2.loadFile("hot/release.lc");
    expect(res2.closure.buildProfile, BuildProfile.release);
    res2.pcall([]);

    expect(outLines2[0], "3");
  });
}
