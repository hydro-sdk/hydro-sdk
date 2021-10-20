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
      name: "",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: [],
      normalParameterTypes: [],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: SwidType.fromSwidInterface(
        swidInterface: SwidInterface(
          name: "void",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
      ),
      isFactory: false,
      typeFormals: [],
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );

    expect(ir.displayName, "void Function()");
  }, tags: "swid");
}
