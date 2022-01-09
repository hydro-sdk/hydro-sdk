import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/actors/messages/iActopTopicMessageOut.dart';

part 'pipelineActorProgressMessageOut.freezed.dart';

@freezed
class PipelineActorProgressMessageOut
    with _$PipelineActorProgressMessageOut
    implements IActorTopicMessageOut {
  const PipelineActorProgressMessageOut._();

  const factory PipelineActorProgressMessageOut({
    required final String sender,
    required final int total,
    required final int completed,
  }) = _$PipelineActorProgressMessageOutCtor;
}
