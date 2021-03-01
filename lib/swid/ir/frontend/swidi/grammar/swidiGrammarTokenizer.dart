import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiWhitespaceGrammarDefinition.dart';

mixin SwidiGrammarTokenizer
    on GrammarDefinition, SwidiWhitespaceGrammarDefinition {
  Parser token(Object input) {
    if (input is Parser) {
      return input.token().trim(ref(HIDDEN_STUFF));
    } else if (input is String) {
      return token(input.toParser());
    } else if (input is Function) {
      return token(ref(input));
    }
    throw ArgumentError.value(input, "invalid token parser");
  }
}
