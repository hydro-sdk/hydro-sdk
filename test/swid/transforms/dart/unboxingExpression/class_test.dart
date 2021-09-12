import 'package:code_builder/code_builder.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartUnboxingExpression.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartUnboxingExpression(
            swidType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                declarationModifiers: SwidDeclarationModifiers.empty(),
                name: "Offset",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:ui",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
              ),
            ),
            expression: refer("foo").call([]),
          ),
        ),
        "maybeUnBoxAndBuildArgument<Offset, dynamic>(foo(), parentState: hydroState)");
  }, tags: "swid");
}
