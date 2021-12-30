import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        //num? (Widget Function() foo)
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformFunctionTypeToTs(
            parentClass: null,
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
            swidFunctionType: SwidFunctionType(
              isFactory: false,
              namedDefaults: {},
              typeFormals: [],
              declarationModifiers: SwidDeclarationModifiers.empty(),
              name: "",
              originalPackagePath: "",
              normalParameterNames: ["foo"],
              normalParameterTypes: [
                SwidType.fromSwidFunctionType(
                    swidFunctionType: SwidFunctionType(
                        isFactory: false,
                        typeFormals: [],
                        namedDefaults: {},
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "",
                        nullabilitySuffix: SwidNullabilitySuffix.star,
                        originalPackagePath: "",
                        namedParameterTypes: {},
                        normalParameterNames: [],
                        normalParameterTypes: [],
                        optionalParameterNames: [],
                        optionalParameterTypes: [],
                        returnType: SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          typeArguments: [],
                          name: "Widget",
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          originalPackagePath: "",
                          nullabilitySuffix: SwidNullabilitySuffix.star,
                        ))))
              ],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              namedParameterTypes: {},
              nullabilitySuffix: SwidNullabilitySuffix.star,
              returnType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                  typeArguments: [],
                  name: "num",
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  originalPackagePath: "dart:core",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                ),
              ),
            ),
          ),
        ),
        "(foo : () => Widget) => num | undefined");

    expect(
        //Iterable<T> map<T>(T f(E e))
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformFunctionTypeToTs(
            parentClass: null,
            emitTrailingReturnType: true,
            trailingReturnTypeKind: TrailingReturnTypeKind.colon,
            swidFunctionType: SwidFunctionType(
              name: "map",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              declarationModifiers: SwidDeclarationModifiers.empty(),
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: ["f"],
              normalParameterTypes: [
                SwidType.fromSwidFunctionType(
                  swidFunctionType: SwidFunctionType(
                      name: "",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "",
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                      namedParameterTypes: {},
                      namedDefaults: {},
                      normalParameterNames: ["e"],
                      normalParameterTypes: [
                        SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
                                declarationModifiers:
                                    SwidDeclarationModifiers.empty(),
                                name: "E",
                                nullabilitySuffix: SwidNullabilitySuffix.none,
                                originalPackagePath: "dart:core",
                                typeArguments: [],
                                referenceDeclarationKind:
                                    SwidReferenceDeclarationKind
                                        .typeParameterType)),
                      ],
                      optionalParameterNames: [],
                      optionalParameterTypes: [],
                      returnType: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "T",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "dart:core",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.typeParameterType,
                      )),
                      isFactory: false,
                      typeFormals: []),
                ),
              ],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              returnType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "Iterable<T>",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [
                    SwidTypeArgumentType(
                      type: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          name: "T",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath: "dart:core",
                          typeArguments: [],
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.typeParameterType,
                        ),
                      ),
                      element: null,
                    )
                  ],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                ),
              ),
              isFactory: false,
              typeFormals: [
                SwidTypeFormal(
                  swidTypeFormalBound: null,
                  value: SwidTypeFormalValue.fromString(
                    string: "T",
                  ),
                  swidReferenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                ),
              ],
            ),
          ),
        ),
        "<T>(f : (e: E) => T) : Iterable<T>");
  }, tags: "swid");
}
