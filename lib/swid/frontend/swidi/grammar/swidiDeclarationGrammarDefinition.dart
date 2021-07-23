import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiIdentifierGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';

mixin SwidiDeclarationGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiLexicalTokensGrammarDefinition,
        SwidiIdentifierGrammarDefinition,
        SwidiConstGrammarDefinition {
  Parser returnType() => ref0(type);

  Parser simpleDeclaration() => (ref0(type) & ref0(lexIdentifier));

  Parser declarationWithDefaultConstValue() =>
      ref0(simpleDeclaration) & ref1(token, "=") & ref0(CONST);

  Parser qualified() =>
      ref0(lexIdentifier) & (ref1(token, ".") & ref0(lexIdentifier)).star();

  Parser type() =>
      ref0(libraryScopePrefix).optional() &
      ref0(referenceDeclarationPrefix).optional() &
      ref0(qualified) &
      ref0(typeArguments).optional() &
      ref1(token, "?").optional();

  Parser referenceDeclarationPrefix() =>
      (ref1(token, "class") |
          ref1(token, "enum") |
          ref1(token, "void") |
          ref1(token, "type") |
          ref1(token, "dynamic")) &
      ref1(token, ":") &
      ref1(token, ":");

  Parser libraryScopePrefix() =>
      char('"') &
      ref0(lexStringContentDq).star() &
      char('"') &
      ref1(token, ":") &
      ref1(token, ":");

  Parser typeArguments() =>
      ref1(token, "<") & ref0(typeList) & ref1(token, ">");

  Parser typeList() => ref0(type) & (ref1(token, ",") & ref0(type)).star();

  Parser typeFormal() =>
      ref0(lexIdentifier) & (ref1(token, "extends") & ref0(type)).optional();

  Parser typeFormalList() =>
      ref0(typeFormal) & (ref1(token, ",") & ref0(typeFormal)).star();

  Parser typeFormalListDeclaration() =>
      ref1(token, "<") & ref0(typeFormalList) & ref1(token, ">");
}
