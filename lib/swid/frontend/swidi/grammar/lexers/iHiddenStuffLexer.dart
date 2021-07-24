import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iMultiLineCommentLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSingleLineCommentLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iWhitespaceLexer.dart';

abstract class IHiddenStuffLexer<T>
    implements
        IWhitespaceLexer<T>,
        ISingleLineCommentLexer<T>,
        IMultiLineCommentLexer<T> {
  const IHiddenStuffLexer();

  T hiddenStuff();
}
