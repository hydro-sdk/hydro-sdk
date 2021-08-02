import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
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
              staticMethods: [],
              methods: [
                SwidiFunctionDeclaration(
                  shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                    swidiEmptyConst: SwidiEmptyConst(),
                  ),
                  typeFormals: [],
                  name: "foo",
                  returnType: SwidiInterface(
                    annotations: [],
                    typeArguments: [],
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
                              annotations: [],
                              typeArguments: [],
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
                              annotations: [],
                              typeArguments: [],
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
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              typeFormals: [],
              name: "foo",
              returnType: SwidiInterface(
                annotations: [],
                typeArguments: [],
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
                      annotations: [],
                      typeArguments: [],
                      name: "int?",
                      libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                      referenceDeclarationPrefix:
                          SwidiReferenceDeclarationPrefix.empty,
                      nullabilitySuffix: SwidiNullabilitySuffix.question,
                    ),
                  ),
                ),
                SwidiPositionalParameter(
                  declaration: SwidiDeclaration(
                    name: "baz",
                    type: SwidiInterface(
                      annotations: [],
                      typeArguments: [],
                      name: "int",
                      libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                      referenceDeclarationPrefix:
                          SwidiReferenceDeclarationPrefix.empty,
                      nullabilitySuffix: SwidiNullabilitySuffix.none,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );

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
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              typeFormals: [],
              name: "foo",
              returnType: SwidiInterface(
                annotations: [],
                typeArguments: [],
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
                      annotations: [],
                      typeArguments: [],
                      name: "int",
                      libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                      referenceDeclarationPrefix:
                          SwidiReferenceDeclarationPrefix.empty,
                      nullabilitySuffix: SwidiNullabilitySuffix.none,
                    ),
                  ),
                ),
                SwidiPositionalParameter(
                  declaration: SwidiDeclaration(
                    name: "baz",
                    type: SwidiInterface(
                      annotations: [],
                      typeArguments: [],
                      name: "int?",
                      libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                      referenceDeclarationPrefix:
                          SwidiReferenceDeclarationPrefix.empty,
                      nullabilitySuffix: SwidiNullabilitySuffix.question,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );

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
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              typeFormals: [],
              name: "foo",
              returnType: SwidiInterface(
                annotations: [],
                typeArguments: [],
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
                          annotations: [],
                          typeArguments: [],
                          name: "int?",
                          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                          referenceDeclarationPrefix:
                              SwidiReferenceDeclarationPrefix.empty,
                          nullabilitySuffix: SwidiNullabilitySuffix.question,
                        ))),
                SwidiPositionalParameter(
                  declaration: SwidiDeclaration(
                    name: "baz",
                    type: SwidiInterface(
                      annotations: [],
                      typeArguments: [],
                      name: "int?",
                      libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                      referenceDeclarationPrefix:
                          SwidiReferenceDeclarationPrefix.empty,
                      nullabilitySuffix: SwidiNullabilitySuffix.question,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }, tags: "swid");
}
