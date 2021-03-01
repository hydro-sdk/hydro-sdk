import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/dart/dartImportStatement.dart';
import 'package:hydro_sdk/swid/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartTranslationUnit.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/collectAllReferences.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateAllGenericsAsDynamic.dart';

DartTranslationUnit produceDartTranslationUnitFromSwidClass({
  @required SwidClass swidClass,
  @required String baseFileName,
  @required String path,
  @required List<String> prefixPaths,
}) =>
    (({
      @required SwidClass swidClass,
    }) =>
        requiresDartClassTranslationUnit(swidClass: swidClass)
            ? DartTranslationUnit(
                path: prefixPaths.join(p.separator) + p.separator + path,
                fileName: "$baseFileName.dart",
                ir: [
                  DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                  ...(({List<DartImportStatement> importStatements}) =>
                      importStatements
                          .fold<List<DartImportStatement>>(
                              <DartImportStatement>[],
                              (prev, element) => prev.firstWhere(
                                          (x) => x.path == element.path,
                                          orElse: () => null) ==
                                      null
                                  ? [...prev, element]
                                  : prev)
                          .map((x) => DartIr.fromDartImportStatement(
                              dartImportStatement: x))
                          .toList())(importStatements: [
                    DartImportStatement(path: "package:meta/meta.dart"),
                    ...collectAllReferences(
                            swidType: SwidType.fromSwidClass(
                                swidClass: SwidClass.mergeSuperClasses(
                                    swidClass: swidClass)))
                        .where((x) =>
                            x.originalPackagePath !=
                            swidClass.originalPackagePath)
                        .where((x) => x.originalPackagePath != "dart:_internal")
                        .where((x) => x.originalPackagePath.isNotEmpty)
                        .map((x) =>
                            DartImportStatement(path: x.originalPackagePath))
                        .toList(),
                    DartImportStatement(path: swidClass.originalPackagePath),
                    DartImportStatement(
                        path:
                            "package:hydro_sdk/cfr/builtins/boxing/boxers.dart"),
                    DartImportStatement(
                        path:
                            "package:hydro_sdk/cfr/builtins/boxing/boxes.dart"),
                    DartImportStatement(
                        path:
                            "package:hydro_sdk/cfr/builtins/boxing/unboxers.dart"),
                    DartImportStatement(
                        path: "package:hydro_sdk/cfr/vm/closure.dart"),
                    DartImportStatement(
                        path: "package:hydro_sdk/cfr/vm/context.dart"),
                    DartImportStatement(
                        path: "package:hydro_sdk/cfr/vm/table.dart"),
                    DartImportStatement(
                        path: "package:hydro_sdk/hydroState.dart"),
                  ]),
                  DartIr.fromVMManagedClassDeclaration(
                    vmManagedClassDeclaration: DartVMManagedClassDeclaration(
                      swidClass: instantiateAllGenericsAsDynamic(
                              swidType: SwidType.fromSwidClass(
                                  swidClass: SwidClass.mergeSuperClasses(
                                      swidClass: swidClass)))
                          .when(
                        fromSwidInterface: (_) => null,
                        fromSwidClass: (val) => val,
                        fromSwidDefaultFormalParameter: (_) => null,
                        fromSwidFunctionType: (_) => null,
                      ),
                    ),
                  ),
                  DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                  !swidClass.isPureAbstract() &&
                          swidClass.isConstructible() &&
                          !swidClass.constructorType.isFactory
                      ? DartIr.fromRTManagedClassDeclaration(
                          rtManagedClassDeclaration:
                              DartRTManagedClassDeclaration(
                                  swidClass: instantiateAllGenericsAsDynamic(
                                          swidType: SwidType.fromSwidClass(
                                              swidClass:
                                                  SwidClass.mergeSuperClasses(
                                                      swidClass: swidClass)))
                                      .when(
                            fromSwidInterface: (_) => null,
                            fromSwidClass: (val) => val,
                            fromSwidDefaultFormalParameter: (_) => null,
                            fromSwidFunctionType: (_) => null,
                          )),
                        )
                      : null,
                  DartIr.fromLoadNamepsaceSymbolDeclaration(
                      loadNamespaceSymbolDeclaration:
                          DartLoadNamespaceSymbolDeclaration(
                              swidClass: swidClass))
                ]..removeWhere((x) => x == null),
              )
            : null)(
      swidClass: removeNonEmitCandidates(swidClass: swidClass),
    );
