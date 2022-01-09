import 'package:theater/theater.dart';

import 'package:hydro_sdk/swid/actors/pipelineActorMixin.dart';
import 'package:hydro_sdk/swid/backend/translationUnitProducer.dart';
import 'package:hydro_sdk/swid/backend/writeTranslationUnit.dart';
import 'package:hydro_sdk/swid/config/swidConfig.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/fixupNullability.dart';
import 'package:hydro_sdk/swid/pipelines/cachingActorPipeline.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

class ClassTranslationUnitEmitActor extends UntypedActor
    with
        PipelineActorMixin<
            Object,
            UntypedActorProperties,
            UntypedActorContext,
            CachingActorPipeline<Object, UntypedActorProperties,
                UntypedActorContext>> {
  final String name;
  final SwidConfig config;
  final List<SwidClass> classes;
  final String messageOutTopic;

  ClassTranslationUnitEmitActor({
    required final this.name,
    required final this.config,
    required this.classes,
    required this.messageOutTopic,
  });

  @override
  Future<void> onStart(UntypedActorContext context) async {
    super.onStart(context);

    Future.delayed(
      const Duration(
        milliseconds: 100,
      ),
    ).then(
      (_) async {
        for (var i = 0; i != classes.length; ++i) {
          await Future.wait(
            TranslationUnitProducer(
              pipeline: pipeline,
              prefixPaths: config.emitOptions.prefixPaths,
              path: transformPackageUri(
                packageUri: classes[i].originalPackagePath,
              ),
              baseFileName: "${transformToCamelCase(str: classes[i].name)}",
              tsPrefixPaths: config.emitOptions.tsEmitOptions.prefixPaths,
              dartPrefixPaths: config.emitOptions.dartEmitOptions.prefixPaths,
            )
                .produceFromSwidClass(
                  swidClass: fixupNullability(
                    swidClass: classes[i],
                  ),
                )
                .map(
                  (x) async => writeTranslationUnit(
                    translationUnit: x,
                  ),
                ),
          );

          updateProgress(
            context: context,
            completed: i + 1,
            total: classes.length,
          );
        }

        completeAndKill(
          context: context,
        );
      },
    );
  }
}
