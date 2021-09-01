import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
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
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

void main(List<String> args) async {
  var parser = ArgParser();

  parser.addOption("config");

  final results = parser.parse(args);

  SwidConfig config = SwidConfig.fromJson(
      jsonDecode(await File(results["config"]).readAsString()));

  final dartFrontend = SwidDartFrontend(inputs: [
    config.inputPackagePath,
  ]);

  final swidiFrontend = SwidiFrontend(
    inputs: config.interfaces,
    inputResolver: const SwidiInputResolver(),
  );

  final pipeline = CachingPipeline();

  final ir = SwidIr.merge(
      ir: [await swidiFrontend.produceIr(), await dartFrontend.produceIr()]);

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
      ).produceFromSwidEnum(
        swidEnum: enums[i],
      ),
      (dynamic x) => writeTranslationUnit(
        translationUnit: x,
      ),
    );
  }
  print(irClasses.length);
  final classes = irClasses
      .where((x) => (config.emitOptions.allowList.classNames
                  .firstWhereOrNull((e) => x.name == e) !=
              null ||
          config.emitOptions.allowList.packagePaths
                  .firstWhereOrNull((e) => x.originalPackagePath == e) !=
              null))
      .where((x) => (config.emitOptions.denyList.classNames
                  .firstWhereOrNull((e) => x.name == e) ==
              null &&
          config.emitOptions.denyList.packagePaths
                  .firstWhereOrNull((e) => x.originalPackagePath == e) ==
              null))
      .toList();
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
        swidClass: fixupNullability(
          swidClass: classes[i],
        ),
      ),
      (dynamic x) => writeTranslationUnit(
        translationUnit: x,
      ),
    );
  }

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
        swidTopLevelStaticConstFieldDeclaration: topLevelDeclarations[i],
      ),
      (dynamic x) => writeTranslationUnit(
        translationUnit: x,
      ),
    );
  }

  await Future.forEach(
    produceDartTranslationUnitsFromBarrelSpec(
      pipeline: pipeline,
      packageName: config.emitOptions.dartEmitOptions.hostPackageName,
      prefixPaths: config.emitOptions.dartEmitOptions.prefixPaths,
      barrelSpec: resolveBarrelSpecs(
          members: classes
              .map(
                (x) => BarrelMember.fromSwidClass(
                  swidClass: x,
                ),
              )
              .toList()),
    ),
    (dynamic x) => writeTranslationUnit(
      translationUnit: x,
    ),
  );
}
