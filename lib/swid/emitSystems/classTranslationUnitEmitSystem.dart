import 'package:hydro_sdk/swid/actors/classTranslationUnitEmitActor.dart';
import 'package:hydro_sdk/swid/emitSystems/emiSystemMixin.dart';
import 'package:theater/theater.dart';

import 'package:hydro_sdk/swid/config/swidConfig.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/pipelines/cachingActorPipeline.dart';

class ClassTranslationUnitEmitSystem
    with
        EmitSystemMixin<
            Object,
            UntypedActorProperties,
            UntypedActorContext,
            CachingActorPipeline<Object, UntypedActorProperties,
                UntypedActorContext>,
            SwidClass,
            ClassTranslationUnitEmitActor> {
  @override
  final int parallelism;

  @override
  final SwidConfig config;

  @override
  final List<SwidClass> workItems;

  ClassTranslationUnitEmitSystem({
    required final this.parallelism,
    required final this.config,
    required final this.workItems,
  });

  @override
  ClassTranslationUnitEmitActor createActor({
    required String name,
    required SwidConfig config,
    required List<SwidClass> chunkedWorkItems,
    required String messageOutTopic,
  }) =>
      ClassTranslationUnitEmitActor(
        name: name,
        config: config,
        classes: chunkedWorkItems,
        messageOutTopic: messageOutTopic,
      );
}
