import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiDeclarationGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiLexicalTokensGrammarDefinition {
  Parser returnType() => ref(VOID) | ref(type);

  Parser identifier() => ref(token, ref(IDENTIFIER));

  Parser simpleDeclaration() => (ref(type) & ref(identifier));

  Parser qualified() =>
      ref(identifier) & (ref(token, ".") & ref(identifier)).star();

  Parser type() => ref(qualified) & ref(typeArguments).optional();

  Parser typeArguments() => ref(token, "<") & ref(typeList) & ref(token, ">");

  Parser typeList() => ref(type) & (ref(token, ",") & ref(type)).star();
}
