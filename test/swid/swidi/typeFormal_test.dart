import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeArgumentListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeFormalParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleTypeFormalParser extends SwidiGrammarDefinition
    with
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser,
        SwidiTypeListParser,
        SwidiTypeArgumentListParser,
        SwidiTypeParser,
        SwidiTypeFormalParser {
  const SimpleTypeFormalParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: "T extends int"),
      parser: const SimpleTypeFormalParser()
          .build(start: const SimpleTypeFormalParser().typeFormal),
      result: const SwidiTypeFormal(
        name: "T",
        bound: SwidiInterface(
          name: "int",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
          nullabilitySuffix: SwidiNullabilitySuffix.none,
          typeArguments: [],
        ),
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
          input: 'Element extends "dart:core"::class::Object?'),
      parser: const SimpleTypeFormalParser()
          .build(start: const SimpleTypeFormalParser().typeFormal),
      result: const SwidiTypeFormal(
        name: "Element",
        bound: SwidiInterface(
          name: "Object?",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "dart:core",
          ),
          referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
            name: "class",
          ),
          nullabilitySuffix: SwidiNullabilitySuffix.question,
          typeArguments: [],
        ),
      ),
    );
  }, tags: "swid");
}
