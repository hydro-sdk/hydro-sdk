import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarLexicalTokens.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarWhitespace.dart';

class SwidiGrammarDefinition extends GrammarDefinition
    with SwidiGrammarWhitespace, SwidiGrammarLexicalTokens {
  const SwidiGrammarDefinition();

  //Adapted from https://github.com/petitparser/dart-petitparser/blob/main/petitparser_examples/lib/src/dart/grammar.dart
  Parser token(Object input) {
    if (input is Parser) {
      return input.token().trim(ref(HIDDEN_STUFF));
    } else if (input is String) {
      return token(input.toParser());
    } else if (input is Function) {
      return token(ref(input));
    }
    throw ArgumentError.value(input, 'invalid token parser');
  }

  Parser start() => ref(compilationUnit).end();

  Parser compilationUnit() => ref(topLevelDefinition).star();

  Parser topLevelDefinition() => ref(classDefinition);

  Parser classDefinition() =>
      ref(ABSTRACT).optional() &
      ref(CLASS) &
      ref(identifier) &
      ref(token, '{') &
      ref(token, '}');

  Parser identifier() => ref(token, ref(IDENTIFIER));

  Parser ABSTRACT() => ref(token, 'abstract');
  Parser CLASS() => ref(token, 'class');
}
