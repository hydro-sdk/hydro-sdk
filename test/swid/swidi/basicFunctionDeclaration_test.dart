import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParser.dart';

class BasicFunctionDeclarationParser extends SwidiGrammarDefinition
    with SwidiFunctionDeclarationParser {
  const BasicFunctionDeclarationParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var input = """
  void foo();
    """;

    var res = const BasicFunctionDeclarationParser()
        .build(
            start: const BasicFunctionDeclarationParser().functionDeclaration)
        .parse(input);

    if (res.isFailure) {
      print(res.message);
    }

    expect(res.isSuccess, true);

    expect(res.value,
        const SwidiFunctionDeclaration(returnType: "void", name: "foo"));
  }, tags: "swid");
}
