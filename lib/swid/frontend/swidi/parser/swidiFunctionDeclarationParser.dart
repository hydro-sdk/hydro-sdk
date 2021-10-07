import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/constantPrimitives.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationPositionalOrOptionalOrNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationPositionalParameter.dart';
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
        IFunctionDeclarationNamedParameterParser<
            Parser<SwidiFunctionDeclarationNamedParameter?>>,
        IFunctionDeclarationOptionalParameterParser<
            Parser<SwidiFunctionDeclarationOptionalParameter?>>,
        IFunctionDeclarationParameterListParser<
            Parser<
                List<
                    SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter>>>,
        IFunctionDeclarationPositionalParameterParser<
            Parser<SwidiFunctionDeclarationPositionalParameter?>>,
        IConstParser<Parser<SwidiConst>> {
  @override
  Parser<SwidiFunctionDeclaration> functionDeclaration() => super
      .functionDeclaration()
      .map(
        (x) => SwidiFunctionDeclaration(
          name: x[1].input,
          returnType: collectTokens<SwidiType>(x).first,
          optionalParameters: [
            ...collectTokens<SwidiFunctionDeclarationOptionalParameter>(x),
            ...collectTokens<
                    SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter>(x)
                .map((e) => e.maybeWhen(
                      fromSwidiFunctionDeclarationOptionalParameter: (val) =>
                          val,
                      orElse: () => swidiUnknownOptionalParameter,
                    ))
                .where((e) => e != swidiUnknownOptionalParameter)
                .toList()
          ],
          positionalParameters: [
            ...collectTokens<SwidiFunctionDeclarationPositionalParameter>(x),
            ...collectTokens<
                    SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter>(x)
                .map((e) => e.maybeWhen(
                      fromSwidiFunctionDeclarationPositionalParameter: (val) =>
                          val,
                      orElse: () => swidiUnknownPositionalParameter,
                    ))
                .where((e) => e != swidiUnknownPositionalParameter)
                .toList()
          ],
          namedParameters: [
            ...collectTokens<SwidiFunctionDeclarationNamedParameter>(x),
            ...collectTokens<
                    SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter>(x)
                .map((e) => e.maybeWhen(
                      fromSwidiFunctionDeclarationNamedParameter: (val) => val,
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
