import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class INumberOptIllegalEndLexer<T extends dynamic,
    U extends Parser<T>> {
  const INumberOptIllegalEndLexer();

  U numberOptIllegalEnd();
}
