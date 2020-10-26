import 'package:hydro_sdk/swid/ir/backend/ts/TsIr.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidEnum.dart';
import 'package:path/path.dart' as p;
import 'package:meta/meta.dart';

import 'translationUnit.dart';

class TranslationUnitProducer {
  final List<String> tsPrefixPaths;
  final List<String> dartPrefixPaths;
  final String path;
  final String baseFileName;

  TranslationUnitProducer(
      {@required this.tsPrefixPaths,
      @required this.dartPrefixPaths,
      @required this.path,
      @required this.baseFileName});

  List<TranslationUnit> produceFromSwidEnum({@required SwidEnum swidEnum}) => [
        TsTranslationUnit(
            path: tsPrefixPaths.join(p.separator) + path,
            fileName: "$baseFileName.ts",
            ir: [TsIr.fromTsEnum(tsEnum: TsEnum(swidEnum: swidEnum))])
      ];
}
