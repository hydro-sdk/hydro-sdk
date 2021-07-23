import 'package:petitparser/core.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHiddenLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHiddenStuffLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iMultiLineCommentLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iNewlineLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSingleLineCommentLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iWhitespaceLexer.dart';

mixin SwidiWhitespaceGrammarDefinition on GrammarDefinition
    implements
        IHiddenLexer,
        IHiddenStuffLexer,
        IWhitespaceLexer,
        ISingleLineCommentLexer,
        IMultiLineCommentLexer,
        INewlineLexer {
  @override
  Parser lexHidden() => ref0(lexHiddenStuff).plus();

  @override
  Parser lexHiddenStuff() =>
      ref0(lexWhitespace) |
      ref0(lexSingleLineComment) |
      ref0(lexMultiLineComment);

  @override
  Parser lexWhitespace() => whitespace();

  @override
  Parser lexSingleLineComment() =>
      string('//') &
      ref0(lexNewline).neg().star() &
      ref0(lexNewline).optional();

  @override
  Parser lexMultiLineComment() =>
      string('/*') &
      (ref0(lexMultiLineComment) | string('*/').neg()).star() &
      string('*/');

  @override
  Parser lexNewline() => pattern('\n\r');
}
