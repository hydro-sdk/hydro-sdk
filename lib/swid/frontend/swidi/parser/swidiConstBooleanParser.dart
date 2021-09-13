import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBoolean.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBooleanFalse.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBooleanTrue.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstBooleanFalseLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstBooleanLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstBooleanTrueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstBooleanFalseParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstBooleanParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstBooleanTrueParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstBooleanFalseParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstBooleanTrueParser.dart';

mixin SwidiConstBooleanParser
    on
        SwidiConstGrammarDefinition,
        SwidiConstBooleanTrueParser,
        SwidiConstBooleanFalseParser
    implements
        IConstBooleanLexer,
        IConstBooleanTrueLexer,
        IConstBooleanFalseLexer,
        IConstBooleanParser<Parser<SwidiConstBoolean>>,
        IConstBooleanTrueParser<Parser<SwidiConstBooleanTrue>>,
        IConstBooleanFalseParser<Parser<SwidiConstBooleanFalse>> {
  @override
  Parser<SwidiConstBoolean> constBoolean() => super.constBoolean().map((x) {
        if (x is SwidiConstBooleanTrue) {
          return SwidiConstBoolean.fromSwidiConstBooleanTrue(
            swidiConstBooleanTrue: SwidiConstBooleanTrue(),
          );
        }
        return SwidiConstBoolean.fromSwidiConstBooleanFalse(
          swidiConstBooleanFalse: SwidiConstBooleanFalse(),
        );
      });
}
