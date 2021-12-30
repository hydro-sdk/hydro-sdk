import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/resolveTsImportPaths.dart';
import 'package:hydro_sdk/swid/ir/analyses/collectAllReferences.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    var getProperties = SwidFunctionType(
      name: "getProperties",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/foundation/diagnostics.dart",
      declarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: [],
      normalParameterTypes: [],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: SwidType.fromSwidInterface(
        swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
          name: "List<DiagnosticsNode>",
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
        ),
      ),
      isFactory: false,
      typeFormals: [],
    );

    expect(
      CachingPipeline(
        cacheMgr: const PipelineNoopCacheMgr(),
      )
          .reduceFromTerm(
            CollectAllReferences(
              swidType: SwidType.fromSwidFunctionType(
                swidFunctionType: getProperties,
              ),
            ),
          )
          .map(
            (x) => CachingPipeline(
              cacheMgr: const PipelineNoopCacheMgr(),
            ).reduceFromTerm(
              ResolveTsImportPaths(
                importee: SwidType.fromSwidInterface(
                  swidInterface: x,
                ),
                importer: SwidType.fromSwidFunctionType(
                  swidFunctionType: getProperties,
                ),
                prefixPaths: [
                  "runtime",
                ],
              ),
            ),
          )
          .join("\n"),
      [
        "../../dart/core",
        ".",
      ].join("\n"),
    );
  }, tags: "swid");
}
