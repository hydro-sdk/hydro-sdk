import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNamedParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstNamedParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiConstNamedParameterListParser
    on
        SwidiConstGrammarDefinition,
        SwidiConstStringParser,
        SwidiConstNumberParser,
        SwidiConstNamedParameterParser,
        SwidiConstParser
    implements
        IConstNamedParameterListLexer,
        IConstNamedParameterLexer,
        IConstNamedParameterListParser<
            Parser<List<SwidiConstNamedParameterList>>>,
        IConstNamedParameterParser<Parser<SwidiConstNamedParameter>> {
  @override
  Parser<List<SwidiConstNamedParameterList>> constNamedParameterList() =>
      super.constNamedParameterList().map(
            (x) => [
              SwidiConstNamedParameterList(
                parameters: collectTokens<SwidiConstNamedParameter>(x),
              ),
            ],
          );
}
