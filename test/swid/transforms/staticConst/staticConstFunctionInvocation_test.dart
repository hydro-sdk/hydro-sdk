import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFunctionInvocation.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var normal = SwidStaticConstFunctionInvocation(
        value: "IconData",
        normalParameters: [
          SwidLiteral.fromSwidIntegerLiteral(
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
        normalParameters: [
          SwidLiteral.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a")),
          SwidLiteral.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "foo")),
          SwidLiteral.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "bar")),
          SwidLiteral.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(value: "123")),
        ],
        namedParameters: {},
        isConstructorInvocation: false);
    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: manyNormal,
            scopeResolver: (_) => null),
        "IconData(0xe52a,\"foo\",\"bar\",123)");

    var manyNamed = SwidStaticConstFunctionInvocation(
        value: "IconData",
        normalParameters: [],
        namedParameters: {
          "foo": SwidLiteral.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "foo")),
          "bar": SwidLiteral.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "bar")),
          "offset": SwidLiteral.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(value: "123")),
        },
        isConstructorInvocation: false);
    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: manyNamed,
            scopeResolver: (_) => null),
        "IconData({foo:\"foo\",bar:\"bar\",offset:123})");

    var normalAndNamedCtor = SwidStaticConstFunctionInvocation(
        value: "IconData",
        normalParameters: [
          SwidLiteral.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a"))
        ],
        namedParameters: {
          "fontFamily": SwidLiteral.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(value: "MaterialIcons"))
        },
        isConstructorInvocation: true);

    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: normalAndNamedCtor,
            scopeResolver: (_) => null),
        "new IconData(0xe52a,{fontFamily:\"MaterialIcons\"})");
  });
}
