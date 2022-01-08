import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/actors/messages/iActopTopicMessageOut.dart';

part 'pipelineOnNonEmptyCacheGroupMessageOut.freezed.dart';

@freezed
class PipelineOnNonEmptyCacheGroupMessageOut
    with _$PipelineOnNonEmptyCacheGroupMessageOut
    implements IActorTopicMessageOut {
  const PipelineOnNonEmptyCacheGroupMessageOut._();

  const factory PipelineOnNonEmptyCacheGroupMessageOut({
    required final String sender,
    required final String cacheGroup,
    required final String hashKey,
  }) = _$PipelineOnNonEmptyCacheGroupMessageOutCtor;
}
