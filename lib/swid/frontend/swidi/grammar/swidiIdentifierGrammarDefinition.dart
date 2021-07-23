import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';

mixin SwidiIdentifierGrammarDefinition
    on GrammarDefinition, SwidiLexicalTokensGrammarDefinition
    implements IIdentifierLexer {
  @override
  Parser lexIdentifier() => ref1(token, ref0(lexLexicalIdentifier));
}
