import 'dart:typed_data';
import 'package:hydro_sdk/swid/util/iPbTransformable.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart';

mixin PbTransformableMixin<T extends GeneratedMessage,
    U extends IPbTransformable<T, U>> implements IPbTransformable<T, U> {
  @nonVirtual
  @override
  Uint8List toPb(final T generatedMessage) =>
      createGeneratedMessage().writeToBuffer();
}
