import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiReferenceDeclarationPrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeParser
    on
        SwidiGrammarDefinition,
        SwidiLibraryScopePrefixParser,
        SwidiReferenceDeclarationPrefixParser {
  Parser<SwidiInterface> type() => super.type().map((x) {
        var tokenList = collectTokens<Token>(x);
        String token;
        String nullabilitySuffix;
        if (tokenList?.isNotEmpty ?? false) {
          token = tokenList.last?.input ?? "";
          nullabilitySuffix = tokenList.first?.input ?? "";
        }
        return SwidiInterface(
          name: token != nullabilitySuffix ? token + nullabilitySuffix : token,
          nullabilitySuffix: nullabilitySuffix == "?"
              ? SwidiNullabilitySuffix.question
              : SwidiNullabilitySuffix.none,
          libraryScopePrefix:
              collectTokens<SwidiLibraryScopePrefix>(x)?.isNotEmpty ?? false
                  ? collectTokens<SwidiLibraryScopePrefix>(x).first
                  : SwidiLibraryScopePrefix.empty,
          referenceDeclarationPrefix:
              collectTokens<SwidiReferenceDeclarationPrefix>(x)?.isNotEmpty ??
                      false
                  ? collectTokens<SwidiReferenceDeclarationPrefix>(x).first
                  : SwidiReferenceDeclarationPrefix.empty,
        );
      });
}
