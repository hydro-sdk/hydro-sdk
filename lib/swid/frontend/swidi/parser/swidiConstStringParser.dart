import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiConstStringParser on SwidiConstGrammarDefinition
    implements IConstStringLexer, IConstStringParser<Parser<SwidiConstString>> {
  @override
  Parser<SwidiConstString> constString() => super.constString().map(
        (x) => SwidiConstString(
          value: collectTokens<String>(x).skip(3).join(),
        ),
      );
}
