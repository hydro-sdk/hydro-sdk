import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/ir/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/loadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/rtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/vmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/translationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/produceTsTranslationUnitFromSwidClass.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsir.dart';
import 'package:hydro_sdk/swid/ir/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/ir/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidEnum.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/rewriteClassReferencesToInterfaceReferences.dart';

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
      (({
        SwidClass swidClass,
        SwidClass swidClassWithInterfaceReferences,
        SwidClass unMergedSwidClassWithInterfaceReferences,
      }) =>
          [
            produceTsTranslationUnitFromSwidClass(
                swidClass: swidClass,
                baseFileName: baseFileName,
                path: path,
                prefixPaths: tsPrefixPaths),
            swidClass.originalPackagePath != "dart:_internal" &&
                    (requiresDartBinding(swidClass: swidClass) ||
                        swidClass.isConstructible())
                ? DartTranslationUnit(
                    path:
                        dartPrefixPaths.join(p.separator) + p.separator + path,
                    fileName: "$baseFileName.dart",
                    ir: [
                      DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                      DartIr.fromVMManagedClassDeclaration(
                        vmManagedClassDeclaration: VMManagedClassDeclaration(
                          swidClass:
                              SwidClass.mergeSuperClasses(swidClass: swidClass),
                        ),
                      ),
                      DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                      !swidClass.isPureAbstract() &&
                              swidClass.isConstructible() &&
                              !swidClass.constructorType.isFactory
                          ? DartIr.fromRTManagedClassDeclaration(
                              rtManagedClassDeclaration:
                                  RTManagedClassDeclaration(
                                      swidClass: SwidClass.mergeSuperClasses(
                                          swidClass: swidClass)),
                            )
                          : null,
                      DartIr.fromLoadNamepsaceSymbolDeclaration(
                          loadNamespaceSymbolDeclaration:
                              LoadNamespaceSymbolDeclaration(
                                  swidClass: swidClass))
                    ]..removeWhere((x) => x == null),
                  )
                : null
          ]..removeWhere((x) => x == null))(
        swidClass: removeNonEmitCandidates(swidClass: swidClass),
        unMergedSwidClassWithInterfaceReferences: removeNonEmitCandidates(
          swidClass: rewriteClassReferencesToInterfaceReferences(
                  swidType: SwidType.fromSwidClass(swidClass: swidClass))
              .when(
            fromSwidInterface: (_) => null,
            fromSwidClass: (val) => val,
            fromSwidDefaultFormalParameter: (_) => null,
            fromSwidFunctionType: (_) => null,
          ),
        ),
        swidClassWithInterfaceReferences: SwidClass.mergeSuperClasses(
          swidClass: removeNonEmitCandidates(
            swidClass: rewriteClassReferencesToInterfaceReferences(
                    swidType: SwidType.fromSwidClass(swidClass: swidClass))
                .when(
              fromSwidInterface: (_) => null,
              fromSwidClass: (val) => val,
              fromSwidDefaultFormalParameter: (_) => null,
              fromSwidFunctionType: (_) => null,
            ),
          ),
        ),
      );
}
