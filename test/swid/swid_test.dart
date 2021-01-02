import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/swid.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    await swid(["/Users/chgibb/Downloads/sky_engine"]);
  });
}
