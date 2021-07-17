import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeArgumentListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleTypeListParser extends SwidiGrammarDefinition
    with
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser,
        SwidiTypeListParser,
        SwidiTypeArgumentListParser,
        SwidiTypeParser,
        SwidiTypeListParser {
  const SimpleTypeListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: "int,int"),
      parser: const SimpleTypeListParser()
          .build(start: const SimpleTypeListParser().typeList),
      result: const [
        SwidiInterface(
          name: "int",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
          nullabilitySuffix: SwidiNullabilitySuffix.none,
          typeArguments: [],
        ),
        SwidiInterface(
          typeArguments: [],
          name: "int",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
          nullabilitySuffix: SwidiNullabilitySuffix.none,
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
          input: '"dart:core"::class::int?,int'),
      parser: const SimpleTypeListParser()
          .build(start: const SimpleTypeListParser().typeList),
      result: const [
        SwidiInterface(
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
          typeArguments: [],
          name: "int",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
          nullabilitySuffix: SwidiNullabilitySuffix.none,
        ),
      ],
    );
  }, tags: "swid");
}
