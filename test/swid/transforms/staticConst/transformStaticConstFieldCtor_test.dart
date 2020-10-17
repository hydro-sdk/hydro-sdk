import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFieldDeclaration.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var tenk = SwidStaticConstFieldDeclaration(
        name: "ten_k",
        value: SwidLiteral.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
                value: "IconData",
                normalParameters: [
                  SwidLiteral.fromSwidIntegerLiteral(
                      swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a"))
                ],
                namedParameters: {
                  "fontFamily": SwidLiteral.fromSwidStringLiteral(
                      swidStringLiteral:
                          SwidStringLiteral(value: "MaterialIcons"))
                },
                isConstructorInvocation: true)));
    expect(
        transformStaticConstFieldDeclaration(staticConstFieldDeclaration: tenk),
        "public static ten_k = new IconData(0xe52a,{fontFamily:\"MaterialIcons\"});");
  });
}
