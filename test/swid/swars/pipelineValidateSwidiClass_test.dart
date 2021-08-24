import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/swidiValidationError.dart';

import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final input = """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo() -> {
      foo() : @"bar",
    };
  }
""";

    final validateSwidiClassHashKey = ValidateSwidiClass(
      swidiClass: const SwidiParser()
          .build()
          .parse(input)
          .value
          .cast<SwidiClass>()
          .first,
    ).hashKey;

    final pipeline = CachingPipeline<SwidiClassValidationState>()
      ..add(
        term: ValidateSwidiClass(
          swidiClass: const SwidiParser()
              .build()
              .parse(input)
              .value
              .cast<SwidiClass>()
              .first,
        ),
      );

    final res = pipeline.reduce();

    expect(
        res.first,
        const SwidiClassValidationState.invalid(
          swidiValidationError: SwidiValidationError.e15,
        ));

    expect(pipeline.cacheGroupExistsInCache("validateSwidiClass"), true);
    expect(
        pipeline.hashKeyExistsInCacheGroup(
          cacheGroup: "validateSwidiClass",
          hashKey: ValidateSwidiClass(
            swidiClass: const SwidiParser()
                .build()
                .parse(input)
                .value
                .cast<SwidiClass>()
                .first,
          ).hashKey,
        ),
        true);

    expect(
        pipeline.getCacheHitsForCacheGroup(
            "validateSwidiClass")[validateSwidiClassHashKey],
        null);

    pipeline
      ..add(
        term: ValidateSwidiClass(
          swidiClass: const SwidiParser()
              .build()
              .parse(input)
              .value
              .cast<SwidiClass>()
              .first,
        ),
      );

    pipeline.reduce();

    expect(
        pipeline.getCacheHitsForCacheGroup(
            "validateSwidiClass")[validateSwidiClassHashKey],
        2);
  }, tags: "swid");
}
