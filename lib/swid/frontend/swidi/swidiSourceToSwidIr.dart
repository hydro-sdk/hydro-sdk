import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiClassToSwidClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

List<SwidIr> swidiSourceToSwidIr({
  required final String content,
  required final ISwarsPipeline<dynamic> pipeline,
}) {
  var parseResult = const SwidiParser().build().parse(content);

  if (parseResult.isFailure) {
    throw parseResult.message;
  }

  parseResult.value.cast<SwidiClass>().toList().cast<SwidiClass>().forEach(
        (x) => pipeline
            .reduceFromTerm(
              ValidateSwidiClass(
                swidiClass: x,
              ),
            )
            .when(
              valid: () => null,
              invalid: (val) => throw val.message,
            ),
      );

  return parseResult.value
      .cast<SwidiClass>()
      .map((x) =>
          SwidIr.fromSwidClass(swidClass: swidiClassToSwidClass(swidiClass: x)))
      .toList()
      .cast<SwidIr>();
}
