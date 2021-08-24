import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiClassToSwidClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';

List<SwidIr> swidiSourceToSwidIr({
  required final String content,
}) {
  var parseResult = const SwidiParser().build().parse(content);

  if (parseResult.isFailure) {
    throw parseResult.message;
  }

  parseResult.value.cast<SwidiClass>().toList().cast<SwidiClass>().forEach(
        (x) => CachingPipeline()
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
