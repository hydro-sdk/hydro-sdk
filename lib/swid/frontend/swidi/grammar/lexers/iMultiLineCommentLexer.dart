import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IMultiLineCommentLexer<T extends dynamic, U extends Parser<T>> {
  const IMultiLineCommentLexer();

  U multiLineComment();
}
