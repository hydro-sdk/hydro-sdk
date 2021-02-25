import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleDeclarationParser extends SwidiGrammarDefinition
    with SwidiTypeParser, SwidiSimpleDeclarationParser {
  const SimpleDeclarationParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: "void foo",
        parser: const SimpleDeclarationParser()
            .build(start: const SimpleDeclarationParser().simpleDeclaration),
        result: const SwidiDeclaration(
            type: SwidiInterface(name: "void"), name: "foo"));
  }, tags: "swid");
}
