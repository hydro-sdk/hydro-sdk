import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAnnotationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iAnnotationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiAnnotationParser
    on SwidiDeclarationGrammarDefinition, SwidiConstParser
    implements
        IAnnotationLexer,
        IConstLexer,
        IAnnotationParser<Parser<SwidiAnnotation>>,
        IConstParser<Parser<SwidiConst>> {
  @override
  Parser<SwidiAnnotation> annotation() => super.annotation().map(
        (x) {
          final consts = collectTokens<SwidiConst>(x);
          return SwidiAnnotation(
            value: consts.isNotEmpty
                ? consts.first
                : SwidiConst.fromSwidiEmptyConst(
                    swidiEmptyConst: SwidiEmptyConst(),
                  ),
          );
        },
      );
}
