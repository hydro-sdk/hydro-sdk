import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        //num? foo(int itemCount, [Widget Function([Duration Function(int? millis)? resolveDuration])? onTap])
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformFunctionTypeToTs(
            parentClass: null,
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
            swidFunctionType: SwidFunctionType(
              namedDefaults: {},
              declarationModifiers: SwidDeclarationModifiers.empty(),
              name: "foo",
              typeFormals: [],
              isFactory: false,
              originalPackagePath: "",
              normalParameterNames: ["itemCount"],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                  typeArguments: [],
                  name: "int",
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  originalPackagePath: "",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                )),
              ],
              optionalParameterNames: ["onTap"],
              optionalParameterTypes: [
                SwidType.fromSwidFunctionType(
                    swidFunctionType: SwidFunctionType(
                        isFactory: false,
                        typeFormals: [],
                        namedDefaults: {},
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "",
                        normalParameterNames: [],
                        normalParameterTypes: [],
                        namedParameterTypes: {},
                        optionalParameterNames: ["resolveDuration"],
                        optionalParameterTypes: [
                          SwidType.fromSwidFunctionType(
                              swidFunctionType: SwidFunctionType(
                                  isFactory: false,
                                  typeFormals: [],
                                  namedDefaults: {},
                                  declarationModifiers:
                                      SwidDeclarationModifiers.empty(),
                                  name: "",
                                  normalParameterNames: ["millis"],
                                  namedParameterTypes: {},
                                  optionalParameterNames: [],
                                  optionalParameterTypes: [],
                                  normalParameterTypes: [
                                    SwidType.fromSwidInterface(
                                        swidInterface: SwidInterface(
                                      declarationModifiers:
                                          SwidDeclarationModifiers.empty(),
                                      typeArguments: [],
                                      name: "int",
                                      referenceDeclarationKind:
                                          SwidReferenceDeclarationKind
                                              .classElement,
                                      nullabilitySuffix:
                                          SwidNullabilitySuffix.question,
                                      originalPackagePath: "",
                                    ))
                                  ],
                                  nullabilitySuffix:
                                      SwidNullabilitySuffix.question,
                                  originalPackagePath: "",
                                  returnType: SwidType.fromSwidInterface(
                                      swidInterface: SwidInterface(
                                    declarationModifiers:
                                        SwidDeclarationModifiers.empty(),
                                    typeArguments: [],
                                    name: "Duration",
                                    referenceDeclarationKind:
                                        SwidReferenceDeclarationKind
                                            .classElement,
                                    originalPackagePath: "",
                                    nullabilitySuffix:
                                        SwidNullabilitySuffix.none,
                                  ))))
                        ],
                        originalPackagePath: "",
                        nullabilitySuffix: SwidNullabilitySuffix.question,
                        returnType: SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          typeArguments: [],
                          name: "Widget",
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          originalPackagePath: "",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                        ))))
              ],
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
        "(itemCount: int, onTap? : (resolveDuration? : (millis?: int | undefined) => Duration) => Widget) => num | undefined");
  }, tags: "swid");
}
