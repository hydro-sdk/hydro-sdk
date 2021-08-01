import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBooleanFalse.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstBooleanFalseLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstBooleanFalseParser.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiConstBooleanFalseParser on SwidiConstGrammarDefinition
    implements
        IConstBooleanFalseLexer,
        IConstBooleanFalseParser<Parser<SwidiConstBooleanFalse>> {
  @override
  Parser<SwidiConstBooleanFalse> constBooleanFalse() =>
      super.constBooleanFalse().map((x) => const SwidiConstBooleanFalse());
}
