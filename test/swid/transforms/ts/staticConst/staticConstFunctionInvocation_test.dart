import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFunctionInvocation.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var normal = SwidStaticConstFunctionInvocation(
        value: "IconData",
        staticType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          name: "IconData",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/widgets.dart",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        )),
        normalParameters: [
          SwidStaticConst.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a"))
        ],
        namedParameters: {},
        isConstructorInvocation: false);
    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: normal,
            scopeResolver: (_) => null),
        "IconData(0xe52a)");

    var manyNormal = SwidStaticConstFunctionInvocation(
        value: "IconData",
        staticType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          name: "IconData",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/widgets.dart",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        )),
        normalParameters: [
          SwidStaticConst.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a")),
          SwidStaticConst.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "foo")),
          SwidStaticConst.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "bar")),
          SwidStaticConst.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(value: "123")),
        ],
        namedParameters: {},
        isConstructorInvocation: false);
    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: manyNormal,
            scopeResolver: (_) => null),
        "IconData(0xe52a, \"foo\", \"bar\", 123)");

    var manyNamed = SwidStaticConstFunctionInvocation(
        value: "IconData",
        staticType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          name: "IconData",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/widgets.dart",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        )),
        normalParameters: [],
        namedParameters: {
          "foo": SwidStaticConst.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "foo")),
          "bar": SwidStaticConst.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "bar")),
          "offset": SwidStaticConst.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(value: "123")),
        },
        isConstructorInvocation: false);
    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: manyNamed,
            scopeResolver: (_) => null),
        "IconData({ foo: \"foo\", bar: \"bar\", offset: 123 })");

    var normalAndNamedCtor = SwidStaticConstFunctionInvocation(
        value: "IconData",
        staticType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          name: "IconData",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/widgets.dart",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        )),
        normalParameters: [
          SwidStaticConst.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a"))
        ],
        namedParameters: {
          "fontFamily": SwidStaticConst.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "MaterialIcons"))
        },
        isConstructorInvocation: true);

    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: normalAndNamedCtor,
            scopeResolver: (_) => null),
        "new IconData(0xe52a,{ fontFamily: \"MaterialIcons\" })");
  }, tags: "swid");
}
