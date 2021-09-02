import 'package:meta/meta.dart';

import 'package:reflectable/reflectable.dart';

class Reflector extends Reflectable {
  const Reflector() : super(declarationsCapability, subtypeQuantifyCapability);
}

const reflector = Reflector();

@reflector
@immutable
abstract class IHashKey {
  const IHashKey();

  int get hashKey;
}
