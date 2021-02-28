import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiWhitespaceGrammarDefinition.dart';

class SwidiGrammarDefinition extends GrammarDefinition
    with SwidiWhitespaceGrammarDefinition, SwidiLexicalTokensGrammarDefinition {
  const SwidiGrammarDefinition();

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

  Parser start() => ref(compilationUnit).end();

  Parser compilationUnit() => ref(topLevelDefinition).star();

  Parser topLevelDefinition() => ref(classDefinition);

  Parser classDefinition() =>
      ref(ABSTRACT).optional() &
      ref(CLASS) &
      ref(identifier) &
      ref(token, "{") &
      ref(functionDeclaration).star() &
      ref(token, "}");

  Parser functionDeclaration() =>
      ref(returnType) &
      ref(identifier) &
      ref(functionDeclarationParameterList) &
      ref(token, ";");

  Parser functionDeclarationParameterList() =>
      (ref(token, "(") & ref(token, ")")) |
      (ref(token, "(") &
          ref(functionDeclarationPositionalParameterListForm1) &
          ref(token, ")")) |
      (ref(token, "(") &
          ref(functionDeclarationPositionalParameterListForm2) &
          ref(token, ")")) |
      (ref(token, "(") &
          ref(functionDeclarationPositionalParameterListForm3) &
          ref(token, ")"));

  Parser functionDeclarationPositionalParameterListForm1() =>
      ref(functionDeclarationPositionalParameter) & ref(token, ",");

  Parser functionDeclarationPositionalParameterListForm2() =>
      ref(functionDeclarationPositionalParameter) &
      ref(functionDeclarationPositionalParameterTail).optional();

  Parser functionDeclarationPositionalParameterTail() => (ref(token, ",") &
      ref(functionDeclarationPositionalParameter) &
      ref(functionDeclarationPositionalParameterTail).optional());

  Parser functionDeclarationPositionalParameterListForm3() =>
      ref(functionDeclarationPositionalParameter) &
      ref(functionDeclarationPositionalParameterTail).optional() &
      ref(token, ",");

  Parser functionDeclarationPositionalParameter() => ref(simpleDeclaration);

  Parser simpleDeclaration() => (ref(type) & ref(identifier));

  Parser returnType() => ref(VOID) | ref(type);

  Parser identifier() => ref(token, ref(IDENTIFIER));

  Parser qualified() =>
      ref(identifier) & (ref(token, ".") & ref(identifier)).star();

  Parser type() => ref(qualified) & ref(typeArguments).optional();

  Parser typeArguments() => ref(token, "<") & ref(typeList) & ref(token, ">");

  Parser typeList() => ref(type) & (ref(token, ",") & ref(type)).star();

  Parser ABSTRACT() => ref(token, "abstract");

  Parser VOID() => ref(token, "void");

  Parser CLASS() => ref(token, "class");
}
