import 'package:hydro_sdk/swid/actors/pipelineActorCacheMgr.dart';
import 'package:meta/meta.dart';
import 'package:theater/theater.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/actors/messages/actorTopicMessageOut.dart';
import 'package:hydro_sdk/swid/actors/messages/pipelineOnCacheHitMessageOut.dart';
import 'package:hydro_sdk/swid/actors/messages/pipelineOnCacheMissMessageOut.dart';
import 'package:hydro_sdk/swid/actors/messages/pipelineOnNonEmptyCacheGroupMessageOut.dart';
import 'package:hydro_sdk/swid/pipelines/cachingPipelineMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipelineCacheMgr.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

class CachingActorPipeline<T extends Object, U extends UntypedActorProperties,
        V extends NodeActorContext<U>>
    with CachingPipelineMixin<T>
    implements ISwarsPipeline<T> {
  @nonVirtual
  @protected
  Tuple3<String, V, String> topicContext;

  @nonVirtual
  @protected
  final PipelineActorCacheMgr cacheMgr;

  @nonVirtual
  @protected
  List<ISwarsTerm<dynamic, dynamic, dynamic>> terms = [];

  @nonVirtual
  @protected
  Map<String, Map<String, ISwarsTermResult<dynamic>>> results = {};

  @nonVirtual
  @protected
  Map<String, Map<String, dynamic>> rawResults = {};

  @nonVirtual
  @protected
  Map<String, Map<String, int>> cacheHits = {};

  CachingActorPipeline({
    required final PipelineActorCacheMgr this.cacheMgr,
    required final Tuple3<String, V, String> this.topicContext,
  });

  CachingActorPipeline._({
    required final Tuple3<String, V, String> this.topicContext,
    required final List<ISwarsTerm<dynamic, dynamic, dynamic>> this.terms,
    required final Map<String, Map<String, ISwarsTermResult<dynamic>>>
        this.results,
    required final Map<String, Map<String, dynamic>> this.rawResults,
    required final Map<String, Map<String, int>> this.cacheHits,
    required final PipelineActorCacheMgr this.cacheMgr,
  });

  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsPipeline<V> fromTerms<V extends Object, U extends Object,
          K extends Object, L extends Object>({
    required covariant final List<ISwarsTerm<U, K, L>> terms,
  }) =>
      CachingActorPipeline._(
        topicContext: this.topicContext,
        terms: terms,
        results: this.results,
        rawResults: this.rawResults,
        cacheHits: this.cacheHits,
        cacheMgr: this.cacheMgr,
      );

  @override
  void onNonEmptyCacheGroup({
    required final String cacheGroup,
    required final String hashKey,
  }) =>
      topicContext.item2.sendToTopic(
        topicContext.item1,
        ActorTopicMessageOut.fromPipelineOnNonEmptyCacheGroupMessageOut(
          pipelineOnNonEmptyCacheGroupMessageOut:
              PipelineOnNonEmptyCacheGroupMessageOut(
            sender: topicContext.item3,
            cacheGroup: cacheGroup,
            hashKey: hashKey,
          ),
        ),
      );

  @override
  void onCacheHit({
    required final String cacheGroup,
    required final String hashKey,
  }) =>
      topicContext.item2.sendToTopic(
        topicContext.item1,
        ActorTopicMessageOut.fromPipelineOnCacheHitMessageOut(
          pipelineOnCacheHitMessageOut: PipelineOnCacheHitMessageOut(
            sender: topicContext.item3,
            cacheGroup: cacheGroup,
            hashKey: hashKey,
          ),
        ),
      );

  @override
  void onCacheMiss({
    required final String cacheGroup,
    required final String hashKey,
  }) =>
      topicContext.item2.sendToTopic(
        topicContext.item1,
        ActorTopicMessageOut.fromPipelineOnCacheMissMessageOut(
          pipelineOnCacheMissMessageOut: PipelineOnCacheMissMessageOut(
            sender: topicContext.item3,
            cacheGroup: cacheGroup,
            hashKey: hashKey,
          ),
        ),
      );
}
