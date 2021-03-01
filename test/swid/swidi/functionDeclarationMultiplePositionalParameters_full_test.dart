import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
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
  class IconData {
    void foo(int bar,int baz);
  }
    """,
          """
  class IconData {
    void foo(int bar,int baz,);
  }
    """,
        ]),
        parser: const SwidiParser().build(),
        result: [
          const SwidiClass(
              name: "IconData",
              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
              methods: [
                SwidiFunctionDeclaration(
                  name: "foo",
                  returnType: SwidiInterface(
                    name: "void",
                    libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                    referenceDeclarationPrefix:
                        SwidiReferenceDeclarationPrefix.empty,
                    nullabilitySuffix: SwidiNullabilitySuffix.none,
                  ),
                  optionalParameters: [],
                  namedParameters: [],
                  positionalParameters: [
                    SwidiPositionalParameter(
                        declaration: SwidiDeclaration(
                            name: "bar",
                            type: SwidiInterface(
                              name: "int",
                              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                              referenceDeclarationPrefix:
                                  SwidiReferenceDeclarationPrefix.empty,
                              nullabilitySuffix: SwidiNullabilitySuffix.none,
                            ))),
                    SwidiPositionalParameter(
                        declaration: SwidiDeclaration(
                            name: "baz",
                            type: SwidiInterface(
                              name: "int",
                              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                              referenceDeclarationPrefix:
                                  SwidiReferenceDeclarationPrefix.empty,
                              nullabilitySuffix: SwidiNullabilitySuffix.none,
                            )))
                  ],
                )
              ]),
        ]);

    parserTestHarness(
        input: const ParserTestHarnessInput.fromList(inputs: [
          """
  class IconData {
    void foo(int? bar,int baz);
  }
    """,
          """
  class IconData {
    void foo(int? bar,int baz,);
  }
    """,
        ]),
        parser: const SwidiParser().build(),
        result: [
          const SwidiClass(
              name: "IconData",
              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
              methods: [
                SwidiFunctionDeclaration(
                  name: "foo",
                  returnType: SwidiInterface(
                    name: "void",
                    libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                    referenceDeclarationPrefix:
                        SwidiReferenceDeclarationPrefix.empty,
                    nullabilitySuffix: SwidiNullabilitySuffix.none,
                  ),
                  optionalParameters: [],
                  namedParameters: [],
                  positionalParameters: [
                    SwidiPositionalParameter(
                        declaration: SwidiDeclaration(
                            name: "bar",
                            type: SwidiInterface(
                              name: "int?",
                              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                              referenceDeclarationPrefix:
                                  SwidiReferenceDeclarationPrefix.empty,
                              nullabilitySuffix:
                                  SwidiNullabilitySuffix.question,
                            ))),
                    SwidiPositionalParameter(
                        declaration: SwidiDeclaration(
                            name: "baz",
                            type: SwidiInterface(
                              name: "int",
                              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                              referenceDeclarationPrefix:
                                  SwidiReferenceDeclarationPrefix.empty,
                              nullabilitySuffix: SwidiNullabilitySuffix.none,
                            )))
                  ],
                )
              ]),
        ]);

    parserTestHarness(
        input: const ParserTestHarnessInput.fromList(inputs: [
          """
  class IconData {
    void foo(int bar,int? baz);
  }
    """,
          """
  class IconData {
    void foo(int bar,int? baz,);
  }
    """,
        ]),
        parser: const SwidiParser().build(),
        result: [
          const SwidiClass(
              name: "IconData",
              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
              methods: [
                SwidiFunctionDeclaration(
                  name: "foo",
                  returnType: SwidiInterface(
                    name: "void",
                    libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                    referenceDeclarationPrefix:
                        SwidiReferenceDeclarationPrefix.empty,
                    nullabilitySuffix: SwidiNullabilitySuffix.none,
                  ),
                  optionalParameters: [],
                  namedParameters: [],
                  positionalParameters: [
                    SwidiPositionalParameter(
                        declaration: SwidiDeclaration(
                            name: "bar",
                            type: SwidiInterface(
                              name: "int",
                              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                              referenceDeclarationPrefix:
                                  SwidiReferenceDeclarationPrefix.empty,
                              nullabilitySuffix: SwidiNullabilitySuffix.none,
                            ))),
                    SwidiPositionalParameter(
                        declaration: SwidiDeclaration(
                            name: "baz",
                            type: SwidiInterface(
                              name: "int?",
                              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                              referenceDeclarationPrefix:
                                  SwidiReferenceDeclarationPrefix.empty,
                              nullabilitySuffix:
                                  SwidiNullabilitySuffix.question,
                            )))
                  ],
                )
              ]),
        ]);

    parserTestHarness(
        input: const ParserTestHarnessInput.fromList(inputs: [
          """
  class IconData {
    void foo(int? bar,int? baz);
  }
    """,
          """
  class IconData {
    void foo(int? bar,int? baz,);
  }
    """,
        ]),
        parser: const SwidiParser().build(),
        result: [
          const SwidiClass(
              name: "IconData",
              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
              methods: [
                SwidiFunctionDeclaration(
                  name: "foo",
                  returnType: SwidiInterface(
                    name: "void",
                    libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                    referenceDeclarationPrefix:
                        SwidiReferenceDeclarationPrefix.empty,
                    nullabilitySuffix: SwidiNullabilitySuffix.none,
                  ),
                  optionalParameters: [],
                  namedParameters: [],
                  positionalParameters: [
                    SwidiPositionalParameter(
                        declaration: SwidiDeclaration(
                            name: "bar",
                            type: SwidiInterface(
                              name: "int?",
                              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                              referenceDeclarationPrefix:
                                  SwidiReferenceDeclarationPrefix.empty,
                              nullabilitySuffix:
                                  SwidiNullabilitySuffix.question,
                            ))),
                    SwidiPositionalParameter(
                        declaration: SwidiDeclaration(
                            name: "baz",
                            type: SwidiInterface(
                              name: "int?",
                              libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                              referenceDeclarationPrefix:
                                  SwidiReferenceDeclarationPrefix.empty,
                              nullabilitySuffix:
                                  SwidiNullabilitySuffix.question,
                            )))
                  ],
                )
              ]),
        ]);
  }, tags: "swid");
}
