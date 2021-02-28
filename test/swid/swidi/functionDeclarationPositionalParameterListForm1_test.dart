import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalOrOptionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class BasicFunctionParameterListParser extends SwidiGrammarDefinition
    with
        SwidiTypeParser,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationOptionalParameterParser,
        SwidiFunctionDeclarationPositionalParameterParser,
        SwidiFunctionDeclarationParameterListParser {
  const BasicFunctionParameterListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: const ParserTestHarnessInput.fromList(inputs: ["(void foo,)"]),
        parser: const BasicFunctionParameterListParser().build(
            start: const BasicFunctionParameterListParser()
                .functionDeclarationParameterList),
        result: const [
          SwidiPositionalOrOptionalParameter.fromSwidiPositionalParameter(
              positionalParameter: SwidiPositionalParameter(
                  declaration: SwidiDeclaration(
                      name: "foo", type: SwidiInterface(name: "void"))))
        ]);
  }, tags: "swid");
}
