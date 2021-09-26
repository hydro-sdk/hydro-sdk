import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var fromDirection = SwidFunctionType(
      name: "fromDirection",
      typeFormals: [],
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      declarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {},
      namedDefaults: {
        "distance": SwidDefaultFormalParameter(
            defaultValueCode: "1.0",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:ui",
            value: SwidStaticConst.fromDoubleLiteral(
              swidDoubleLiteral: SwidDoubleLiteral(
                value: "1.0",
              ),
            ),
            staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
              declarationModifiers: SwidDeclarationModifiers.empty(),
              name: "double",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            )))
      },
      normalParameterNames: ["direction"],
      normalParameterTypes: [
        SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
          name: "double",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ))
      ],
      optionalParameterNames: ["distance"],
      optionalParameterTypes: [
        SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
          name: "double",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ))
      ],
      returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
              declarationModifiers: SwidDeclarationModifiers.empty(),
              name: "Offset",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:ui",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement)),
      isFactory: true,
    );
    //no configuration
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformFunctionTypeToTs(
            parentClass: null,
            swidFunctionType: fromDirection,
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
          ),
        ),
        "(direction: number, distance: number) => Offset");

    //with initializers
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformFunctionTypeToTs(
            parentClass: null,
            swidFunctionType: fromDirection,
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
            emitInitializersForOptionalPositionals: true,
          ),
        ),
        "(direction: number, distance: number = 1.0) => Offset");
  }, tags: "swid");
}
