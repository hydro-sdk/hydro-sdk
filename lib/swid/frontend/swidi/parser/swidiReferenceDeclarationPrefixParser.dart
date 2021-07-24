import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iReferenceDeclarationPrefixParser.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiReferenceDeclarationPrefixParser on SwidiGrammarDefinition
    implements
        IReferenceDeclarationPrefixParser<
            Parser<SwidiReferenceDeclarationPrefix>> {
  @override
  Parser<SwidiReferenceDeclarationPrefix> referenceDeclarationPrefix() =>
      super.referenceDeclarationPrefix().map((x) {
        var tokenList = collectTokens<Token>(x);
        return SwidiReferenceDeclarationPrefix(
          name: tokenList.isNotEmpty ? tokenList.first.input : "",
        );
      });
}
