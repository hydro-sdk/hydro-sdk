import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAnnotationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAnnotationListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDeclarationWithDefaultConstValueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLibraryScopePrefixLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iQualifiedLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iReferenceDeclarationPrefixLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iReturnTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeArgumentsLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeListLexer.dart';
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
        SwidiConstGrammarDefinition
    implements
        ILibraryScopePrefixLexer,
        IReferenceDeclarationPrefixLexer,
        IQualifiedLexer,
        ITypeLexer,
        ITypeListLexer,
        ITypeArgumentsLexer,
        ITypeFormalLexer,
        ITypeFormalListLexer,
        ITypeFormalListDeclarationLexer,
        ISimpleDeclarationLexer,
        IReturnTypeLexer,
        IDeclarationWithDefaultConstValueLexer,
        IAnnotationLexer,
        IAnnotationListLexer,
        IFunctionTypeLexer {
  @override
  Parser returnType() => ref0(type);

  @override
  Parser simpleDeclaration() => (ref0(type) & ref0(identifier));

  @override
  Parser declarationWithDefaultConstValue() =>
      ref0(simpleDeclaration) & ref1(token, "=") & ref0(lexicalConst);

  @override
  Parser qualified() =>
      ref0(identifier) & (ref1(token, ".") & ref0(identifier)).star();

  @override
  Parser annotation() =>
      ref1(token, "[[") & ref0(lexicalConst) & ref1(token, "]]");

  @override
  Parser annotationList() => (ref0(annotation)).star();

  @override
  Parser type() => ref0(functionType) | ref0(interfaceType);

  @override
  Parser interfaceType() =>
      ref0(annotationList).optional() &
      ref0(libraryScopePrefix).optional() &
      ref0(referenceDeclarationPrefix).optional() &
      ref0(qualified) &
      ref0(typeArguments).optional() &
      ref1(token, "?").optional();

  @override
  Parser referenceDeclarationPrefix() =>
      (ref1(token, "class") |
          ref1(token, "enum") |
          ref1(token, "void") |
          ref1(token, "type") |
          ref1(token, "dynamic")) &
      ref1(token, ":") &
      ref1(token, ":");

  @override
  Parser libraryScopePrefix() =>
      char('"') &
      ref0(stringContentDq).star() &
      char('"') &
      ref1(token, ":") &
      ref1(token, ":");

  @override
  Parser typeArguments() =>
      ref1(token, "<") & ref0(typeList) & ref1(token, ">");

  @override
  Parser typeList() => ref0(type) & (ref1(token, ",") & ref0(type)).star();

  @override
  Parser typeFormal() =>
      ref0(identifier) & (ref1(token, "extends") & ref0(type)).optional();

  @override
  Parser typeFormalList() =>
      ref0(typeFormal) & (ref1(token, ",") & ref0(typeFormal)).star();

  @override
  Parser typeFormalListDeclaration() =>
      ref1(token, "<") & ref0(typeFormalList) & ref1(token, ">");
}
