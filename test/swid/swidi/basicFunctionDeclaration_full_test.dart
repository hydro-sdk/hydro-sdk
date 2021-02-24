import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiParser.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: """
  class IconData {
    void foo();
  }
    """,
      parser: const SwidiParser().build(),
      result: const SwidiFunctionDeclaration(returnType: "void", name: "foo"),
    );
  }, tags: "swid");
}
