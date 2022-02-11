import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassPreamble.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "DiagnosticsDebugCreator",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/rendering/object.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
      extendedClass: SwidClass(
        name: "DiagnosticsProperty<Object>",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "package:flutter/src/foundation/diagnostics.dart",
        constructorType: null,
        generativeConstructors: [],
        factoryConstructors: [],
        staticMethods: [],
        methods: [],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        declarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        implementedClasses: [],
        isMixin: false,
        typeFormals: [
          SwidTypeFormal(
            value: SwidTypeFormalValue.fromSwidClass(
              swidClass: SwidClass(
                name: "Object",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                constructorType: null,
                generativeConstructors: [],
                factoryConstructors: [],
                staticMethods: [],
                methods: [],
                staticConstFieldDeclarations: [],
                instanceFieldDeclarations: {},
                declarationModifiers: SwidDeclarationModifiers.empty(),
                mixedInClasses: [],
                implementedClasses: [],
                isMixin: false,
                typeFormals: [],
              ),
            ),
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.classElement,
            swidTypeFormalBound: null,
          )
        ],
      ),
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      TsClassPreamble(
        swidClass: ir,
      ),
    );

    expect(
      res,
      """
export class DiagnosticsDebugCreator

 implements IDiagnosticsProperty<Object>
{""",
    );
  }, tags: "swid");
}
