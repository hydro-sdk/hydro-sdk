import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/inputResolver.dart';
import 'package:hydro_sdk/swid/frontend/swidFrontend.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiSourceToSwidIr.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';

class SwidiFrontend extends SwidFrontend {
  final List<String> inputs;
  final InputResolver inputResolver;

  SwidiFrontend({
    @required this.inputs,
    @required this.inputResolver,
  });

  Future<List<SwidIr>> produceIr() async {
    List<SwidIr> result = [];
    for (var i = 0; i != inputs.length; ++i) {
      result = [
        ...result,
        ...((await inputResolver.resolveInput(input: inputs[i])).when(
          fromString: (val) => swidiSourceToSwidIr(content: val),
          fromList: (val) =>
              val.map((x) => swidiSourceToSwidIr(content: x)).reduce(
                    (value, element) => [...value, ...element].toList(),
                  ),
        ))
      ];
    }
    return result;
  }
}
