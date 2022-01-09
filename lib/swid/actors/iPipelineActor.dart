import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:theater/theater.dart';

abstract class IPipelineActor<
    T extends Object,
    U extends UntypedActorProperties,
    V extends NodeActorContext<U>,
    L extends ISwarsPipeline<T>> implements NodeActor<V> {
  final String name;
  final String messageOutTopic;

  late final L pipeline;

  IPipelineActor({
    required final this.name,
    required final this.messageOutTopic,
  });

  @protected
  void completeAndKill({
    required covariant final V context,
  });

  @protected
  void updateProgress({
    required covariant final V context,
    required final int completed,
    required final int total,
  });
}
