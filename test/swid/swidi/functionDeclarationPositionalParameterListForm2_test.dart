import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalOrOptionalOrNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class BasicFunctionParameterListParser extends SwidiGrammarDefinition
    with
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser,
        SwidiTypeParser,
        SwidiConstNumberParser,
        SwidiConstParser,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationOptionalParameterParser,
        SwidiFunctionDeclarationPositionalParameterParser,
        SwidiFunctionDeclarationNamedParameterParser,
        SwidiFunctionDeclarationParameterListParser {
  const BasicFunctionParameterListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: const ParserTestHarnessInput.fromList(
            inputs: ["(void foo,int bar,int baz)"]),
        parser: const BasicFunctionParameterListParser().build(
            start: const BasicFunctionParameterListParser()
                .functionDeclarationParameterList),
        result: const [
          SwidiPositionalOrOptionalOrNamedParameter
              .fromSwidiPositionalParameter(
                  positionalParameter: SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "foo",
                          type: SwidiInterface(
                            name: "void",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          )))),
          SwidiPositionalOrOptionalOrNamedParameter
              .fromSwidiPositionalParameter(
                  positionalParameter: SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "bar",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          )))),
          SwidiPositionalOrOptionalOrNamedParameter
              .fromSwidiPositionalParameter(
                  positionalParameter: SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "baz",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))))
        ]);

    parserTestHarness(
        input: const ParserTestHarnessInput.fromList(
            inputs: ["(void foo,int? bar,int baz)"]),
        parser: const BasicFunctionParameterListParser().build(
            start: const BasicFunctionParameterListParser()
                .functionDeclarationParameterList),
        result: const [
          SwidiPositionalOrOptionalOrNamedParameter
              .fromSwidiPositionalParameter(
                  positionalParameter: SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "foo",
                          type: SwidiInterface(
                            name: "void",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          )))),
          SwidiPositionalOrOptionalOrNamedParameter
              .fromSwidiPositionalParameter(
                  positionalParameter: SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "bar",
                          type: SwidiInterface(
                            name: "int?",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.question,
                          )))),
          SwidiPositionalOrOptionalOrNamedParameter
              .fromSwidiPositionalParameter(
                  positionalParameter: SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "baz",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))))
        ]);
  }, tags: "swid");
}
