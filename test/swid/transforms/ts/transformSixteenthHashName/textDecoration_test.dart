import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformSixteenthHashName.dart';
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
    final ir = SwidType.fromSwidInterface(
      swidInterface: SwidInterface(
        name: "TextDecoration",
        nullabilitySuffix: SwidNullabilitySuffix.question,
        originalPackagePath: "dart:ui",
        typeArguments: [],
        referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        declarationModifiers: SwidDeclarationModifiers.empty(),
      ),
    );

    final res = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      TransformSixteenthHashName(
        swidType: ir,
      ),
    );

    expect(res, "_a643TextDecoration");
  }, tags: "swid");
}
