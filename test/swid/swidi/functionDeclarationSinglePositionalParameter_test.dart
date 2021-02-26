import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class BasicFunctionParameterListParser extends SwidiGrammarDefinition
    with
        SwidiTypeParser,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationParameterListParser {
  const BasicFunctionParameterListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: "(void foo)",
        parser: const BasicFunctionParameterListParser().build(
            start: const BasicFunctionParameterListParser()
                .functionDeclarationParameterList),
        result: const SwidiDeclaration(
            name: "foo", type: SwidiInterface(name: "void")));
  }, tags: "swid");
}
