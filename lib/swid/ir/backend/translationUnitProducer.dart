import 'package:hydro_sdk/swid/ir/backend/ts/TsIr.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPostamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPreamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassStaticConstFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsInterface.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
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
            path: tsPrefixPaths.join(p.separator) + p.separator + path,
            fileName: "$baseFileName.ts",
            ir: [TsIr.fromTsEnum(tsEnum: TsEnum(swidEnum: swidEnum))])
      ];

  List<TranslationUnit> produceFromSwidClass({@required SwidClass swidClass}) =>
      [
        TsTranslationUnit(
            path: tsPrefixPaths.join(p.separator) + p.separator + path,
            fileName: "$baseFileName.ts",
            ir: [
              TsIr.fromTsInterface(
                  tsInterface: TsInterface.fromSwidFunctiontype(
                      swidFunctionType: swidClass.constructorType)),
              TsIr.fromTsClassPreamble(
                  tsClassPreamble: TsClassPreamble(swidClass: swidClass)),
              TsIr.fromTsClassStaticConstFieldDeclarations(
                  tsClassStaticConstFieldDeclarations:
                      TsClassStaticConstFieldDeclarations(
                          swidClass: swidClass)),
              TsIr.fromTsClassPostamble(
                  tsClassPostamble: TsClassPostamble(swidClass: swidClass))
            ])
      ];
}
