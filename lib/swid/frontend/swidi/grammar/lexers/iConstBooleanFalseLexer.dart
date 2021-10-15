import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IConstBooleanFalseLexer<T extends dynamic, U extends Parser<T>> {
  const IConstBooleanFalseLexer();

  U constBooleanFalse();
}
