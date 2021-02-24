import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParser.dart';

import 'lib/parserTestHarness.dart';

class BasicFunctionDeclarationParser extends SwidiGrammarDefinition
    with SwidiFunctionDeclarationParser {
  const BasicFunctionDeclarationParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: """
  void foo();
    """,
        parser: const BasicFunctionDeclarationParser().build(
            start: const BasicFunctionDeclarationParser().functionDeclaration),
        result:
            const SwidiFunctionDeclaration(returnType: "void", name: "foo"));
  }, tags: "swid");
}
