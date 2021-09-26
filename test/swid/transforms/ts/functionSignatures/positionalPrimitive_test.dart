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
        //num (int? foo,String bar)
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformFunctionTypeToTs(
            parentClass: null,
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
            swidFunctionType: SwidFunctionType(
              isFactory: false,
              typeFormals: [],
              namedDefaults: {},
              declarationModifiers: SwidDeclarationModifiers.empty(),
              name: "",
              originalPackagePath: "",
              normalParameterNames: ["foo", "bar"],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                  typeArguments: [],
                  name: "int",
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                  originalPackagePath: "dart:core",
                )),
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                        typeArguments: [],
                        name: "String",
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        nullabilitySuffix: SwidNullabilitySuffix.star,
                        originalPackagePath: "dart:core")),
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
                  nullabilitySuffix: SwidNullabilitySuffix.star,
                ),
              ),
            ),
          ),
        ),
        "(foo: number | undefined, bar: string) => num");
  }, tags: "swid");
}
