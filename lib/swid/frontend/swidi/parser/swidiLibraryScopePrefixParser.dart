import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiLibraryScopePrefixParser on SwidiGrammarDefinition {
  Parser<SwidiLibraryScopePrefix> libraryScopePrefix() =>
      super.libraryScopePrefix().map((x) {
        var tokenList = collectTokens<String>(x);
        return SwidiLibraryScopePrefix(
            name: tokenList.where((e) => e != '"').join());
      });
}
