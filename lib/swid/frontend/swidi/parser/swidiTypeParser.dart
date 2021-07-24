import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeArgumentList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeArgumentListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeParser
    on
        SwidiGrammarDefinition,
        SwidiTypeArgumentListParser,
        SwidiTypeListParser,
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser
    implements ILibraryScopePrefixParser<Parser<SwidiLibraryScopePrefix>> {
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
