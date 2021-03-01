import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleTypeParser extends SwidiGrammarDefinition
    with SwidiLibraryScopePrefixParser, SwidiTypeParser {
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
          nullabilitySuffix: SwidiNullabilitySuffix.none,
        ));

    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(input: "void?"),
        parser: const SimpleTypeParser()
            .build(start: const SimpleTypeParser().type),
        result: const SwidiInterface(
          name: "void?",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
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
          nullabilitySuffix: SwidiNullabilitySuffix.question,
        ));
  }, tags: "swid");
}
