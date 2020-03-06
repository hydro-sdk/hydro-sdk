import 'package:flutter_test/flutter_test.dart';
import 'package:flua/integrationTestHarness.dart' as harness;

void main() {
  testWidgets('animated_list sample app smoke test',
      (WidgetTester tester) async {
    harness.main("assets/test/widget/center-1.ts.lc");
    await tester.pump();
  });
}
