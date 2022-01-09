import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/actors/messages/iActopTopicMessageOut.dart';

part 'pipelineOnCacheMissMessageOut.freezed.dart';

@freezed
class PipelineOnCacheMissMessageOut
    with _$PipelineOnCacheMissMessageOut
    implements IActorTopicMessageOut {
  const PipelineOnCacheMissMessageOut._();

  const factory PipelineOnCacheMissMessageOut({
    required final String sender,
    required final String cacheGroup,
    required final String hashKey,
  }) = _$PipelineOnCacheMissMessageOutCtor;
}
