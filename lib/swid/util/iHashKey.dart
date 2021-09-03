import 'package:meta/meta.dart';

@immutable
abstract class IHashKey {
  const IHashKey();

  String get hashKey;

  List<int> get hashableParts;
}

