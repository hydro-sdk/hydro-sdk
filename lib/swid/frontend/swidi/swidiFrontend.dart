import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/inputResolver.dart';
import 'package:hydro_sdk/swid/frontend/swidFrontend.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiSourceToSwidIr.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';

class SwidiFrontend extends SwidFrontend {
  final List<String> inputs;
  final InputResolver inputResolver;

  SwidiFrontend({
    required this.inputs,
    required this.inputResolver,
  });

  Future<List<SwidIr>> produceIr() async {
    List<SwidIr> result = [];
    for (var i = 0; i != inputs.length; ++i) {
      result = [
        ...result,
        ...swidiSourceToSwidIr(
            content: await inputResolver.resolveInput(input: inputs[i]))!,
      ];
    }
    return result;
  }
}
