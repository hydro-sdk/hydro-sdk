import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    //Dart allows non-nullable positionals to appear after nullable positionals
    //Typescript does not allow this but we can emulate it with required positionals unioned with undefined

    //List<Map<String, Object?>> toJsonList (List<DiagnosticsNode>? nodes, DiagnosticsNode? parent, DiagnosticsSerializationDelegate delegate)
    expect(
        transformFunctionTypeToTs(
            parentClass: null,
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
            swidFunctionType: SwidFunctionType(
              isFactory: false,
              typeFormals: [],
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              declarationModifiers: SwidDeclarationModifiers.empty(),
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: ["nodes", "parent", "delegate"],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "List<DiagnosticsNode>",
                        nullabilitySuffix: SwidNullabilitySuffix.question,
                        originalPackagePath: "",
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        typeArguments: [
                      SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "DiagnosticsNode",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                      ))
                    ])),
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "DiagnosticsNode",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                  originalPackagePath: "",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                )),
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "DiagnosticsSerializationDelegate",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                )),
              ],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              returnType: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                      name: "List<Map<String, Object>>",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      typeArguments: [
                    SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          declarationModifiers: SwidDeclarationModifiers.empty(),
                            name: "Map<String,Object>",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath: "dart:core",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            typeArguments: [
                          SwidType.fromSwidInterface(
                              swidInterface: SwidInterface(
                                declarationModifiers: SwidDeclarationModifiers.empty(),
                            name: "String",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath: "dart:core",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            typeArguments: [],
                          )),
                          SwidType.fromSwidInterface(
                              swidInterface: SwidInterface(
                                declarationModifiers: SwidDeclarationModifiers.empty(),
                            name: "Object",
                            nullabilitySuffix: SwidNullabilitySuffix.question,
                            originalPackagePath: "dart:core",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            typeArguments: [],
                          ))
                        ]))
                  ])),
            )),
        "(nodes: List<DiagnosticsNode> | undefined, parent: DiagnosticsNode | undefined, delegate: DiagnosticsSerializationDelegate) => List<{[index: string]: Object | undefined}>");

    //List<Map<String, Object?>> toJsonList (List<DiagnosticsNode>? nodes, DiagnosticsNode? parent, DiagnosticsSerializationDelegate? delegate)
    expect(
        transformFunctionTypeToTs(
            parentClass: null,
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
            swidFunctionType: SwidFunctionType(
              isFactory: false,
              name: "",
              typeFormals: [],
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              declarationModifiers: SwidDeclarationModifiers.empty(),
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: ["nodes", "parent", "delegate"],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "List<DiagnosticsNode>",
                        nullabilitySuffix: SwidNullabilitySuffix.question,
                        originalPackagePath: "",
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        typeArguments: [
                      SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "DiagnosticsNode",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                      ))
                    ])),
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "DiagnosticsNode",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                  originalPackagePath: "",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                )),
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "DiagnosticsSerializationDelegate",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                  originalPackagePath: "",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                )),
              ],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              returnType: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                      name: "List<Map<String, Object>>",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      typeArguments: [
                    SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          declarationModifiers: SwidDeclarationModifiers.empty(),
                            name: "Map<String,Object>",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath: "dart:core",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            typeArguments: [
                          SwidType.fromSwidInterface(
                              swidInterface: SwidInterface(
                                declarationModifiers: SwidDeclarationModifiers.empty(),
                            name: "String",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath: "dart:core",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            typeArguments: [],
                          )),
                          SwidType.fromSwidInterface(
                              swidInterface: SwidInterface(
                                declarationModifiers: SwidDeclarationModifiers.empty(),
                            name: "Object",
                            nullabilitySuffix: SwidNullabilitySuffix.question,
                            originalPackagePath: "dart:core",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            typeArguments: [],
                          ))
                        ]))
                  ])),
            )),
        "(nodes?: List<DiagnosticsNode> | undefined, parent?: DiagnosticsNode | undefined, delegate?: DiagnosticsSerializationDelegate | undefined) => List<{[index: string]: Object | undefined}>");

    //List<Map<String, Object?>> toJsonList (List<DiagnosticsNode> nodes, DiagnosticsNode parent, DiagnosticsSerializationDelegate? delegate)
    expect(
        transformFunctionTypeToTs(
            parentClass: null,
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
            swidFunctionType: SwidFunctionType(
              isFactory: false,
              name: "",
              typeFormals: [],
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              declarationModifiers: SwidDeclarationModifiers.empty(),
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: ["nodes", "parent", "delegate"],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "List<DiagnosticsNode>",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "",
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        typeArguments: [
                      SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "DiagnosticsNode",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                      ))
                    ])),
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "DiagnosticsNode",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                )),
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "DiagnosticsSerializationDelegate",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                  originalPackagePath: "",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                )),
              ],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              returnType: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                      name: "List<Map<String, Object>>",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      typeArguments: [
                    SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          declarationModifiers: SwidDeclarationModifiers.empty(),
                            name: "Map<String,Object>",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath: "dart:core",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            typeArguments: [
                          SwidType.fromSwidInterface(
                              swidInterface: SwidInterface(
                                declarationModifiers: SwidDeclarationModifiers.empty(),
                            name: "String",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath: "dart:core",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            typeArguments: [],
                          )),
                          SwidType.fromSwidInterface(
                              swidInterface: SwidInterface(
                                declarationModifiers: SwidDeclarationModifiers.empty(),
                            name: "Object",
                            nullabilitySuffix: SwidNullabilitySuffix.question,
                            originalPackagePath: "dart:core",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            typeArguments: [],
                          ))
                        ]))
                  ])),
            )),
        "(nodes: List<DiagnosticsNode>, parent: DiagnosticsNode, delegate?: DiagnosticsSerializationDelegate | undefined) => List<{[index: string]: Object | undefined}>");
  }, tags: "swid");
}
