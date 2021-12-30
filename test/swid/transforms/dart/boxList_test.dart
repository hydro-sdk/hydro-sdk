import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxList.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    SwidInterface field = SwidInterface(
      declarationModifiers: SwidDeclarationModifiers.empty(),
      name: "List<DiagnosticNode>",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      typeArguments: [
        SwidTypeArgumentType(
          type: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              declarationModifiers: SwidDeclarationModifiers.empty(),
              name: "DiagnosticsNode",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
          element: null,
        ),
      ],
      referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
    );

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartBoxList(type: field, referenceName: "properties"),
        ),
        "properties.map((x) => maybeBoxObject<DiagnosticsNode>(object: x, hydroState: hydroState, table: HydroTable())).toList();");
  }, tags: "swid");
}
