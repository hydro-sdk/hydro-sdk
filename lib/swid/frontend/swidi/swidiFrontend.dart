import 'package:hydro_sdk/swid/frontend/inputResolver.dart';
import 'package:hydro_sdk/swid/frontend/swidFrontend.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiSourceToSwidIr.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

class SwidiFrontend extends SwidFrontend {
  final List<String> inputs;
  final InputResolver inputResolver;
  final ISwarsPipeline<dynamic> pipeline;

  SwidiFrontend({
    required final this.inputs,
    required final this.inputResolver,
    required final this.pipeline,
  }) : super(
          inputs: inputs,
        );

  Future<List<SwidIr>> produceIr() async {
    List<SwidIr> result = [];
    for (var i = 0; i != inputs.length; ++i) {
      result = [
        ...result,
        ...((await inputResolver.resolveInput(input: inputs[i])).when(
          fromString: (val) => swidiSourceToSwidIr(
            content: val,
            pipeline: pipeline,
          ),
          fromList: (val) => val
              .map((x) => swidiSourceToSwidIr(
                    content: x,
                    pipeline: pipeline,
                  ))
              .reduce(
                (value, element) => [...value, ...element].toList(),
              ),
        ))
      ];
    }
    return result;
  }
}
