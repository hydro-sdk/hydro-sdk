import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var normal = SwidStaticConstFunctionInvocation(
        value: "IconData",
        staticType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
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
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformStaticConstFunctionInvocation(
            parentClass: SwidClass.empty(),
            inexpressibleFunctionInvocationFallback: "",
            swidStaticConstFunctionInvocation: normal,
            scopeResolver: (_) => null,
          ),
        ),
        "IconData(0xe52a)");

    var manyNormal = SwidStaticConstFunctionInvocation(
        value: "IconData",
        staticType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
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
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformStaticConstFunctionInvocation(
            parentClass: SwidClass.empty(),
            inexpressibleFunctionInvocationFallback: "",
            swidStaticConstFunctionInvocation: manyNormal,
            scopeResolver: (_) => null,
          ),
        ),
        "IconData(0xe52a, \"foo\", \"bar\", 123)");

    var manyNamed = SwidStaticConstFunctionInvocation(
        value: "IconData",
        staticType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
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
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformStaticConstFunctionInvocation(
            parentClass: SwidClass.empty(),
            inexpressibleFunctionInvocationFallback: "",
            swidStaticConstFunctionInvocation: manyNamed,
            scopeResolver: (_) => null,
          ),
        ),
        "IconData({ foo: \"foo\", bar: \"bar\", offset: 123 })");

    var normalAndNamedCtor = SwidStaticConstFunctionInvocation(
        value: "IconData",
        staticType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
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
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformStaticConstFunctionInvocation(
            parentClass: SwidClass.empty(),
            inexpressibleFunctionInvocationFallback: "",
            swidStaticConstFunctionInvocation: normalAndNamedCtor,
            scopeResolver: (_) => null,
          ),
        ),
        "new IconData(0xe52a,{ fontFamily: \"MaterialIcons\" })");
  }, tags: "swid");
}
