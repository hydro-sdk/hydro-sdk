import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceField.dart';
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
    final ir = SwidType.fromSwidInterface(
      swidInterface: SwidInterface(
        name: "List<int>",
        nullabilitySuffix: SwidNullabilitySuffix.question,
        originalPackagePath: "dart:core",
        typeArguments: [
          SwidTypeArgumentType(
            type: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "int",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            element: null,
          ),
        ],
        referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        declarationModifiers: SwidDeclarationModifiers.empty(),
      ),
    );

    final res = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      DartBindInstanceField(
        instanceFieldName: "customSemanticsActionIds",
        tableKey: "customSemanticsActionIds",
        instanceField: ir,
      ),
    );

    expect(res, """
table  [
\'customSemanticsActionIds\'
] = maybeBoxObject<List<int>?>(object: customSemanticsActionIds, hydroState: hydroState, table: HydroTable());""");
  }, tags: "swid");
}
