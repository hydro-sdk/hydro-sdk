import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/swidiGrammar.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/swidiGrammarDefinition.dart';
import 'package:petitparser/petitparser.dart';

class SwidiParser extends SwidiGrammarDefinition {
  Parser<String> classDefinition() => super.classDefinition().map((x) {
        print(x);

        return List.from(x)
            .where((x) => x != null)
            .toList()[1]
            .toString()
            .trim();
      });
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var input = """
class IconData {

void foo(){}
}
    """;
    var res = SwidiParser().build().parse(input);

    print(res);
  }, tags: "swid");
}
