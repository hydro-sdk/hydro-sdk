import 'package:hydro_sdk/swid/actors/pipelineActorCacheMgr.dart';
import 'package:meta/meta.dart';
import 'package:theater/theater.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/actors/iPipelineActor.dart';
import 'package:hydro_sdk/swid/actors/messages/actorCompleteMessageOut.dart';
import 'package:hydro_sdk/swid/actors/messages/actorTopicMessageOut.dart';
import 'package:hydro_sdk/swid/actors/messages/pipelineActorProgressMessageOut.dart';
import 'package:hydro_sdk/swid/pipelines/cachingActorPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

mixin PipelineActorMixin<T extends Object, U extends UntypedActorProperties,
        V extends NodeActorContext<U>, L extends ISwarsPipeline<T>>
    on NodeActor<V> implements IPipelineActor<T, U, V, L> {
  @protected
  @nonVirtual
  @override
  late final L pipeline;

  @protected
  @override
  Future<void> onStart(V context) async {
    pipeline = CachingActorPipeline(
      cacheMgr: PipelineActorCacheMgr(
        topicContext: Tuple3(
          messageOutTopic,
          context,
          name,
        ),
      ),
      topicContext: Tuple3(
        messageOutTopic,
        context,
        name,
      ),
    ) as L;

    super.onStart(context);
  }

  @protected
  @nonVirtual
  void completeAndKill({
    required covariant final V context,
  }) {
    context.sendToTopic(
      messageOutTopic,
      ActorTopicMessageOut.fromActorCompleteMessageOut(
        actorCompleteMessageOut: ActorCompleteMessageOut(
          sender: name,
        ),
      ),
    );
    context.kill();
  }

  @protected
  @nonVirtual
  void updateProgress({
    required covariant final V context,
    required final int completed,
    required final int total,
  }) =>
      context.sendToTopic(
        messageOutTopic,
        ActorTopicMessageOut.fromPipelineActorProgressMessageOut(
          pipelineActorProgressMessageOut: PipelineActorProgressMessageOut(
            sender: name,
            total: total,
            completed: completed,
          ),
        ),
      );
}
