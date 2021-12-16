import 'package:meta/meta.dart';

@immutable
abstract class IHashKey {
  const IHashKey();

  String get hashKey;

  Iterable<Iterable<int>> get hashableParts;
}
