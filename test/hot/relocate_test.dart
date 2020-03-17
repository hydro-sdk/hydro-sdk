import 'package:flua/luastate.dart';
import 'package:flua/reassembler/hashInstructionBlock.dart';
import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/reassembler/isRelocationCandidate.dart';
import 'package:flua/reassembler/reassemble.dart';
import 'package:flua/vm/context.dart';
import 'package:flutter_test/flutter_test.dart';

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

    var res = reassemble(destination: res1.closure, source: res2.closure);

    expect(res.relocatedProtos, 0);
  });
}
