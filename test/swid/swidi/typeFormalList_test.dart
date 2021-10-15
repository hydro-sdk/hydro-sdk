import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormalList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiAnnotationListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiAnnotationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstBooleanFalseParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstBooleanParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstBooleanTrueParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstFunctionInvocationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstMapParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstPositionalParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypePositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiInterfaceTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeArgumentListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeFormalListDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeFormalListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeFormalParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleTypeFormalListParser extends SwidiGrammarDefinition
    with
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser,
        SwidiConstNumberParser,
        SwidiConstStringParser,
        SwidiConstBooleanFalseParser,
        SwidiConstBooleanTrueParser,
        SwidiConstBooleanParser,
        SwidiConstParser,
        SwidiConstFunctionInvocationParser,
        SwidiConstParameterListParser,
        SwidiConstPositionalParameterListParser,
        SwidiConstNamedParameterParser,
        SwidiConstNamedParameterListParser,
        SwidiConstMapParser,
        SwidiAnnotationParser,
        SwidiAnnotationListParser,
        SwidiTypeParser,
        SwidiTypeListParser,
        SwidiTypeArgumentListParser,
        SwidiTypeFormalParser,
        SwidiTypeFormalListParser,
        SwidiTypeFormalListDeclarationParser,
        SwidiInterfaceTypeParser,
        SwidiFunctionTypeOptionalParameterParser,
        SwidiFunctionTypePositionalParameterParser,
        SwidiFunctionTypeNamedParameterParser,
        SwidiFunctionTypeParameterListParser,
        SwidiFunctionTypeParser {
  const SimpleTypeFormalListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: "<T>"),
      parser: const SimpleTypeFormalListParser().build(
          start: const SimpleTypeFormalListParser().typeFormalListDeclaration),
      result: SwidiTypeFormalList(
        typeFormalList: [
          SwidiTypeFormal(
            name: "T",
            bound: SwidiInterface.empty,
          ),
        ],
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: "<t,u>"),
      parser: const SimpleTypeFormalListParser().build(
          start: const SimpleTypeFormalListParser().typeFormalListDeclaration),
      result: SwidiTypeFormalList(
        typeFormalList: [
          SwidiTypeFormal(
            name: "t",
            bound: SwidiInterface.empty,
          ),
          SwidiTypeFormal(
            name: "u",
            bound: SwidiInterface.empty,
          ),
        ],
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
          input:
              '<t,u extends "dart:collection"::class::List<void::void?>, v, k extends dynamic::int>'),
      parser: const SimpleTypeFormalListParser().build(
          start: const SimpleTypeFormalListParser().typeFormalListDeclaration),
      result: SwidiTypeFormalList(
        typeFormalList: [
          SwidiTypeFormal(
            name: "t",
            bound: SwidiInterface.empty,
          ),
          SwidiTypeFormal(
            name: "u",
            bound: SwidiInterface(
              annotations: [],
              name: "List",
              libraryScopePrefix: SwidiLibraryScopePrefix(
                name: "dart:collection",
              ),
              referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                name: "class",
              ),
              nullabilitySuffix: SwidiNullabilitySuffix.none,
              typeArguments: [
                SwidiInterface(
                  annotations: [],
                  name: "void?",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                    name: "void",
                  ),
                  nullabilitySuffix: SwidiNullabilitySuffix.question,
                  typeArguments: [],
                )
              ],
            ),
          ),
          SwidiTypeFormal(
            name: "v",
            bound: SwidiInterface.empty,
          ),
          SwidiTypeFormal(
            name: "k",
            bound: SwidiInterface(
              annotations: [],
              typeArguments: [],
              name: "int",
              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
              referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                name: "dynamic",
              ),
              nullabilitySuffix: SwidiNullabilitySuffix.none,
            ),
          ),
        ],
      ),
    );
  }, tags: "swid");
}
