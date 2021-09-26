import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBooleanTrue.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstBooleanTrueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstBooleanTrueParser.dart';

mixin SwidiConstBooleanTrueParser on SwidiConstGrammarDefinition
    implements
        IConstBooleanTrueLexer,
        IConstBooleanTrueParser<Parser<SwidiConstBooleanTrue>> {
  @override
  Parser<SwidiConstBooleanTrue> constBooleanTrue() =>
      super.constBooleanTrue().map((x) => SwidiConstBooleanTrue());
}
