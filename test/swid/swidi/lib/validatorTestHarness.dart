import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void validatorTestHarness<T>({
  required final String input,
  required final T expectation,
}) {
  final inputValidationState = const SwidiParser()
      .build()
      .parse(input)
      .value
      .cast<SwidiClass>()
      .map(
        (x) => CachingPipeline<SwidiClassValidationState>(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          ValidateSwidiClass(
            swidiClass: x,
          ),
        ),
      )
      .toList()
      .cast<SwidiClassValidationState>();

  expect(inputValidationState, isNotEmpty);
  expect(inputValidationState.first, isNotNull);
  expect(inputValidationState.first, expectation);
}
