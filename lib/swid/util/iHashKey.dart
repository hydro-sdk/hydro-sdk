import 'package:meta/meta.dart';

@immutable
abstract class IHashKey {
  const IHashKey();

  int get hashKey;
}
