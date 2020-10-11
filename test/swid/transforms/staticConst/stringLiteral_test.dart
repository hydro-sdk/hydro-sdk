import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStringLiteralToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        transformStringLiteralToTs(
            swidStringLiteral: SwidStringLiteral(value: "0xe52a")),
        "\"0xe52a\"");
    expect(
        transformStringLiteralToTs(
            swidStringLiteral: SwidStringLiteral(value: "0")),
        "\"0\"");
  });
}
