import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFieldDeclaration.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var tenk = SwidStaticConstFieldDeclaration(
        name: "ten_k",
        value: SwidStaticConstFunctionInvocation(
            value: "IconData",
            normalParameters: [SwidIntegerLiteral(value: "0xe52a")],
            namedParameters: {
              "fontFamily": SwidStringLiteral(value: "MaterialIcons")
            },
            isConstructorInvocation: true));
    expect(
        transformStaticConstFieldDeclaration(staticConstFieldDeclaration: tenk),
        "public static ten_k = new IconData(0xe52a,{fontFamily:\"MaterialIcons\"});");
  });
}
