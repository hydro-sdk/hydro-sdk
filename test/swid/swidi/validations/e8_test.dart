import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/validation/swidiValidationError.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import '../lib/validatorTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    [[ ignoreTransform(foo()) ]]
    void::void foo(
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux,
    });
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e8,
      ),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      [[ ignoreTransform(foo()) ]]
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux,
    });
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e8,
      ),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      "dart:core"::class::int bar, {
        [[ ignoreTransform(foo()) ]]
        "dart:core"::class::int baz,
        [[ ignoreTransform(foo()) ]]
        "dart:core"::class::int? qux,
    });
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e8,
      ),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      [
        [[ ignoreTransform(foo()) ]]
        "dart:core"::class::int bar
        ]);
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e8,
      ),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo<T extends [[ ignoreTransform(foo()) ]] "dart:core"::class::Object?>();
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e8,
      ),
    );
  }, tags: "swid");
}
