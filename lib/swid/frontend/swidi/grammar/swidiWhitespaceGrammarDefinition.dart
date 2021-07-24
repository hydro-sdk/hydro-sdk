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
  Parser hidden() => ref0(hiddenStuff).plus();

  @override
  Parser hiddenStuff() =>
      ref0(lexicalWhitespace) |
      ref0(singleLineComment) |
      ref0(multiLineComment);

  @override
  Parser lexicalWhitespace() => whitespace();

  @override
  Parser singleLineComment() =>
      string('//') & ref0(newline).neg().star() & ref0(newline).optional();

  @override
  Parser multiLineComment() =>
      string('/*') &
      (ref0(multiLineComment) | string('*/').neg()).star() &
      string('*/');

  @override
  Parser newline() => pattern('\n\r');
}
