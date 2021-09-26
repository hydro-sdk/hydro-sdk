import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNumberLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiConstNumberParser on SwidiConstGrammarDefinition
    implements IConstNumberLexer, IConstNumberParser<Parser<SwidiConstNumber>> {
  @override
  Parser<SwidiConstNumber> constNumber() => super.constNumber().map(
        (x) => SwidiConstNumber(
          value: collectTokens<String>(x).join(),
        ),
      );
}
