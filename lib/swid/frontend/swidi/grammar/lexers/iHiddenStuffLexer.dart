import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iMultiLineCommentLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSingleLineCommentLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iWhitespaceLexer.dart';

@optionalTypeArgs
@immutable
abstract class IHiddenStuffLexer<T extends dynamic, U extends Parser<T>>
    implements
        IWhitespaceLexer<T, U>,
        ISingleLineCommentLexer<T, U>,
        IMultiLineCommentLexer<T, U> {
  const IHiddenStuffLexer();

  U hiddenStuff();
}
