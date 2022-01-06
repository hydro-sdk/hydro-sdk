import 'package:collection/collection.dart' show IterableExtension;
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/dart/dartImportStatement.dart';
import 'package:hydro_sdk/swid/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartTranslationUnit.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/backend/util/removePrivateMethods.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/analyses/collectAllReferences.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/applySuperTypes.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateAllGenericsAsDynamic.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

DartTranslationUnit? produceDartTranslationUnitFromSwidClass({
  required final SwidClass swidClass,
  required final String baseFileName,
  required final String path,
  required final List<String> prefixPaths,
  required final ISwarsPipeline pipeline,
}) =>
    (({
      required final SwidClass swidClass,
    }) =>
        requiresDartClassTranslationUnit(
          pipeline: pipeline,
          swidClass: swidClass,
        )
            ? DartTranslationUnit(
                pipeline: pipeline,
                path: prefixPaths.join(p.separator) + p.separator + path,
                fileName: "$baseFileName.dart",
                ir: [
                  DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                  ...((
                          {required final List<DartImportStatement>
                              importStatements}) =>
                      importStatements
                          .fold<List<DartImportStatement>>(
                              <DartImportStatement>[],
                              (prev, element) => prev.firstWhereOrNull(
                                          (x) => x.path == element.path) ==
                                      null
                                  ? [...prev, element]
                                  : prev)
                          .map((x) => DartIr.fromDartImportStatement(
                              dartImportStatement: x))
                          .toList())(importStatements: [
                    ...pipeline
                        .reduceFromTerm(
                          CollectAllReferences(
                            swidType: SwidType.fromSwidClass(
                              swidClass: pipeline.reduceFromTerm(
                                ApplySuperTypes(
                                  swidClass: swidClass,
                                ),
                              ),
                            ),
                          ),
                        )
                        .where(
                          (x) =>
                              x.originalPackagePath !=
                              swidClass.originalPackagePath,
                        )
                        .where(
                          (x) => x.originalPackagePath != "dart:_internal",
                        )
                        .where(
                          (x) => x.originalPackagePath.isNotEmpty,
                        )
                        .map(
                          (x) => DartImportStatement(
                            path: x.originalPackagePath,
                          ),
                        )
                        .toList(),
                    DartImportStatement(
                      path: swidClass.originalPackagePath,
                    ),
                    DartImportStatement(
                      path: "package:hydro_sdk/cfr/runtimeSupport.dart",
                    ),
                  ]),
                  DartIr.fromVMManagedClassDeclaration(
                    vmManagedClassDeclaration: DartVMManagedClassDeclaration(
                      swidClass: removePrivateMethods(
                        swidClass: pipeline
                            .reduceFromTerm(
                              InstantiateAllGenericsAsDynamic(
                                swidType: SwidType.fromSwidClass(
                                  swidClass: pipeline.reduceFromTerm(
                                    ApplySuperTypes(
                                      swidClass: swidClass,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .when(
                              fromSwidInterface: (_) => dartUnknownClass,
                              fromSwidClass: (val) => val,
                              fromSwidDefaultFormalParameter: (_) =>
                                  dartUnknownClass,
                              fromSwidFunctionType: (_) => dartUnknownClass,
                            ),
                      ),
                    ),
                  ),
                  DartIr.fromDartLinebreak(
                    dartLinebreak: DartLinebreak(),
                  ),
                  !swidClass.isPureAbstract() &&
                          swidClass.isConstructible() &&
                          !swidClass.constructorType!.isFactory
                      ? DartIr.fromRTManagedClassDeclaration(
                          rtManagedClassDeclaration:
                              DartRTManagedClassDeclaration(
                            swidClass: removePrivateMethods(
                              swidClass: pipeline.reduceFromTerm(
                                ApplySuperTypes(
                                  swidClass: swidClass,
                                ),
                              ),
                            ),
                          ),
                        )
                      : null,
                  DartIr.fromLoadNamepsaceSymbolDeclaration(
                    loadNamespaceSymbolDeclaration:
                        DartLoadNamespaceSymbolDeclaration(
                      swidClass: swidClass,
                    ),
                  )
                ]..removeWhere(
                    (x) => x == null,
                  ),
              )
            : null)(
      swidClass: removeNonEmitCandidates(
        pipeline: pipeline,
        swidClass: swidClass,
      ),
    );
