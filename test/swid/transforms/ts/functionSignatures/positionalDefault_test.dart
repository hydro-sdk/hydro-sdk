import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var fromDirection = SwidFunctionType(
      name: "fromDirection",
      typeFormals: [],
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {},
      namedDefaults: {
        "distance": SwidDefaultFormalParameter(
            name: "1.0",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:ui",
            value: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
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
          name: "double",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ))
      ],
      returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
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
        transformFunctionTypeToTs(
          swidFunctionType: fromDirection,
          trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
        ),
        "(direction: double, distance: double) => Offset");

    //with initializers
    expect(
        transformFunctionTypeToTs(
          swidFunctionType: fromDirection,
          trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
          emitInitializersForOptionalPositionals: true,
        ),
        "(direction: double, distance: double = 1.0) => Offset");
  }, tags: "swid");
}
