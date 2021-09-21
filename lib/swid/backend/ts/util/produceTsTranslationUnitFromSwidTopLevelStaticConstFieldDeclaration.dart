import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/ts/tsLinebreak.dart';
import 'package:hydro_sdk/swid/backend/ts/tsTopLevelStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/backend/ts/tsTranslationUnit.dart';
import 'package:hydro_sdk/swid/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/ir/swidTopLevelStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

TsTranslationUnit
    produceTsTranslationUnitFromSwidTopLevelStaticConstFieldDeclaration({
  required final SwidTopLevelStaticConstFieldDeclaration
      swidTopLevelStaticConstFieldDeclaration,
  required final String baseFileName,
  required final String path,
  required final List<String> prefixPaths,
  required final ISwarsPipeline pipeline,
}) =>
        TsTranslationUnit(
          pipeline: pipeline,
          path: prefixPaths.join(p.separator) + p.separator + path,
          fileName: "$baseFileName.ts",
          ir: [
            TsIr.fromTsLinebreak(
              tsLinebreak: TsLinebreak(),
            ),
            TsIr.fromTsTopLevelStaticConstFieldDeclaration(
              tsTopLevelStaticConstFieldDeclaration:
                  TsTopLevelStaticConstFieldDeclaration(
                swidTopLevelStaticConstFieldDeclaration:
                    swidTopLevelStaticConstFieldDeclaration,
              ),
            ),
            TsIr.fromTsLinebreak(
              tsLinebreak: TsLinebreak(),
            ),
          ],
        );
