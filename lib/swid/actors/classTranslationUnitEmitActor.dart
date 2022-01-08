import 'dart:collection';

import 'package:hydro_sdk/swid/actors/messages/actorCompleteMessageOut.dart';
import 'package:hydro_sdk/swid/actors/messages/actorTopicMessageOut.dart';
import 'package:hydro_sdk/swid/backend/translationUnitProducer.dart';
import 'package:hydro_sdk/swid/backend/writeTranslationUnit.dart';
import 'package:hydro_sdk/swid/config/swidConfig.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/fixupNullability.dart';
import 'package:hydro_sdk/swid/pipelines/cachingActorPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:theater/theater.dart';
import 'package:tuple/tuple.dart';

class ClassTranslationUnitEmitActor extends UntypedActor {
  final String name;
  final SwidConfig config;
  final List<SwidClass> classes;
  final String messageOutTopic;

  late final CachingActorPipeline<Object, UntypedActorProperties,
      UntypedActorContext> pipeline;

  ClassTranslationUnitEmitActor({
    required final this.name,
    required final this.config,
    required this.classes,
    required this.messageOutTopic,
  });

  @override
  Future<void> onStart(UntypedActorContext context) async {
    pipeline = CachingActorPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
      topicContext: Tuple3(messageOutTopic, context, name),
    );

    Future.delayed(
      const Duration(
        milliseconds: 100,
      ),
    ).then(
      (_) async {
        for (var i = 0; i != classes.length; ++i) {
          await Future.forEach(
              TranslationUnitProducer(
                pipeline: pipeline,
                prefixPaths: config.emitOptions.prefixPaths,
                path: transformPackageUri(
                  packageUri: classes[i].originalPackagePath,
                ),
                baseFileName: "${transformToCamelCase(str: classes[i].name)}",
                tsPrefixPaths: config.emitOptions.tsEmitOptions.prefixPaths,
                dartPrefixPaths: config.emitOptions.dartEmitOptions.prefixPaths,
              ).produceFromSwidClass(
                  swidClass: fixupNullability(swidClass: classes[i])),
              (dynamic x) => writeTranslationUnit(translationUnit: x));
        }

        context.sendToTopic(
          messageOutTopic,
          ActorTopicMessageOut.fromActorCompleteMessageOut(
            actorCompleteMessageOut: ActorCompleteMessageOut(
              sender: name,
            ),
          ),
        );

        context.kill();
      },
    );
  }
}
