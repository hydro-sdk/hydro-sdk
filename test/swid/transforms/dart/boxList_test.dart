import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxList.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    SwidInterface field = SwidInterface(
      name: "List<DiagnosticNode>",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      typeArguments: [
        SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          name: "DiagnosticsNode",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ))
      ],
      referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
    );

    expect(DartBoxList(type: field, referenceName: "properties").toDartSource(),
        "properties.map((x) => maybeBoxObject<DiagnosticsNode>(object: x, hydroState: hydroState, table: HydroTable())).toList();");
  }, tags: "swid");
}
