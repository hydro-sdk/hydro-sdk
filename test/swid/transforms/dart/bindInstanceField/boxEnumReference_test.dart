import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxEnumReference.dart';
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
          DartBoxEnumReference(
            referenceName: "style",
            type: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                declarationModifiers: SwidDeclarationModifiers.empty(),
                name: "TextStyle",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "",
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                typeArguments: [],
              ),
            ),
          ),
        ),
        "TextStyle.values.indexWhere((x) { return x == style; } );");
  }, tags: "swid");
}
