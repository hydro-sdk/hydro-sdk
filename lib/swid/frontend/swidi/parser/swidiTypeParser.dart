import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeArgumentList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeArgumentsLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeArgumentListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeParser
    on
        SwidiDeclarationGrammarDefinition,
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser
    implements
        ITypeLexer,
        ITypeParser<Parser<SwidiInterface>>,
        ITypeArgumentsLexer,
        ILibraryScopePrefixParser<Parser<SwidiLibraryScopePrefix>>,
        IReferenceDeclarationPrefixParser<
            Parser<SwidiReferenceDeclarationPrefix>>,
        ITypeArgumentListParser<Parser<SwidiTypeArgumentList>> {
  @override
  Parser<SwidiInterface> type() => super.type().map((x) {
        final tokenList = collectTokens<Token>(x);
        String? token;
        String? nullabilitySuffix;
        if (tokenList.isNotEmpty) {
          token = tokenList.last.input;
          nullabilitySuffix = tokenList.first.input;
        }
        final typeArguments = collectTokens<SwidiTypeArgumentList>(x);

        return SwidiInterface(
          name:
              token != nullabilitySuffix ? token! + nullabilitySuffix! : token!,
          nullabilitySuffix: nullabilitySuffix == "?"
              ? SwidiNullabilitySuffix.question
              : SwidiNullabilitySuffix.none,
          libraryScopePrefix:
              collectTokens<SwidiLibraryScopePrefix>(x).isNotEmpty
                  ? collectTokens<SwidiLibraryScopePrefix>(x).first
                  : SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix:
              collectTokens<SwidiReferenceDeclarationPrefix>(x).isNotEmpty
                  ? collectTokens<SwidiReferenceDeclarationPrefix>(x).first
                  : SwidiReferenceDeclarationPrefix.empty,
          typeArguments:
              typeArguments.isNotEmpty ? typeArguments.first.typeList : [],
        );
      });
}
