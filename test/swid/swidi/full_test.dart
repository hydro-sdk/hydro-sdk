import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiParser.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux,
    });
  }
    """,
      ]),
      parser: const SwidiParser().build(),
      result: [
        const SwidiClass(
            name: "IconData",
            libraryScopePrefix: SwidiLibraryScopePrefix(
                name: "package:flutter/src/widgets/icon_data.dart"),
            methods: [
              SwidiFunctionDeclaration(
                name: "foo",
                returnType: SwidiInterface(
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix(name: "void"),
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
                optionalParameters: [],
                positionalParameters: [
                  SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "bar",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix:
                                SwidiLibraryScopePrefix(name: "dart:core"),
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix(name: "class"),
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                ],
                namedParameters: [
                  SwidiNamedParameter(
                      declaration: SwidiDeclaration(
                          name: "baz",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix:
                                SwidiLibraryScopePrefix(name: "dart:core"),
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix(name: "class"),
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                  SwidiNamedParameter(
                      declaration: SwidiDeclaration(
                          name: "qux",
                          type: SwidiInterface(
                            name: "int?",
                            libraryScopePrefix:
                                SwidiLibraryScopePrefix(name: "dart:core"),
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix(name: "class"),
                            nullabilitySuffix: SwidiNullabilitySuffix.question,
                          )))
                ],
              )
            ]),
      ],
    );
  }, tags: "swid");
}
