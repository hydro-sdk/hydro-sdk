import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiLibraryScopePrefixParser on SwidiGrammarDefinition {
  Parser<SwidiLibraryScopePrefix> libraryScopePrefix() =>
      super.libraryScopePrefix().map((x) {
        var tokenList = collectTokens<String>(x);
        return SwidiLibraryScopePrefix(
            name: tokenList.where((e) => e != '"').join());
      });
}
