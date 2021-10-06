import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/constantPrimitives.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalOrOptionalOrNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormalList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeFormalListDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeFormalListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiFunctionDeclarationParser
    on
        SwidiGrammarDefinition,
        SwidiTypeFormalListParser,
        SwidiTypeFormalListDeclarationParser,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationParameterListParser
    implements
        IFunctionDeclarationLexer,
        IFunctionDeclarationNamedParameterLexer,
        IFunctionDeclarationOptionalParameterLexer,
        IFunctionDeclarationParameterListLexer,
        IFunctionDeclarationPositionalParameterLexer,
        ITypeFormalListLexer,
        IConstLexer,
        IFunctionDeclarationParser<Parser<SwidiFunctionDeclaration>>,
        IFunctionDeclarationNamedParameterParser<Parser<SwidiNamedParameter?>>,
        IFunctionDeclarationOptionalParameterParser<
            Parser<SwidiOptionalParameter?>>,
        IFunctionDeclarationParameterListParser<
            Parser<List<SwidiPositionalOrOptionalOrNamedParameter>>>,
        IFunctionDeclarationPositionalParameterParser<
            Parser<SwidiPositionalParameter?>>,
        IConstParser<Parser<SwidiConst>> {
  @override
  Parser<SwidiFunctionDeclaration> functionDeclaration() => super
      .functionDeclaration()
      .map(
        (x) => SwidiFunctionDeclaration(
          name: x[1].input,
          returnType: collectTokens<SwidiType>(x).first,
          optionalParameters: [
            ...collectTokens<SwidiOptionalParameter>(x),
            ...collectTokens<SwidiPositionalOrOptionalOrNamedParameter>(x)
                .map((e) => e.maybeWhen(
                      fromSwidiOptionalParameter: (val) => val,
                      orElse: () => swidiUnknownOptionalParameter,
                    ))
                .where((e) => e != swidiUnknownOptionalParameter)
                .toList()
          ],
          positionalParameters: [
            ...collectTokens<SwidiPositionalParameter>(x),
            ...collectTokens<SwidiPositionalOrOptionalOrNamedParameter>(x)
                .map((e) => e.maybeWhen(
                      fromSwidiPositionalParameter: (val) => val,
                      orElse: () => swidiUnknownPositionalParameter,
                    ))
                .where((e) => e != swidiUnknownPositionalParameter)
                .toList()
          ],
          namedParameters: [
            ...collectTokens<SwidiNamedParameter>(x),
            ...collectTokens<SwidiPositionalOrOptionalOrNamedParameter>(x)
                .map((e) => e.maybeWhen(
                      fromSwidiNamedParameter: (val) => val,
                      orElse: () => swidiUnknownNamedParameter,
                    ))
                .where((e) => e != swidiUnknownNamedParameter)
                .toList()
          ],
          typeFormals: [
            ...((({
              required final List<SwidiTypeFormalList> typeFormals,
            }) =>
                typeFormals.isNotEmpty ? typeFormals.first.typeFormalList : [])(
              typeFormals: collectTokens<SwidiTypeFormalList>(x),
            )),
          ],
          shortHandOverride: (({
            required final List<SwidiConst> consts,
          }) =>
              consts.isNotEmpty
                  ? consts.first
                  : SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ))(
            consts: collectTokens<SwidiConst>(x),
          ),
        ),
      );
}
