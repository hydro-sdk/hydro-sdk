import 'package:meta/meta.dart';

@immutable
abstract class IHashComparable {
  const IHashComparable();

  bool hashCompare(covariant final IHashComparable other);
}
