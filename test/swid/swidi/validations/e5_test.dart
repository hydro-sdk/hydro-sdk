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
    [[ foo() ]]
    void::void foo(
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux,
    });
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e5,
      ),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      [[ foo() ]]
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux,
    });
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e5,
      ),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      "dart:core"::class::int bar, {
        [[ foo() ]]
        "dart:core"::class::int baz,
        [[ foo( ) ]]
        "dart:core"::class::int? qux,
    });
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e5,
      ),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      [
        [[ foo() ]]
        "dart:core"::class::int bar
        ]);
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e5,
      ),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo<T extends [[ foo() ]] "dart:core"::class::Object?>();
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e5,
      ),
    );
  }, tags: "swid");
}
