import 'package:theater/theater.dart';

import 'package:hydro_sdk/swid/actors/iPipelineActor.dart';
import 'package:hydro_sdk/swid/config/swidConfig.dart';
import 'package:hydro_sdk/swid/storage/iTermResultsStore.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

abstract class IEmitSystem<
    T extends Object,
    U extends UntypedActorProperties,
    V extends NodeActorContext<U>,
    L extends ISwarsPipeline<T>,
    K extends Object,
    J extends IPipelineActor<T, U, V, L>> {
  final int parallelism;
  final SwidConfig config;
  final List<K> workItems;
  final ITermResultStore termResultStore;

  const IEmitSystem({
    required final this.parallelism,
    required final this.config,
    required final this.workItems,
    required final this.termResultStore,
  });

  J createActor({
    required String name,
    required SwidConfig config,
    required List<K> chunkedWorkItems,
    required String messageOutTopic,
  });

  Future<void> run();
}
