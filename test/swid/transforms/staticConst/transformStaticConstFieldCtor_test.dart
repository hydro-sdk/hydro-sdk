import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFieldDeclaration.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var tenk = SwidStaticConstFieldDeclaration(
        name: "ten_k",
        value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
                value: "IconData",
                normalParameters: [
                  SwidStaticConst.fromSwidIntegerLiteral(
                      swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a"))
                ],
                namedParameters: {
                  "fontFamily": SwidStaticConst.fromSwidStringLiteral(
                      swidStringLiteral:
                          SwidStringLiteral(value: "MaterialIcons"))
                },
                isConstructorInvocation: true)));
    expect(
        transformStaticConstFieldDeclaration(
            staticConstFieldDeclaration: tenk, scopeResolver: (_) => null),
        "public static ten_k = new IconData(0xe52a,{fontFamily:\"MaterialIcons\"});");
  });
}
