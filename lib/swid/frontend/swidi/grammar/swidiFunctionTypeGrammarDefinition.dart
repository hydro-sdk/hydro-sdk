import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiFunctionTypeGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition
    implements IFunctionTypeLexer, IFunctionTypeParameterListLexer {
  @override
  Parser functionType() =>
      ref0(returnType) &
      ref1(token, "Function") &
      ref0(typeFormalListDeclaration).optional() &
      ref0(functionTypeParameterList);

  @override
  Parser functionTypeParameterList() =>
      (ref1(token, "(") & ref1(token, ")")) |
      //Positional only
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm1) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm3) &
          ref1(token, ")")) |
      //Optional only
      (ref1(token, "(") &
          ref0(functionTypeOptionalParameterListForm1) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypeOptionalParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypeOptionalParameterListForm3) &
          ref1(token, ")")) |
      //Named only
      (ref1(token, "(") &
          ref0(functionTypeNamedParameterListForm1) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypeNamedParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypeNamedParameterListForm3) &
          ref1(token, ")")) |
      //Positional and named
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm1) &
          ref0(functionTypeNamedParameterListForm3) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm1) &
          ref0(functionTypeNamedParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm3) &
          ref0(functionTypeNamedParameterListForm3) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm3) &
          ref0(functionTypeNamedParameterListForm2) &
          ref1(token, ")")) |
      //Positional and  optional
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm1) &
          ref0(functionTypeOptionalParameterListForm3) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm1) &
          ref0(functionTypeOptionalParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm3) &
          ref0(functionTypeOptionalParameterListForm3) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionTypePositionalParameterListForm3) &
          ref0(functionTypeOptionalParameterListForm2) &
          ref1(token, ")"));
}
