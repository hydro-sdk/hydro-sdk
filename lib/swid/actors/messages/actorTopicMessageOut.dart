import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/actors/messages/actorCompleteMessageOut.dart';
import 'package:hydro_sdk/swid/actors/messages/pipelineOnCacheHitMessageOut.dart';
import 'package:hydro_sdk/swid/actors/messages/pipelineOnCacheMissMessageOut.dart';
import 'package:hydro_sdk/swid/actors/messages/pipelineOnNonEmptyCacheGroupMessageOut.dart';

part 'actorTopicMessageOut.freezed.dart';

@freezed
class ActorTopicMessageOut with _$ActorTopicMessageOut {
  const ActorTopicMessageOut._();

  const factory ActorTopicMessageOut.fromPipelineOnNonEmptyCacheGroupMessageOut({
    required final PipelineOnNonEmptyCacheGroupMessageOut
        pipelineOnNonEmptyCacheGroupMessageOut,
  }) = _$ActorTopicMessageOutFromPipelineOnNonEmptyCacheGroupMessageOut;

  const factory ActorTopicMessageOut.fromPipelineOnCacheHitMessageOut({
    required final PipelineOnCacheHitMessageOut pipelineOnCacheHitMessageOut,
  }) = _$ActorTopicMessageOutFromPipelineOnCacheHitMessageOut;

  const factory ActorTopicMessageOut.fromPipelineOnCacheMissMessageOut({
    required final PipelineOnCacheMissMessageOut pipelineOnCacheMissMessageOut,
  }) = _$ActorTopicMessageOutFromPipelineOnCacheMissMessageOut;

  const factory ActorTopicMessageOut.fromActorCompleteMessageOut({
    required final ActorCompleteMessageOut actorCompleteMessageOut,
  }) = _$ActorTopicMessageOutFromActorCompleteMessageOut;
}
