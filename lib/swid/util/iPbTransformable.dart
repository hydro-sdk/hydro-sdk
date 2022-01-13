import 'dart:typed_data';
import 'package:protobuf/protobuf.dart';

abstract class IPbTransformable<T extends GeneratedMessage,
    U extends IPbTransformable<T, U>> {
  const IPbTransformable();

  T createGeneratedMessage();

  Uint8List toPb(final T generatedMessage);

  U fromPb(final Uint8List pb);
}
