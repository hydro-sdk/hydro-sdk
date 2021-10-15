import 'package:collection/collection.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotationList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypePositionalOrOptionalOrNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypePositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormalList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAnnotationListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionTypeGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiIdentifierGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iAnnotationListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypeNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypeOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypeParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionTypePositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiFunctionTypeParser
    on
        SwidiGrammarDefinition,
        SwidiFunctionTypeGrammarDefinition,
        SwidiIdentifierGrammarDefinition,
        SwidiDeclarationGrammarDefinition
    implements
        IFunctionTypeLexer,
        IAnnotationListLexer,
        IFunctionTypeNamedParameterLexer,
        IFunctionTypeOptionalParameterLexer,
        IFunctionTypePositionalParameterLexer,
        IFunctionTypeParameterListLexer,
        ITypeFormalListLexer,
        IFunctionTypeParser<Parser<SwidiFunctionType>>,
        IAnnotationListParser<Parser<SwidiAnnotationList>>,
        IFunctionTypeNamedParameterParser<
            Parser<SwidiFunctionTypeNamedParameter?>>,
        IFunctionTypeOptionalParameterParser<
            Parser<SwidiFunctionTypeOptionalParameter?>>,
        IFunctionTypePositionalParameterParser<
            Parser<SwidiFunctionTypePositionalParameter?>>,
        IFunctionTypeParameterListParser<
            Parser<
                List<SwidiFunctionTypePositionalOrOptionalOrNamedParameter>>> {
  @override
  Parser<SwidiFunctionType> functionType() => super.functionType().map(
        (x) => SwidiFunctionType(
            returnType: collectTokens<SwidiType>(x).first,
            optionalParameters: [
              ...collectTokens<SwidiFunctionTypeOptionalParameter>(x),
              ...collectTokens<
                      SwidiFunctionTypePositionalOrOptionalOrNamedParameter>(x)
                  .map(
                    (e) => e.maybeWhen(
                      fromSwidiFunctionTypeOptionalParameter: (val) => val,
                      orElse: () => null,
                    ),
                  )
                  .whereNotNull()
                  .toList()
            ],
            positionalParameters: [
              ...collectTokens<SwidiFunctionTypePositionalParameter>(x),
              ...collectTokens<
                      SwidiFunctionTypePositionalOrOptionalOrNamedParameter>(x)
                  .map(
                    (e) => e.maybeWhen(
                      fromSwidiFunctionTypePositionalParameter: (val) => val,
                      orElse: () => null,
                    ),
                  )
                  .whereNotNull()
                  .toList()
            ],
            namedParameters: [
              ...collectTokens<SwidiFunctionTypeNamedParameter>(x),
              ...collectTokens<
                      SwidiFunctionTypePositionalOrOptionalOrNamedParameter>(x)
                  .map(
                    (e) => e.maybeWhen(
                      fromSwidiFunctionTypeNamedParameter: (val) => val,
                      orElse: () => null,
                    ),
                  )
                  .whereNotNull()
                  .toList()
            ],
            typeFormals: [
              ...((({
                required final List<SwidiTypeFormalList> typeFormals,
              }) =>
                  typeFormals.isNotEmpty
                      ? typeFormals.first.typeFormalList
                      : [])(
                typeFormals: collectTokens<SwidiTypeFormalList>(x),
              )),
            ],
            annotations: [
              ...((({
                required final List<SwidiAnnotationList> annotationList,
              }) =>
                  annotationList.isNotEmpty
                      ? annotationList.first.annotationList
                      : [])(
                annotationList: collectTokens<SwidiAnnotationList>(x),
              )),
            ],
            nullabilitySuffix: (({
              required final List<Token> tokenList,
            }) =>
                tokenList.isNotEmpty
                    ? tokenList.last.input == "?"
                        ? SwidiNullabilitySuffix.question
                        : SwidiNullabilitySuffix.none
                    : SwidiNullabilitySuffix.none)(
              tokenList: collectTokens<Token>(x),
            )),
      );
}
