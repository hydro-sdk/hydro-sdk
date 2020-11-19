import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceFieldDirect.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(DartBindInstanceFieldDirect(instanceFieldName: "foo").toDartSource(),
        "table['foo'] = foo;");
  }, tags: "swid");
}
