import 'package:meta/meta.dart';

@immutable
@optionalTypeArgs
abstract class ICloneable<T extends Object> {
  const ICloneable();

  T clone();
}
