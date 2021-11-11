import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/swidiSourceToSwidIr.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var res = swidiSourceToSwidIr(
        pipeline: CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ),
        content: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux,
    });
  }
""");

    expect(res, isNotNull);

    var iconData = SwidClass(
      name: "IconData",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/icon_data.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "foo",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          declarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {
            "baz": SwidType.fromSwidInterface(
              swidInterface: dartInt,
            ),
            "qux": SwidType.fromSwidInterface(
              swidInterface: dartNullableInt,
            )
          },
          namedDefaults: {},
          normalParameterNames: ["bar"],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: dartInt,
            )
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: dartVoid,
          ),
          isFactory: false,
          typeFormals: [],
        )
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(res, [SwidIr.fromSwidClass(swidClass: iconData)]);
  }, tags: "swid");
}
