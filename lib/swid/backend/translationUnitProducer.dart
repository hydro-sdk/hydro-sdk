import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/dart/util/produceDartTranslationUnitFromSwidClass.dart';
import 'package:hydro_sdk/swid/backend/translationUnit.dart';
import 'package:hydro_sdk/swid/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/backend/ts/tsTranslationUnit.dart';
import 'package:hydro_sdk/swid/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/backend/ts/util/produceTsTranslationUnitFromSwidClass.dart';
import 'package:hydro_sdk/swid/backend/ts/util/produceTsTranslationUnitFromSwidTopLevelStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/ir/swidTopLevelStaticConstFieldDeclaration.dart';

class TranslationUnitProducer {
  final List<String> tsPrefixPaths;
  final List<String> dartPrefixPaths;
  final String path;
  final String baseFileName;
  final List<String> prefixPaths;

  TranslationUnitProducer({
    required final this.tsPrefixPaths,
    required final this.dartPrefixPaths,
    required final this.path,
    required final this.baseFileName,
    required final this.prefixPaths,
  });

  List<TranslationUnit> produceFromSwidEnum({
    required final SwidEnum? swidEnum,
  }) =>
      [
        TsTranslationUnit(
          path: tsPrefixPaths.join(p.separator) + p.separator + path,
          fileName: "$baseFileName.ts",
          ir: [
            TsIr.fromTsEnum(
              tsEnum: TsEnum(
                swidEnum: swidEnum,
              ),
            ),
          ],
        )
      ];

  List<TranslationUnit> produceFromSwidClass({
    required final SwidClass swidClass,
  }) =>
      [
        produceTsTranslationUnitFromSwidClass(
          swidClass: swidClass,
          baseFileName: baseFileName,
          path: path,
          prefixPaths: tsPrefixPaths,
        ),
        produceDartTranslationUnitFromSwidClass(
          swidClass: swidClass,
          baseFileName: baseFileName,
          path: path,
          prefixPaths: dartPrefixPaths,
        ),
      ].whereNotNull().toList();

  List<TranslationUnit> produceFromSwidTopLevelStaticConstFieldDeclaration({
    required final SwidTopLevelStaticConstFieldDeclaration
        swidTopLevelStaticConstFieldDeclaration,
  }) =>
      [
        produceTsTranslationUnitFromSwidTopLevelStaticConstFieldDeclaration(
          swidTopLevelStaticConstFieldDeclaration:
              swidTopLevelStaticConstFieldDeclaration,
          baseFileName: baseFileName,
          path: path,
          prefixPaths: tsPrefixPaths,
        )
      ];
}
