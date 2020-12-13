import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        DartBoxEnumReference(
            referenceName: "style",
            type: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                    name: "TextStyle",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "",
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    typeArguments: []))).toDartSource(),
        """
TextStyle.values.indexWhere((x) {
  return x == style;
});""");
  }, tags: "swid");
}
