import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiClassParser.dart';

class BasicClassParser extends SwidiGrammarDefinition with SwidiClassParser {
  const BasicClassParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var input = """
class IconData {
}
    """;

    var res = const BasicClassParser()
        .build(start: const BasicClassParser().classDefinition)
        .parse(input);

    if (res.isFailure) {
      print(res.message);
    }

    expect(res.isSuccess, true);

    expect(res.value, const SwidiClass(name: "IconData"));
  }, tags: "swid");
}
