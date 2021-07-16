import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        //num? (Widget Function() foo)
        transformFunctionTypeToTs(
          parentClass: null,
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
            swidFunctionType: SwidFunctionType(
                isFactory: false,
                namedDefaults: {},
                typeFormals: [],
                swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                name: "",
                originalPackagePath: "",
                normalParameterNames: ["foo"],
                normalParameterTypes: [
                  SwidType.fromSwidFunctionType(
                      swidFunctionType: SwidFunctionType(
                          isFactory: false,
                          typeFormals: [],
                          namedDefaults: {},
                          swidDeclarationModifiers:
                              SwidDeclarationModifiers.empty(),
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
                  typeArguments: [],
                  name: "num",
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  originalPackagePath: "dart:core",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                )))),
        "(foo : () => Widget) => num | undefined");

    expect(
        //Iterable<T> map<T>(T f(E e))
        transformFunctionTypeToTs(
          parentClass: null,
          emitTrailingReturnType: true,
          trailingReturnTypeKind: TrailingReturnTypeKind.colon,
          swidFunctionType: SwidFunctionType(
            name: "map",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
            namedParameterTypes: {},
            namedDefaults: {},
            normalParameterNames: ["f"],
            normalParameterTypes: [
              SwidType.fromSwidFunctionType(
                swidFunctionType: SwidFunctionType(
                    name: "",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "",
                    swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                    namedParameterTypes: {},
                    namedDefaults: {},
                    normalParameterNames: ["e"],
                    normalParameterTypes: [
                      SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
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
                name: "Iterable<T>",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [
                  SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "T",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.typeParameterType,
                    ),
                  )
                ],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
              ),
            ),
            isFactory: false,
            typeFormals: [
              SwidTypeFormal(
                value: SwidTypeFormalValue.fromString(string: "T"),
                swidReferenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
              ),
            ],
          ),
        ),
        "<T>(f : (e: E) => T) : Iterable<T>");
  }, tags: "swid");
}
