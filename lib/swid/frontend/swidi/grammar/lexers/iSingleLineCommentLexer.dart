import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iNewlineLexer.dart';

abstract class ISingleLineCommentLexer<T> implements INewlineLexer<T> {
  const ISingleLineCommentLexer();

  T lexSingleLineComment();
}
