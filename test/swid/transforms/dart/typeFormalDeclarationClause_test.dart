import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/transforms/typeFormalDeclarationClause.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidTypeFormal(
      value: SwidTypeFormalValue.fromString(
        string: "T",
      ),
      swidReferenceDeclarationKind:
          SwidReferenceDeclarationKind.typeParameterType,
      swidTypeFormalBound: SwidTypeFormalBound.fromSwidInterface(
        swidInterface: SwidInterface(
          name: "InheritedWidget",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/widgets/framework.dart",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
      ),
    );

    final res = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      TypeFormalDeclarationClause(
        swidTypeFormal: ir,
      ),
    );

    expect(res, "T extends InheritedWidget");
  }, tags: "swid");
}
