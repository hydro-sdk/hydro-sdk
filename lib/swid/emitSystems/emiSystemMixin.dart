import 'dart:async';

import 'package:meta/meta.dart';
import 'package:theater/theater.dart';
import 'package:tint/tint.dart';

import 'package:hydro_sdk/swid/actors/iPipelineActor.dart';
import 'package:hydro_sdk/swid/actors/messages/actorTopicMessageOut.dart';
import 'package:hydro_sdk/swid/emitSystems/iEmitSystem.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/tui/pipelineMultiProgress.dart';
import 'package:hydro_sdk/swid/tui/pipelineProgress.dart';
import 'package:hydro_sdk/tui/framework/theme.dart';

mixin EmitSystemMixin<
        T extends Object,
        U extends UntypedActorProperties,
        V extends NodeActorContext<U>,
        L extends ISwarsPipeline<T>,
        K extends Object,
        J extends IPipelineActor<T, U, V, L>>
    implements IEmitSystem<T, U, V, L, K, J> {
  @nonVirtual
  @protected
  late final ActorSystem actorSystem;

  @nonVirtual
  @protected
  late final Map<String, LocalActorRef> actorRefs;

  @nonVirtual
  @protected
  late final PipelineMultiProgress pipelineMultiProgress;

  @nonVirtual
  @protected
  late final Map<String, PipelineProgressState> pipelineProgressStates;

  @nonVirtual
  @protected
  late final Map<String, _PipelineMessageBuffer> pipelineMessageBuffers;

  @nonVirtual
  @protected
  late final theme = Theme.basicTheme.copyWith(
    emptyProgress: '-',
    progressPrefix: '',
    progressSuffix: '',
    emptyProgressStyle: (x) => x.blue(),
    filledProgressStyle: (x) => x.cyan(),
    leadingProgressStyle: (x) => x.cyan(),
  );

  @nonVirtual
  @protected
  String leftPrompt({
    required final int completed,
    required final int total,
    required final String hashKey,
    required final String cacheGroup,
  }) =>
      "$completed / $total";
  // '${((completed / total) * 100).toStringAsPrecision(2).padLeft(4)}%';

  @nonVirtual
  @protected
  String rightPrompt({
    required final int completed,
    required final int total,
    required final String hashKey,
    required final String cacheGroup,
  }) =>
      hashKey.isNotEmpty
          ? hashKey.substring(0, 6).yellow() +
              ": " +
              (cacheGroup.length > 30
                      ? "${cacheGroup.substring(0, 27)}..."
                      : cacheGroup.padRight(30))
                  .green()
          : "";

  @nonVirtual
  @protected
  int get jobSize => (workItems.length / parallelism).ceil();

  @nonVirtual
  Future<void> run() async {
    final completer = Completer<void>();

    final actorSystem = ActorSystem("emitSystem");

    await actorSystem.initialize();

    pipelineMultiProgress = PipelineMultiProgress();

    print(
        "Starting $parallelism jobs with ${jobSize} items each out of ${workItems.length} items");

    pipelineProgressStates = Map.fromEntries(
      List.generate(
        parallelism,
        (i) => MapEntry(
          i.toString(),
          pipelineMultiProgress.add(
            PipelineProgress.withTheme(
              theme: theme,
              size: 0.5,
              length: 35,
              leftPrompt: leftPrompt,
              rightPrompt: rightPrompt,
              total: _chunk(
                list: workItems,
                chunk: i,
                chunkSize: jobSize,
              ).length,
            ),
          ),
        ),
      ),
    );

    pipelineMessageBuffers = Map.fromEntries(
      List.generate(
        parallelism,
        (i) => MapEntry(
          i.toString(),
          _PipelineMessageBuffer(),
        ),
      ),
    );

    actorRefs = Map.fromEntries(
      await Future.wait(
        List.generate(
          parallelism,
          (i) async => MapEntry(
            i.toString(),
            await actorSystem.actorOf(
              i.toString(),
              createActor(
                name: i.toString(),
                config: config,
                chunkedWorkItems: _chunk(
                  list: workItems,
                  chunk: i,
                  chunkSize: jobSize,
                ),
                messageOutTopic: "gossipTopic",
              ),
            ),
          ),
        ),
      ),
    );

    int runningActors = actorRefs.entries.length;

    final flushTimer = Timer.periodic(
      Duration(
        milliseconds: parallelism * 100 < 1000 ? 1000 : parallelism * 100,
      ),
      (_) => scheduleMicrotask(
        () => pipelineMessageBuffers.entries.forEach(
          (x) {
            final state = pipelineProgressStates[x.key];

            state!.changeCompleted(x.value.completed);
            state.changeCacheGroup(x.value.cacheGroup);
            state.changeHashKey(x.value.hashKey);

            if (runningActors <= 0 && !completer.isCompleted) {
              completer.complete();
            }
          },
        ),
      ),
    );

    actorSystem.listenTopic<ActorTopicMessageOut>("gossipTopic",
        (message) async {
      message.when(
        fromPipelineActorCacheMgrPersistentTermResult: (val) =>
            termResultStore.upsertSingle(
          hashKey: val.hashKey,
          cacheGroup: val.cacheGroup,
          result: val.result,
        ),
        fromPipelineOnNonEmptyCacheGroupMessageOut: (val) {
          final buffer = pipelineMessageBuffers[val.sender];

          buffer!.cacheGroup = val.cacheGroup;
          buffer.hashKey = val.hashKey;
        },
        fromPipelineOnCacheHitMessageOut: (_) => null,
        fromPipelineOnCacheMissMessageOut: (_) => null,
        fromPipelineActorProgressMessageOut: (val) {
          final buffer = pipelineMessageBuffers[val.sender];

          buffer!.completed = val.completed;
        },
        fromActorCompleteMessageOut: (_) => scheduleMicrotask(
          () => runningActors -= 1,
        ),
      );
      return null;
    });

    await completer.future;

    actorSystem.dispose();

    flushTimer.cancel();

    pipelineProgressStates.entries.forEach(
      (x) => x.value.done(),
    );
  }
}

List<T> _chunk<T extends Object>({
  required final List<T>? list,
  required final int chunk,
  required final int chunkSize,
}) {
  if (list == null) {
    return [];
  }
  if (list.length >= chunkSize) {
    final skipped = list.skip(chunk * chunkSize).toList();
    if (skipped.isNotEmpty && skipped.length >= chunkSize) {
      return skipped.sublist(0, chunkSize).toList();
    }
    if (skipped.isNotEmpty) {
      return skipped;
    }
    return [];
  }
  return list;
}

class _PipelineMessageBuffer {
  String? cacheGroup;
  String? hashKey;
  int completed = 0;
}
