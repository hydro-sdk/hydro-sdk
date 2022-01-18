import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:args/args.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:collection/collection.dart';
import 'package:drift/native.dart';
import 'package:sqlite3/open.dart';

import 'package:hydro_sdk/swid/backend/dart/util/produceDartTranslationUnitsFromBarrelSpec.dart';
import 'package:hydro_sdk/swid/backend/translationUnitProducer.dart';
import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/backend/util/resolveBarrelSpecs.dart';
import 'package:hydro_sdk/swid/backend/writeTranslationUnit.dart';
import 'package:hydro_sdk/swid/config/swidConfig.dart';
import 'package:hydro_sdk/swid/emitSystems/classTranslationUnitEmitSystem.dart';
import 'package:hydro_sdk/swid/frontend/dart/dartFrontend.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiFrontend.dart';
import 'package:hydro_sdk/swid/frontend/swidiInputResolver.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/storage/termResultsStore.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/util/cliTiming.dart';
import 'package:hydro_sdk/tui/framework/consoleTuiBinding.dart';
import 'package:hydro_sdk/tui/framework/debugConsoleTuiBinding.dart';

void main(List<String> args) async {
  bool isDebugging = false;
  assert((() {
    args = [
      "--config",
      "swid.flutter.json",
      "--no-fs-cache",
    ];
    isDebugging = true;
    return true;
  })());

  if (!isDebugging) {
    ConsoleTuiBinding.initialize();
  } else {
    DebugConsoleTuiBinding.initialize();
    print("Using debug console bindings. Some TUI features may not work");
  }

  final parser = ArgParser();

  parser.addOption("config");

  parser.addFlag(
    "fs-cache",
    negatable: true,
    defaultsTo: true,
  );

  parser.addOption(
    "jobs",
    abbr: "j",
    defaultsTo: "1",
  );

  parser.addOption(
    "sqlite-path",
    mandatory: true,
  );

  final results = parser.parse(args);

  final int jobs = int.parse(results["jobs"]);
  final String sqlitePath = results["sqlite-path"];

  final openOnLinx = () => DynamicLibrary.open(sqlitePath);
  final openOnDarwin = () => DynamicLibrary.open(sqlitePath);
  final openOnWin32 = () => DynamicLibrary.open(sqlitePath);

  open.overrideFor(OperatingSystem.linux, openOnLinx);
  open.overrideFor(OperatingSystem.macOS, openOnDarwin);
  open.overrideFor(OperatingSystem.windows, openOnWin32);

  SwidConfig config = SwidConfig.fromJson(
      jsonDecode(await File(results["config"]).readAsString()));

  final pipeline = CachingPipeline(
    cacheMgr: const PipelineNoopCacheMgr(),
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
    parallelism: jobs,
    workItems: classes,
    config: config,
    termResultStore: TermResultsStore.queryExecutor(
      NativeDatabase(
        File(".swid/results.db"),
      ),
    ),
  );

  await classTranslationUnitEmitSystem.run();
}
