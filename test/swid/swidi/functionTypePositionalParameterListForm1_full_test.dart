import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypePositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
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
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiDeclarationWithConstValueParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionTypePositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiInterfaceTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeArgumentListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class BasicFunctionTypeParameterListParser extends SwidiGrammarDefinition
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
        SwidiDeclarationWithConstValueParser,
        SwidiSimpleDeclarationParser,
        SwidiInterfaceTypeParser,
        SwidiFunctionTypeOptionalParameterParser,
        SwidiFunctionTypePositionalParameterParser,
        SwidiFunctionTypeNamedParameterParser,
        SwidiFunctionTypeParameterListParser,
        SwidiFunctionTypeParser {
  const BasicFunctionTypeParameterListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "Function void (void)",
        "Function void (void )",
        "Function void ( void )",
      ]),
      parser: const BasicFunctionTypeParameterListParser().build(
        start: const BasicFunctionTypeParameterListParser().functionType,
      ),
      result: SwidiFunctionType(
        nullabilitySuffix: SwidiNullabilitySuffix.none,
        returnType: SwidiType.fromSwidiInterface(
          swidiInterface: SwidiInterface(
            annotations: [],
            typeArguments: [],
            name: "void",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
            nullabilitySuffix: SwidiNullabilitySuffix.none,
          ),
        ),
        positionalParameters: [
          SwidiFunctionTypePositionalParameter(
            type: SwidiType.fromSwidiInterface(
              swidiInterface: SwidiInterface(
                annotations: [],
                typeArguments: [],
                name: "void",
                libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                referenceDeclarationPrefix:
                    SwidiReferenceDeclarationPrefix.empty,
                nullabilitySuffix: SwidiNullabilitySuffix.none,
              ),
            ),
          ),
        ],
        optionalParameters: [],
        namedParameters: [],
        typeFormals: [],
        annotations: [],
      ),
    );
  }, tags: "swid");
}
