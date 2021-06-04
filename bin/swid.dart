import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:hydro_sdk/swid/backend/dart/util/produceDartTranslationUnitsFromBarrelSpec.dart';
import 'package:hydro_sdk/swid/backend/translationUnitProducer.dart';
import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/backend/util/resolveBarrelSpecs.dart';
import 'package:hydro_sdk/swid/backend/writeTranslationUnit.dart';
import 'package:hydro_sdk/swid/config/swidConfig.dart';
import 'package:hydro_sdk/swid/frontend/dart/dartFrontend.dart';
import 'package:hydro_sdk/swid/frontend/inputResolver.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiFrontend.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/ir/util/fixupNullability.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

class SwidiInputResolver extends InputResolver {
  const SwidiInputResolver();

  @override
  Future<String> resolveInput({required String input}) => File(input).readAsString();
}

void main(List<String> args) async {
  var parser = ArgParser();

  parser.addOption("config");

  var results = parser.parse(args);

  SwidConfig config = SwidConfig.fromJson(
      jsonDecode(await File(results["config"]).readAsString()));

  var dartFrontend = SwidDartFrontend(inputs: [
    config.inputPackagePath,
  ]);
  var swidiFrontend = SwidiFrontend(
    inputs: config.interfaces,
    inputResolver: const SwidiInputResolver(),
  );

  var ir = SwidIr.merge(
      ir: [await swidiFrontend.produceIr(), await dartFrontend.produceIr()]);

  var enums = ir
      .map((x) => x.maybeWhen(fromSwidEnum: (val) => val, orElse: () => null))
      .where((x) => x != null)
      .toList();

  var irClasses = ir
      .map((x) => x.maybeWhen(fromSwidClass: (val) => val, orElse: () => null))
      .where((x) => x != null)
      .toList();

  for (var i = 0; i != enums.length; ++i) {
    await Future.forEach(
        TranslationUnitProducer(
          prefixPaths: ["runtime"],
          path: transformPackageUri(
            packageUri: enums[i]!.originalPackagePath,
          ),
          baseFileName: "${transformToCamelCase(str: enums[i]!.identifier)}",
          tsPrefixPaths: ["runtime"],
          dartPrefixPaths: [],
        ).produceFromSwidEnum(swidEnum: enums[i]),
        (dynamic x) => writeTranslationUnit(translationUnit: x));
  }
  print(irClasses.length);
  var classes = irClasses
      .where((x) => (config.emitOptions.allowList.classNames
                  .firstWhereOrNull((e) => x!.name == e) !=
              null ||
          config.emitOptions.allowList.packagePaths.firstWhereOrNull(
                  (e) => x!.originalPackagePath == e) !=
              null))
      .where((x) => (config.emitOptions.denyList.classNames
                  .firstWhereOrNull((e) => x!.name == e) ==
              null &&
          config.emitOptions.denyList.packagePaths
                  .firstWhereOrNull((e) => x!.originalPackagePath == e) ==
              null))
      .toList();
  for (var i = 0; i != classes.length; ++i) {
    await Future.forEach(
        TranslationUnitProducer(
          prefixPaths: config.emitOptions.prefixPaths,
          path: transformPackageUri(
            packageUri: classes[i]!.originalPackagePath,
          ),
          baseFileName: "${transformToCamelCase(str: classes[i]!.name)}",
          tsPrefixPaths: config.emitOptions.tsEmitOptions.prefixPaths,
          dartPrefixPaths: config.emitOptions.dartEmitOptions.prefixPaths,
        ).produceFromSwidClass(
            swidClass: fixupNullability(swidClass: classes[i]!)),
        (dynamic x) => writeTranslationUnit(translationUnit: x));
  }

  await Future.forEach(
      produceDartTranslationUnitsFromBarrelSpec(
        packageName: config.emitOptions.dartEmitOptions.hostPackageName,
        prefixPaths: config.emitOptions.dartEmitOptions.prefixPaths,
        barrelSpec: resolveBarrelSpecs(
            members: classes
                .map((x) => BarrelMember.fromSwidClass(swidClass: x!))
                .toList()),
      ),
      (dynamic x) => writeTranslationUnit(translationUnit: x));
}
