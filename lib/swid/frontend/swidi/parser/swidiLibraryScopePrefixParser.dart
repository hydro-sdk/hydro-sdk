import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLibraryScopePrefixLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiLibraryScopePrefixParser on SwidiGrammarDefinition
    implements
        ILibraryScopePrefixLexer,
        ILibraryScopePrefixParser<Parser<SwidiLibraryScopePrefix>> {
  @override
  Parser<SwidiLibraryScopePrefix> libraryScopePrefix() =>
      super.libraryScopePrefix().map((x) {
        var tokenList = collectTokens<String>(x);
        return SwidiLibraryScopePrefix(
            name: tokenList.where((e) => e != '"').join());
      });
}
