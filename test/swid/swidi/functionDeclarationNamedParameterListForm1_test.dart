import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalOrOptionalOrNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeArgumentListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class BasicFunctionParameterListParser extends SwidiGrammarDefinition
    with
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser,
        SwidiTypeListParser,
        SwidiTypeArgumentListParser,
        SwidiTypeParser,
        SwidiConstNumberParser,
        SwidiConstStringParser,
        SwidiConstParser,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationNamedParameterParser,
        SwidiFunctionDeclarationOptionalParameterParser,
        SwidiFunctionDeclarationPositionalParameterParser,
        SwidiFunctionDeclarationParameterListParser {
  const BasicFunctionParameterListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: const ParserTestHarnessInput.fromList(
            inputs: ["({void foo})", "({void foo,})"]),
        parser: const BasicFunctionParameterListParser().build(
            start: const BasicFunctionParameterListParser()
                .functionDeclarationParameterList),
        result: [
          const SwidiPositionalOrOptionalOrNamedParameter
              .fromSwidiNamedParameter(
            namedParameter: SwidiNamedParameter(
              declaration: SwidiDeclaration(
                name: "foo",
                type: SwidiInterface(
                  typeArguments: [],
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix.empty,
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
              ),
            ),
          )
        ]);
  }, tags: "swid");
}
