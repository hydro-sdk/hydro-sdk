import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFunctionInvocation.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var normal = SwidStaticConstFunctionInvocation(
        value: "IconData",
        normalParameters: [SwidIntegerLiteral(value: "0xe52a")],
        namedParameters: {},
        isConstructorInvocation: false);
    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: normal),
        "IconData(0xe52a)");

    var manyNormal = SwidStaticConstFunctionInvocation(
        value: "IconData",
        normalParameters: [
          SwidIntegerLiteral(value: "0xe52a"),
          SwidStringLiteral(value: "foo"),
          SwidStringLiteral(value: "bar"),
          SwidIntegerLiteral(value: "123"),
        ],
        namedParameters: {},
        isConstructorInvocation: false);
    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: manyNormal),
        "IconData(0xe52a,\"foo\",\"bar\",123)");

    var manyNamed = SwidStaticConstFunctionInvocation(
        value: "IconData",
        normalParameters: [],
        namedParameters: {
          "foo": SwidStringLiteral(value: "foo"),
          "bar": SwidStringLiteral(value: "bar"),
          "offset": SwidIntegerLiteral(value: "123"),
        },
        isConstructorInvocation: false);
    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: manyNamed),
        "IconData({foo:\"foo\",bar:\"bar\",offset:123})");

    var normalAndNamedCtor = SwidStaticConstFunctionInvocation(
        value: "IconData",
        normalParameters: [SwidIntegerLiteral(value: "0xe52a")],
        namedParameters: {
          "fontFamily": SwidStringLiteral(value: "MaterialIcons")
        },
        isConstructorInvocation: true);

    expect(
        transformStaticConstFunctionInvocation(
            swidStaticConstFunctionInvocation: normalAndNamedCtor),
        "new IconData(0xe52a,{fontFamily:\"MaterialIcons\"})");
  });
}
