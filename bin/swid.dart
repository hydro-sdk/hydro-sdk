import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:collection/collection.dart';
import 'package:theater/theater.dart';
import 'package:tint/tint.dart';

import 'package:hydro_sdk/swid/actors/classTranslationUnitEmitActor.dart';
import 'package:hydro_sdk/swid/actors/messages/actorTopicMessageOut.dart';
import 'package:hydro_sdk/swid/backend/dart/util/produceDartTranslationUnitsFromBarrelSpec.dart';
import 'package:hydro_sdk/swid/backend/translationUnitProducer.dart';
import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/backend/util/resolveBarrelSpecs.dart';
import 'package:hydro_sdk/swid/backend/writeTranslationUnit.dart';
import 'package:hydro_sdk/swid/config/swidConfig.dart';
import 'package:hydro_sdk/swid/frontend/dart/dartFrontend.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiFrontend.dart';
import 'package:hydro_sdk/swid/frontend/swidiInputResolver.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineFsCacheMgr.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/tui/pipelineMultiProgress.dart';
import 'package:hydro_sdk/swid/tui/pipelineProgress.dart';
import 'package:hydro_sdk/swid/util/cliTiming.dart';
import 'package:hydro_sdk/tui/framework/theme.dart';

void main(List<String> args) async {
  assert((() {
    args = [
      "--config",
      "swid.flutter.json",
      "--no-fs-cache",
    ];
    print("Probably being debugged");
    return true;
  })());

  var parser = ArgParser();

  parser.addOption("config");
  parser.addFlag(
    "fs-cache",
    negatable: true,
    defaultsTo: true,
  );

  final results = parser.parse(args);

  final bool? fsCache = results["fs-cache"];

  SwidConfig config = SwidConfig.fromJson(
      jsonDecode(await File(results["config"]).readAsString()));

  final pipeline = CachingPipeline(
    cacheMgr: PipelineFsCacheMgr(
      basePath: ".swid",
    ),
  );

  final logger = Logger.standard();

  final dartFrontend = SwidDartFrontend(inputs: [
    config.inputPackagePath,
  ]);

  final swidiFrontend = SwidiFrontend(
    inputs: config.interfaces,
    inputResolver: const SwidiInputResolver(),
    pipeline: pipeline,
  );

  if (fsCache == true) {
    await CliTiming(
      logger: logger,
      message: "Restoring pipeline cache",
      fun: () async => await pipeline.deserializeResults(),
    );
  }

  final swidIr = await CliTiming(
    logger: logger,
    message: "Parsing Swidi interfaces",
    fun: () async => await swidiFrontend.produceIr(),
  );

  final dartIr = await CliTiming(
    logger: logger,
    message: "Analyzing Dart package",
    fun: () async => await dartFrontend.produceIr(),
  );

  final ir = await CliTiming(
    logger: logger,
    message: "Merging IR",
    fun: () => SwidIr.merge(
      ir: [
        swidIr,
        dartIr,
      ],
    ),
  );

  final enums = ir
      .map(
        (x) => x.maybeWhen(
          fromSwidEnum: (val) => val,
          orElse: () => null,
        ),
      )
      .whereNotNull()
      .toList();

  final irClasses = ir
      .map(
        (x) => x.maybeWhen(
          fromSwidClass: (val) => val,
          orElse: () => null,
        ),
      )
      .whereNotNull()
      .toList();

  final topLevelDeclarations = ir
      .map(
        (x) => x.maybeWhen(
          fromSwidTopLevelStaticConstFieldDeclaration: (val) => val,
          orElse: () => null,
        ),
      )
      .whereNotNull()
      //todo eventually top level declarations should be just as clever as static const fields
      .where((x) => x.originalPackagePath == "dart:math")
      .toList();

  await CliTiming(
    logger: logger,
    message: "Producing Typescript translation units from enums",
    fun: () async {
      for (var i = 0; i != enums.length; ++i) {
        await Future.forEach(
            TranslationUnitProducer(
              pipeline: pipeline,
              prefixPaths: ["runtime"],
              path: transformPackageUri(
                packageUri: enums[i].originalPackagePath,
              ),
              baseFileName: "${transformToCamelCase(str: enums[i].identifier)}",
              tsPrefixPaths: ["runtime"],
              dartPrefixPaths: [],
            ).produceFromSwidEnum(swidEnum: enums[i]),
            (dynamic x) => writeTranslationUnit(translationUnit: x));
      }
    },
  );

  await CliTiming(
    logger: logger,
    message:
        "Producing Typescript and Dart translation units from top-level declarations",
    fun: () async {
      for (var i = 0; i != topLevelDeclarations.length; ++i) {
        await Future.forEach(
            TranslationUnitProducer(
              pipeline: pipeline,
              prefixPaths: config.emitOptions.prefixPaths,
              path: transformPackageUri(
                packageUri: topLevelDeclarations[i].originalPackagePath,
              ),
              baseFileName:
                  "${transformToCamelCase(str: topLevelDeclarations[i].declaration.name)}",
              tsPrefixPaths: config.emitOptions.tsEmitOptions.prefixPaths,
              dartPrefixPaths: config.emitOptions.dartEmitOptions.prefixPaths,
            ).produceFromSwidTopLevelStaticConstFieldDeclaration(
              pipeline: pipeline,
              swidTopLevelStaticConstFieldDeclaration: topLevelDeclarations[i],
            ),
            (dynamic x) => writeTranslationUnit(translationUnit: x));
      }
    },
  );

  final classes = irClasses
      .where((x) => (config.emitOptions.allowList.classNames.isNotEmpty ||
              config.emitOptions.allowList.packagePaths.isNotEmpty)
          ? (config.emitOptions.allowList.classNames.firstWhereOrNull((e) => x.name == e) !=
                  null ||
              config.emitOptions.allowList.packagePaths
                      .firstWhereOrNull((e) => x.originalPackagePath == e) !=
                  null)
          : true)
      .where((x) => (config.emitOptions.denyList.classNames
                  .firstWhereOrNull((e) => x.name == e) ==
              null &&
          config.emitOptions.denyList.packagePaths
                  .firstWhereOrNull((e) => x.originalPackagePath == e) ==
              null))
      .toList();

  await CliTiming(
    logger: logger,
    message:
        "Producing Typescript and Dart translation units from barrel specifications",
    fun: () async => await Future.forEach(
        produceDartTranslationUnitsFromBarrelSpec(
          pipeline: pipeline,
          packageName: config.emitOptions.dartEmitOptions.hostPackageName,
          prefixPaths: config.emitOptions.dartEmitOptions.prefixPaths,
          barrelSpec: resolveBarrelSpecs(
              members: classes
                  .map((x) => BarrelMember.fromSwidClass(swidClass: x))
                  .toList()),
        ),
        (dynamic x) => writeTranslationUnit(translationUnit: x)),
  );

  final classTranslationUnitEmitSystem = ClassTranslationUnitEmitSystem(
    parallelism: 1,
    classes: classes,
    config: config,
  );

  await classTranslationUnitEmitSystem.run();

  if (fsCache == true) {
    await pipeline.serialize();
  }
}

class ClassTranslationUnitEmitSystem {
  final int parallelism;
  final List<SwidClass> classes;
  final SwidConfig config;

  late final ActorSystem actorSystem;
  late final Map<String, LocalActorRef> actorRefs;
  late final PipelineMultiProgress pipelineMultiProgress;
  late final Map<String, PipelineProgressState> pipelineProgressStates;

  late final theme = Theme.basicTheme.copyWith(
    emptyProgress: '-',
    progressPrefix: '',
    progressSuffix: '',
    emptyProgressStyle: (x) => x.blue(),
    filledProgressStyle: (x) => x.cyan(),
    leadingProgressStyle: (x) => x.cyan(),
  );

  ClassTranslationUnitEmitSystem({
    required final this.parallelism,
    required final this.classes,
    required final this.config,
  });

  String leftPrompt({
    required final int completed,
    required final int total,
    required final String hashKey,
    required final String cacheGroup,
  }) =>
      '${(completed / total).toStringAsPrecision(2).padLeft(4)} %';

  String rightPrompt({
    required final int completed,
    required final int total,
    required final String hashKey,
    required final String cacheGroup,
  }) =>
      hashKey.isNotEmpty
          ? hashKey.substring(0, 6).yellow() + ": " + cacheGroup.green()
          : "";

  int get jobSize => (classes.length / parallelism).ceil();

  Future<void> run() async {
    final completer = Completer<void>();

    final actorSystem = ActorSystem("classTranslationUnitEmitSystem");

    await actorSystem.initialize();

    pipelineMultiProgress = PipelineMultiProgress();

    pipelineProgressStates = Map.fromEntries(
      List.generate(
        parallelism,
        (i) => MapEntry(
          i.toString(),
          pipelineMultiProgress.add(
            PipelineProgress.withTheme(
              theme: theme,
              size: 0.25,
              length: 100,
              leftPrompt: leftPrompt,
              rightPrompt: rightPrompt,
              total: parallelism,
            ),
          ),
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
              ClassTranslationUnitEmitActor(
                name: i.toString(),
                config: config,
                classes: classes
                    .skip(i * jobSize)
                    .toList()
                    .sublist(0, jobSize)
                    .toList(),
                messageOutTopic: "gossipTopic",
              ),
            ),
          ),
        ),
      ),
    );

    actorSystem.listenTopic<ActorTopicMessageOut>("gossipTopic",
        (message) async {
      message.when(
        fromPipelineOnNonEmptyCacheGroupMessageOut: (val) {
          final pipelineProgressState = pipelineProgressStates.entries
              .elementAt(int.parse(val.sender))
              .value;

          pipelineProgressState.changeCacheGroup(val.cacheGroup);
          pipelineProgressState.changeHashKey(val.hashKey);
        },
        fromPipelineOnCacheHitMessageOut: (_) => null,
        fromPipelineOnCacheMissMessageOut: (_) => null,
        fromPipelineActorProgressMessageOut: (val) => pipelineProgressStates
            .entries
            .elementAt(int.parse(val.sender))
            .value
            .increase(val.completed),
        fromActorCompleteMessageOut: (_) => completer.complete(),
      );
      return null;
    });

    await completer.future;

    actorSystem.dispose();

    pipelineProgressStates.entries.forEach(
      (x) => x.value.done(),
    );
  }
}
