import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformBooleanLiteralToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        transformBooleanLiteralToTs(
            swidBooleanLiteral: SwidBooleanLiteral(value: "true")),
        "true");
    expect(
        transformBooleanLiteralToTs(
            swidBooleanLiteral: SwidBooleanLiteral(value: "false")),
        "false");
}, tags: "swid");
}
