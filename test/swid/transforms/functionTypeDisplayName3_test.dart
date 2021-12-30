import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidFunctionType(
      isFactory: false,
      typeFormals: [],
      name: "",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      declarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: [
        "nodes",
        "parent",
        "delegate",
      ],
      normalParameterTypes: [
        SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            declarationModifiers: SwidDeclarationModifiers.empty(),
            name: "List<DiagnosticsNode>",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "",
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            typeArguments: [
              SwidTypeArgumentType(
                type: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                    name: "DiagnosticsNode",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                  ),
                ),
                element: null,
              )
            ],
          ),
        ),
        SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            declarationModifiers: SwidDeclarationModifiers.empty(),
            name: "DiagnosticsNode",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          ),
        ),
        SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            declarationModifiers: SwidDeclarationModifiers.empty(),
            name: "DiagnosticsSerializationDelegate",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          ),
        ),
      ],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: SwidType.fromSwidInterface(
        swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
          name: "List<Map<String, Object>>",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          typeArguments: [
            SwidTypeArgumentType(
              type: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "Map<String,Object>",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  typeArguments: [
                    SwidTypeArgumentType(
                      type: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          name: "String",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath: "dart:core",
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          typeArguments: [],
                        ),
                      ),
                      element: null,
                    ),
                    SwidTypeArgumentType(
                      type: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          name: "Object",
                          nullabilitySuffix: SwidNullabilitySuffix.question,
                          originalPackagePath: "dart:core",
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          typeArguments: [],
                        ),
                      ),
                      element: null,
                    ),
                  ],
                ),
              ),
              element: null,
            )
          ],
        ),
      ),
    );

    expect(ir.displayName,
        "List<Map<String,Object?>> Function(List<DiagnosticsNode>? nodes, DiagnosticsNode? parent, DiagnosticsSerializationDelegate delegate)");
  }, tags: "swid");
}
