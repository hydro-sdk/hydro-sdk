import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidFunctionType(
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
                declarationModifiers: SwidDeclarationModifiers.empty(),
                typeArguments: [],
                name: "Widget",
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                originalPackagePath: "",
                nullabilitySuffix: SwidNullabilitySuffix.star,
              ),
            ),
          ),
        )
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
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          originalPackagePath: "dart:core",
          nullabilitySuffix: SwidNullabilitySuffix.question,
        ),
      ),
    );

    expect(ir.displayName, "num? Function(Widget Function() foo)");
  }, tags: "swid");
}
