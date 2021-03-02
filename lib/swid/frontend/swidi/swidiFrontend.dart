import 'package:hydro_sdk/swid/frontend/inputResolver.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/frontend/swidFrontend.dart';

class SwidiFrontend extends SwidFrontend {
  final List<String> inputs;
  final InputResolver inputResolver;

  SwidiFrontend({
    @required this.inputs,
    @required this.inputResolver,
  });

  Future<List<SwidIr>> produceIr() async {

    for (var i = 0; i != inputs.length; ++i) {
      var content = await inputResolver.resolveInput(input: inputs[i]);
    }
  }
}
