import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IReferenceDeclarationPrefixLexer<T extends dynamic,
    U extends Parser<T>> {
  const IReferenceDeclarationPrefixLexer();

  U referenceDeclarationPrefix();
}
