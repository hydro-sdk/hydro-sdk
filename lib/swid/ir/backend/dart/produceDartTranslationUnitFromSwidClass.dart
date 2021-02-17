import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/ir/backend/dart/dartImportStatement.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/rtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/vmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/ir/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/collectAllReferences.dart';

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
                          rtManagedClassDeclaration: RTManagedClassDeclaration(
                              swidClass: SwidClass.mergeSuperClasses(
                                  swidClass: swidClass)),
                        )
                      : null,
                  DartIr.fromLoadNamepsaceSymbolDeclaration(
                      loadNamespaceSymbolDeclaration:
                          DartLoadNamespaceSymbolDeclaration(swidClass: swidClass))
                ]..removeWhere((x) => x == null),
              )
            : null)(
      swidClass: removeNonEmitCandidates(swidClass: swidClass),
    );
