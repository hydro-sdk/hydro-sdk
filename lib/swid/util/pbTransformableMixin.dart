import 'dart:typed_data';
import 'package:hydro_sdk/swid/util/iPbTransformable.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart';

abstract class IPbTransformableMixin<T extends GeneratedMessage,
    U extends IPbTransformableMixin<T, U>> implements IPbTransformable<U> {
  const IPbTransformableMixin();

  T createGeneratedMessage();
}

mixin PbTransformableMixin<T extends GeneratedMessage,
        U extends IPbTransformableMixin<T, U>>
    implements IPbTransformableMixin<T, U>, IPbTransformable<U> {
  @nonVirtual
  @override
  Uint8List toPb() =>
      createGeneratedMessage().writeToBuffer();
}
