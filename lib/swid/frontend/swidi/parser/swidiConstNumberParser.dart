import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiConstNumberParser on SwidiConstGrammarDefinition {
  Parser<SwidiConstNumber> constNumber() => super.constNumber().map((x) {
        var tokens = collectTokens<String>(x);

        return SwidiConstNumber(
          value: tokens.join(),
        );
      });
}
