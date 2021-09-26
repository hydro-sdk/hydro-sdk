import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstPositionalParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstPositionalParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstPositionalParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiConstPositionalParameterListParser
    on
        SwidiConstGrammarDefinition,
        SwidiConstStringParser,
        SwidiConstNumberParser,
        SwidiConstParser
    implements
        IConstPositionalParameterListLexer,
        IConstLexer,
        IConstPositionalParameterListParser<
            Parser<List<SwidiConstPositionalParameterList>>>,
        IConstParser<Parser<SwidiConst>> {
  @override
  Parser<List<SwidiConstPositionalParameterList>>
      constPositionalParameterList() =>
          super.constPositionalParameterList().map(
                (x) => [
                  SwidiConstPositionalParameterList(
                    parameters: collectTokens<SwidiConst>(x),
                  ),
                ],
              );
}
