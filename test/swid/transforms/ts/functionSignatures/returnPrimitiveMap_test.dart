import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var functionType = SwidFunctionType(
      name: "foo",
      nullabilitySuffix: null,
      originalPackagePath: null,
      swidDeclarationModifiers: null,
      namedParameterTypes: null,
      namedDefaults: null,
      normalParameterNames: null,
      normalParameterTypes: null,
      optionalParameterNames: null,
      optionalParameterTypes: null,
      returnType: null,
    );

    expect(
        transformTypeDeclarationToTs(
            swidType:
                SwidType.fromSwidFunctionType(swidFunctionType: functionType)),
        "foo : () => {[index : string]: string}");
  }, tags: "swid");
}
