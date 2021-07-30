import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstMap.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstMapLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstMapParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';
import 'package:quiver/iterables.dart';
import 'package:tuple/tuple.dart';

mixin SwidiConstMapParser on SwidiConstGrammarDefinition
    implements IConstMapLexer, IConstMapParser<Parser<SwidiConstMap>> {
  @override
  Parser<SwidiConstMap> constMap() => super.constMap().map(
        (x) => SwidiConstMap(
          entries: partition(collectTokens<SwidiConst>(x), 2)
              .map((x) => Tuple2(x.first, x.last))
              .toList(),
        ),
      );
}
