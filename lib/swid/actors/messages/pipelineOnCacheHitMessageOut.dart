import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/actors/messages/iActopTopicMessageOut.dart';

part 'pipelineOnCacheHitMessageOut.freezed.dart';

@freezed
class PipelineOnCacheHitMessageOut
    with _$PipelineOnCacheHitMessageOut
    implements IActorTopicMessageOut {
  const PipelineOnCacheHitMessageOut._();

  const factory PipelineOnCacheHitMessageOut({
    required final String sender,
    required final String cacheGroup,
    required final String hashKey,
  }) = _$PipelineOnCacheHitMessageOutCtor;
}
