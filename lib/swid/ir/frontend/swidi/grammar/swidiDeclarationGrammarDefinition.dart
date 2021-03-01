import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';

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

  Parser type() =>
      ref(libraryScopePrefix).optional() &
      ref(referenceDeclarationPrefix).optional() &
      ref(qualified) &
      ref(typeArguments).optional() &
      ref(token, "?").optional();

  Parser referenceDeclarationPrefix() =>
      (ref(token, "class") |
          ref(token, "enum") |
          ref(token, "void") |
          ref(token, "type") |
          ref(token, "dynamic")) &
      ref(token, ":") &
      ref(token, ":");

  Parser libraryScopePrefix() =>
      char('"') &
      ref(STRING_CONTENT_DQ).star() &
      char('"') &
      ref(token, ":") &
      ref(token, ":");

  Parser typeArguments() => ref(token, "<") & ref(typeList) & ref(token, ">");

  Parser typeList() => ref(type) & (ref(token, ",") & ref(type)).star();
}
