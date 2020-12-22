import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        transformPackageUri(
            packageUri:
                "package:flutter${path.separator}src${path.separator}animation${path.separator}animation_controller.dart"),
        "flutter${path.separator}animation");
    expect(
        transformPackageUri(
            packageUri:
                "package:flutter${path.separator}animation${path.separator}other_path${path.separator}animation_controller.dart"),
        "flutter${path.separator}animation${path.separator}other_path");
  }, tags: "swid");
}
