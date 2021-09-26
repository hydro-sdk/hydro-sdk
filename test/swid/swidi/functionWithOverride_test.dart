import 'package:flutter_test/flutter_test.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstMap.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
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
    void foo(int bar,int baz) -> @"foo" ;
  }
    """,
        """
  class IconData {
void foo(int bar,int baz)->@"foo";
  }
    """,
      ]),
      parser: const SwidiParser().build(),
      result: [
        SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiConstString(
                swidiConstString: SwidiConstString(
                  value: "foo",
                ),
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
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
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
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
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
            ),
          ],
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: """
class IconData {
  void foo() -> {
    1 : 2,
  };
}
"""),
      parser: const SwidiParser().build(),
      result: [
        SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              name: "foo",
              returnType: SwidiInterface(
                name: "void",
                libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                referenceDeclarationPrefix:
                    SwidiReferenceDeclarationPrefix.empty,
                nullabilitySuffix: SwidiNullabilitySuffix.none,
                typeArguments: [],
                annotations: [],
              ),
              positionalParameters: [],
              optionalParameters: [],
              namedParameters: [],
              typeFormals: [],
              shortHandOverride: SwidiConst.fromSwidiConstMap(
                swidiConstMap: SwidiConstMap(
                  entries: [
                    Tuple2(
                      SwidiConst.fromSwidiConstNumber(
                        swidiConstNumber: SwidiConstNumber(
                          value: "1",
                        ),
                      ),
                      SwidiConst.fromSwidiConstNumber(
                        swidiConstNumber: SwidiConstNumber(
                          value: "2",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: """
class IconData {
  void foo() -> {
    @"1" : @"2",
  };
}
"""),
      parser: const SwidiParser().build(),
      result: [
        SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              name: "foo",
              returnType: SwidiInterface(
                name: "void",
                libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                referenceDeclarationPrefix:
                    SwidiReferenceDeclarationPrefix.empty,
                nullabilitySuffix: SwidiNullabilitySuffix.none,
                typeArguments: [],
                annotations: [],
              ),
              positionalParameters: [],
              optionalParameters: [],
              namedParameters: [],
              typeFormals: [],
              shortHandOverride: SwidiConst.fromSwidiConstMap(
                swidiConstMap: SwidiConstMap(
                  entries: [
                    Tuple2(
                      SwidiConst.fromSwidiConstString(
                        swidiConstString: SwidiConstString(
                          value: "1",
                        ),
                      ),
                      SwidiConst.fromSwidiConstString(
                        swidiConstString: SwidiConstString(
                          value: "2",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }, tags: "swid");
}
