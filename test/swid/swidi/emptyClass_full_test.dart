import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiParser.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var input = """
class IconData {
}
    """;

    var res = const SwidiParser().build().parse(input);

    if (res.isFailure) {
      print(res.message);
    }

    expect(res.isSuccess, true);

    expect(res.value.first, SwidiClass(name: "IconData"));
  }, tags: "swid");
}
