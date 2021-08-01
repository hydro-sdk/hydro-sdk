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
    void::void foo() -> {
      @"tsClassMethodDeclaration" : 123,
    };
  }
""",
      expectation: const SwidiClassValidationState.invalid(
        swidiValidationError: SwidiValidationError.e24,
      ),
    );
  }, tags: "swid");
}
