import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/actors/messages/iActopTopicMessageOut.dart';

part 'pipelineActorCacheMgrPersistentTermResult.freezed.dart';

@freezed
class PipelineActorCacheMgrPersistentTermResult
    with _$PipelineActorCacheMgrPersistentTermResult
    implements IActorTopicMessageOut {
  const PipelineActorCacheMgrPersistentTermResult._();

  const factory PipelineActorCacheMgrPersistentTermResult({
    required final String sender,
    required final String cacheGroup,
    required final String hashKey,
    required final String result,
  }) = _$PipelineActorCacheMgrPersistentTermResultCtor;
}
