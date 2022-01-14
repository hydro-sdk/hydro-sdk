import 'dart:typed_data';

abstract class IPbTransformable<T extends Object> {
  const IPbTransformable();

  Uint8List toPb();

  T fromPb(final Uint8List pb);
}
