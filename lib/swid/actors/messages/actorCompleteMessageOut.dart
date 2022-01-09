import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/actors/messages/iActopTopicMessageOut.dart';

part 'actorCompleteMessageOut.freezed.dart';

@freezed
class ActorCompleteMessageOut
    with _$ActorCompleteMessageOut
    implements IActorTopicMessageOut {
  const ActorCompleteMessageOut._();

  const factory ActorCompleteMessageOut({
    required final String sender,
  }) = _$ActorCompleteMessageOutCtor;
}
