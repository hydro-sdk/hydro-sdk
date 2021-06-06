import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/dart/dartBarrelLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartImportStatement.dart';
import 'package:hydro_sdk/swid/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/backend/dart/dartTranslationUnit.dart';
import 'package:hydro_sdk/swid/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

List<DartTranslationUnit> produceDartTranslationUnitsFromBarrelSpec({
  required String packageName,
  required List<String> prefixPaths,
  required BarrelSpec barrelSpec,
}) =>
    [
      DartTranslationUnit(
          path: prefixPaths.join(p.separator) + p.separator + barrelSpec.path,
          fileName: barrelSpec.name + ".dart",
          ir: [
            DartIr.fromDartImportStatement(
                dartImportStatement:
                    DartImportStatement(path: "package:meta/meta.dart")),
            DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
            DartIr.fromDartImportStatement(
                dartImportStatement: DartImportStatement(
                    path: "package:hydro_sdk/cfr/vm/table.dart")),
            DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
            DartIr.fromDartImportStatement(
                dartImportStatement: DartImportStatement(
                    path: "package:hydro_sdk/hydroState.dart")),
            DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
            ...(barrelSpec.isTopLevel()
                ? [
                    DartIr.fromDartImportStatement(
                        dartImportStatement: DartImportStatement(
                            path: "package:hydro_sdk/cfr/vm/context.dart")),
                    DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
                  ]
                : []),
            ...barrelSpec.members
                .map((x) => x.when(
                        fromSwidClass: (val) =>
                            requiresDartClassTranslationUnit(swidClass: val),
                        fromSwidEnum: (_) => false,
                        fromBarrelSpec: (val) => val.members.every((e) =>
                            e.when(
                                fromSwidClass: (val) =>
                                    requiresDartClassTranslationUnit(
                                        swidClass: val),
                                fromSwidEnum: (_) => true,
                                fromBarrelSpec: (_) => true)))
                    ? [
                        DartIr.fromDartImportStatement(
                            dartImportStatement: DartImportStatement(
                                path: [
                          "package:",
                          packageName,
                          p.separator,
                          prefixPaths.first == "lib"
                              ? prefixPaths.skip(1).join(p.separator)
                              : prefixPaths.join(p.separator),
                          p.separator,
                          transformPackageUri(
                              packageUri: x.originalPackagePath),
                          p.separator,
                          x.when(
                            fromSwidClass: (val) =>
                                transformToCamelCase(str: val.name),
                            fromSwidEnum: (val) =>
                                transformToCamelCase(str: val.identifier),
                            fromBarrelSpec: (val) => val.name,
                          ),
                          ".dart",
                        ].join()))
                      ]
                    : [])
                .reduce((value, element) =>
                    [...value, ...element]) as Iterable<DartIr?>,
            DartIr.fromDartBarrelLoadNamespaceSymbolDeclaration(
                dartBarrelLoadNamespaceSymbolDeclaration:
                    DartBarrelLoadNamespaceSymbolDeclaration(
                        barrelSpec: barrelSpec))
          ]),
      ...((List<List<DartTranslationUnit>> translationUnits) => translationUnits
              .isNotEmpty
          ? translationUnits.reduce((value, element) => [...value, ...element])
          : [])(
        barrelSpec.members
            .map((x) =>
                x.maybeWhen(fromBarrelSpec: (val) => val, orElse: () => null))
            .where((x) => x != null)
            .where((x) => x!.name != "_internal")
            .map(
              (x) => produceDartTranslationUnitsFromBarrelSpec(
                packageName: packageName,
                prefixPaths: prefixPaths,
                barrelSpec: x!,
              ),
            )
            .toList(),
      ) as Iterable<DartTranslationUnit>
    ];
