import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';

void validatorTestHarness<T>({
  required String input,
  required T expectation,
}) {
  final inputValidationState = const SwidiParser()
      .build()
      .parse(input)
      .value
      .cast<SwidiClass>()
      .map(
        (x) => validateSwidiClass(
          swidiClass: x,
        ),
      )
      .toList()
      .cast<SwidiClassValidationState>();

  expect(inputValidationState, isNotEmpty);
  expect(inputValidationState.first, isNotNull);
  expect(inputValidationState.first, expectation);
}
