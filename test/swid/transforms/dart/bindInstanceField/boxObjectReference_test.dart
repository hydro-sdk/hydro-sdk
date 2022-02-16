import 'package:code_builder/code_builder.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartBoxObjectReference(
            tableExpression: null,
            boxLists: true,
            preserveListTypes: false,
            objectReference: refer("vmObject"),
            type: SwidInterface(
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
        """
_36c2.maybeBoxObject<_e3b0.TextStyle>(object: vmObject, hydroState: hydroState, table: _36c2.HydroTable());""");

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartBoxObjectReference(
            tableExpression: null,
            boxLists: true,
            preserveListTypes: false,
            objectReference: refer("vmObject").property("headline4").expression,
            type: SwidInterface(
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
        """
_36c2.maybeBoxObject<_e3b0.TextStyle>(object: vmObject.headline4, hydroState: hydroState, table: _36c2.HydroTable());""");
  }, tags: "swid");
}
