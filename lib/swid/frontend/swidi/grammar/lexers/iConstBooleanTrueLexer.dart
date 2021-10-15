import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IConstBooleanTrueLexer<T extends dynamic, U extends Parser<T>> {
  const IConstBooleanTrueLexer();

  U constBooleanTrue();
}
