import 'package:code_builder/code_builder.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        DartBoxObjectReference(
            boxLists: true,
            objectReference: refer("vmObject"),
            type: SwidInterface(
                declarationModifiers: SwidDeclarationModifiers.empty(),
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
            boxLists: true,
            objectReference: refer("vmObject").property("headline4").expression,
            type: SwidInterface(
                declarationModifiers: SwidDeclarationModifiers.empty(),
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
