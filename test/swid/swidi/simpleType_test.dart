import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleTypeParser extends SwidiGrammarDefinition
    with
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser,
        SwidiTypeParser {
  const SimpleTypeParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(input: "void"),
        parser: const SimpleTypeParser()
            .build(start: const SimpleTypeParser().type),
        result: const SwidiInterface(
          name: "void",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
          nullabilitySuffix: SwidiNullabilitySuffix.none,
        ));

    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(input: "void?"),
        parser: const SimpleTypeParser()
            .build(start: const SimpleTypeParser().type),
        result: const SwidiInterface(
          name: "void?",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
          nullabilitySuffix: SwidiNullabilitySuffix.question,
        ));

    parserTestHarness(
        input:
            const ParserTestHarnessInput.fromString(input: '"dart:core"::int'),
        parser: const SimpleTypeParser()
            .build(start: const SimpleTypeParser().type),
        result: const SwidiInterface(
          name: "int",
          libraryScopePrefix: SwidiLibraryScopePrefix(name: "dart:core"),
          referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
          nullabilitySuffix: SwidiNullabilitySuffix.none,
        ));

    parserTestHarness(
        input:
            const ParserTestHarnessInput.fromString(input: '"dart:core"::int?'),
        parser: const SimpleTypeParser()
            .build(start: const SimpleTypeParser().type),
        result: const SwidiInterface(
          name: "int?",
          libraryScopePrefix: SwidiLibraryScopePrefix(name: "dart:core"),
          referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
          nullabilitySuffix: SwidiNullabilitySuffix.question,
        ));

    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(input: 'type::int?'),
        parser: const SimpleTypeParser()
            .build(start: const SimpleTypeParser().type),
        result: const SwidiInterface(
          name: "int?",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix:
              SwidiReferenceDeclarationPrefix(name: "type"),
          nullabilitySuffix: SwidiNullabilitySuffix.question,
        ));

    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(input: 'enum::int'),
        parser: const SimpleTypeParser()
            .build(start: const SimpleTypeParser().type),
        result: const SwidiInterface(
          name: "int",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix:
              SwidiReferenceDeclarationPrefix(name: "enum"),
          nullabilitySuffix: SwidiNullabilitySuffix.none,
        ));

    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(
            input: '"dart:core"::class::int?'),
        parser: const SimpleTypeParser()
            .build(start: const SimpleTypeParser().type),
        result: const SwidiInterface(
          name: "int?",
          libraryScopePrefix: SwidiLibraryScopePrefix(name: "dart:core"),
          referenceDeclarationPrefix:
              SwidiReferenceDeclarationPrefix(name: "class"),
          nullabilitySuffix: SwidiNullabilitySuffix.question,
        ));
  }, tags: "swid");
}
