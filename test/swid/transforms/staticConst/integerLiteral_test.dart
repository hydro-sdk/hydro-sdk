import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformIntegerLiteralToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        transformIntegerLiteralToTs(
            swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a")),
        "0xe52a");
    expect(
        transformIntegerLiteralToTs(
            swidIntegerLiteral: SwidIntegerLiteral(value: "0")),
        "0");
  });
}
