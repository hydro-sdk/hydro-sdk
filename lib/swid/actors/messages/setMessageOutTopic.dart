import 'package:freezed_annotation/freezed_annotation.dart';

part 'setMessageOutTopic.freezed.dart';

@freezed
class SetMessageOutTopic with _$SetMessageOutTopic {
  const SetMessageOutTopic._();

  const factory SetMessageOutTopic({
    required final String topic,
  }) = _$SetMessageOutTopicCtor;
}
