import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/ir/backend/dart/util/produceDartTranslationUnitFromSwidClass.dart';
import 'package:hydro_sdk/swid/ir/backend/translationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/util/produceTsTranslationUnitFromSwidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidEnum.dart';

class TranslationUnitProducer {
  final List<String> tsPrefixPaths;
  final List<String> dartPrefixPaths;
  final String path;
  final String baseFileName;
  final List<String> prefixPaths;

  TranslationUnitProducer({
    @required this.tsPrefixPaths,
    @required this.dartPrefixPaths,
    @required this.path,
    @required this.baseFileName,
    @required this.prefixPaths,
  });

  List<TranslationUnit> produceFromSwidEnum({@required SwidEnum swidEnum}) => [
        TsTranslationUnit(
            path: tsPrefixPaths.join(p.separator) + p.separator + path,
            fileName: "$baseFileName.ts",
            ir: [TsIr.fromTsEnum(tsEnum: TsEnum(swidEnum: swidEnum))])
      ];

  List<TranslationUnit> produceFromSwidClass({@required SwidClass swidClass}) =>
      [
        produceTsTranslationUnitFromSwidClass(
            swidClass: swidClass,
            baseFileName: baseFileName,
            path: path,
            prefixPaths: tsPrefixPaths),
        produceDartTranslationUnitFromSwidClass(
            swidClass: swidClass,
            baseFileName: baseFileName,
            path: path,
            prefixPaths: dartPrefixPaths),
      ]..removeWhere((x) => x == null);
}
