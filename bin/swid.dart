import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/backend/dart/util/produceDartTranslationUnitsFromBarrelSpec.dart';
import 'package:hydro_sdk/swid/backend/translationUnitProducer.dart';
import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/backend/util/resolveBarrelSpecs.dart';
import 'package:hydro_sdk/swid/backend/writeTranslationUnit.dart';
import 'package:hydro_sdk/swid/config/swidConfig.dart';
import 'package:hydro_sdk/swid/frontend/dart/dartFrontend.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiFrontend.dart';
import 'package:hydro_sdk/swid/frontend/swidiInputResolver.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/ir/util/fixupNullability.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineFsCacheMgr.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/util/cliTiming.dart';

void main(List<String> args) async {
  assert((() {
    args = [
      "--config",
      "swid.flutter.json",
      "--no-fs-cache",
    ];
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
    message: "Producing Typescript and Dart translation units from classes",
    fun: () async {
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

  final topCacheHits = pipeline.topCacheHitsByCacheGroup();

  if (topCacheHits.isNotEmpty) {
    print("The following are the most re-used terms:");
    topCacheHits.forEach(
      (x) => print(" ${x.item1}: ${x.item2}"),
    );
  }

  final emptyCacheHits = pipeline.emptyCacheHitsByCacheGroup();

  if (emptyCacheHits.isNotEmpty) {
    print(
        "The following terms generated results but their caches were never hit:");
    emptyCacheHits.forEach(
      (x) => print("  ${x.item1}"),
    );
  }

  if (fsCache == true) {
    await pipeline.serialize();
  }
}
