import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        CachingPipeline().reduceFromTerm(
          DartBindInstanceFieldDirect(
            tableKey: "foo",
            instanceFieldName: "foo",
          ),
        ),
        "table['foo'] = foo;");
  }, tags: "swid");
}
