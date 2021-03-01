import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleDeclarationParser extends SwidiGrammarDefinition
    with
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser,
        SwidiTypeParser,
        SwidiSimpleDeclarationParser {
  const SimpleDeclarationParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(input: "void foo"),
        parser: const SimpleDeclarationParser()
            .build(start: const SimpleDeclarationParser().simpleDeclaration),
        result: const SwidiDeclaration(
            type: SwidiInterface(
              name: "void",
              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
              referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
              nullabilitySuffix: SwidiNullabilitySuffix.none,
            ),
            name: "foo"));

    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(input: "int foo"),
        parser: const SimpleDeclarationParser()
            .build(start: const SimpleDeclarationParser().simpleDeclaration),
        result: const SwidiDeclaration(
            type: SwidiInterface(
              name: "int",
              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
              referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
              nullabilitySuffix: SwidiNullabilitySuffix.none,
            ),
            name: "foo"));

    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(input: "int? foo"),
        parser: const SimpleDeclarationParser()
            .build(start: const SimpleDeclarationParser().simpleDeclaration),
        result: const SwidiDeclaration(
            type: SwidiInterface(
              name: "int?",
              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
              referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
              nullabilitySuffix: SwidiNullabilitySuffix.question,
            ),
            name: "foo"));
  }, tags: "swid");
}
