import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/frontend/dart/dartPrimitives.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiContentToSwidIr.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var res = swidiContentToSwidIr(content: """
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
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "foo",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {
            "baz": SwidType.fromSwidInterface(
              swidInterface: DartPrimitives.dartInt,
            ),
            "qux": SwidType.fromSwidInterface(
              swidInterface: DartPrimitives.dartNullableInt,
            )
          },
          namedDefaults: {},
          normalParameterNames: ["bar"],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: DartPrimitives.dartInt,
            )
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: DartPrimitives.dartVoid,
          ),
          isFactory: false,
          typeFormals: [],
        )
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(res, [SwidIr.fromSwidClass(swidClass: iconData)]);
  }, tags: "swid");
}
