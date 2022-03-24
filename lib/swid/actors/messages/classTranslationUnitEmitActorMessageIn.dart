import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/actors/messages/setMessageOutTopic.dart';

part 'classTranslationUnitEmitActorMessageIn.freezed.dart';

@freezed
class ClassTranslationUnitEmitActorMessageIn
    with _$ClassTranslationUnitEmitActorMessageIn {
  const ClassTranslationUnitEmitActorMessageIn._();

  const factory ClassTranslationUnitEmitActorMessageIn.fromSetMessageOutTopic({
    required final SetMessageOutTopic setMessageOutTopic,
  }) = _$ClassTranslationUnitEmitActorMessageInFromSetMessageOutTopic;
}
