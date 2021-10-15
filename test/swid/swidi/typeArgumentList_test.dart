import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeArgumentList.dart';
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
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleTypeArgumentListParser extends SwidiGrammarDefinition
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
        SwidiInterfaceTypeParser,
        SwidiFunctionTypeOptionalParameterParser,
        SwidiFunctionTypePositionalParameterParser,
        SwidiFunctionTypeNamedParameterParser,
        SwidiFunctionTypeParameterListParser,
        SwidiFunctionTypeParser {
  const SimpleTypeArgumentListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: "<int,int>"),
      parser: const SimpleTypeArgumentListParser()
          .build(start: const SimpleTypeArgumentListParser().typeArguments),
      result: SwidiTypeArgumentList(
        typeList: [
          SwidiInterface(
            annotations: [],
            name: "int",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
            nullabilitySuffix: SwidiNullabilitySuffix.none,
            typeArguments: [],
          ),
          SwidiInterface(
            annotations: [],
            typeArguments: [],
            name: "int",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
            nullabilitySuffix: SwidiNullabilitySuffix.none,
          ),
        ],
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
          input: '<"dart:core"::class::int?, int>'),
      parser: const SimpleTypeArgumentListParser()
          .build(start: const SimpleTypeArgumentListParser().typeArguments),
      result: SwidiTypeArgumentList(
        typeList: [
          SwidiInterface(
            annotations: [],
            typeArguments: [],
            name: "int?",
            libraryScopePrefix: SwidiLibraryScopePrefix(
              name: "dart:core",
            ),
            referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
              name: "class",
            ),
            nullabilitySuffix: SwidiNullabilitySuffix.question,
          ),
          SwidiInterface(
            annotations: [],
            typeArguments: [],
            name: "int",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
            nullabilitySuffix: SwidiNullabilitySuffix.none,
          ),
        ],
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
          input:
              '<"dart:collection"::class::List<void::void?> , dynamic::int>'),
      parser: const SimpleTypeArgumentListParser()
          .build(start: const SimpleTypeArgumentListParser().typeArguments),
      result: SwidiTypeArgumentList(
        typeList: [
          SwidiInterface(
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
          SwidiInterface(
            annotations: [],
            typeArguments: [],
            name: "int",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
              name: "dynamic",
            ),
            nullabilitySuffix: SwidiNullabilitySuffix.none,
          ),
        ],
      ),
    );
  }, tags: "swid");
}
