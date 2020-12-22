import 'package:code_builder/code_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        DartBoxObjectReference(
            objectReference: refer("vmObject"),
            type: SwidInterface(
                name: "TextStyle",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "",
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                typeArguments: [])).toDartSource(),
        """
maybeBoxObject<TextStyle>(object: vmObject, hydroState: hydroState, table: HydroTable());""");

    expect(
        DartBoxObjectReference(
            objectReference: refer("vmObject").property("headline4").expression,
            type: SwidInterface(
                name: "TextStyle",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "",
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                typeArguments: [])).toDartSource(),
        """
maybeBoxObject<TextStyle>(object: vmObject.headline4, hydroState: hydroState, table: HydroTable());""");
  }, tags: "swid");
}
