import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeParser on SwidiGrammarDefinition {
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
        );
      });
}
