import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/dart/dartBarrelLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartImportStatement.dart';
import 'package:hydro_sdk/swid/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/backend/dart/dartTranslationUnit.dart';
import 'package:hydro_sdk/swid/backend/dart/dartir.dart';
import 'package:hydro_sdk/swid/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/analyses/isUnrepresentableStaticConst.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

List<DartTranslationUnit> produceDartTranslationUnitsFromBarrelSpec({
  required final String packageName,
  required final List<String> prefixPaths,
  required final BarrelSpec barrelSpec,
  required final ISwarsPipeline pipeline,
}) =>
    [
      DartTranslationUnit(
          pipeline: pipeline,
          path: prefixPaths.join(p.separator) + p.separator + barrelSpec.path,
          fileName: barrelSpec.name + ".dart",
          ir: [
            DartIr.fromDartLinebreak(dartLinebreak: DartLinebreak()),
            DartIr.fromDartImportStatement(
              dartImportStatement: DartImportStatement(
                path: "package:hydro_sdk/cfr/runtimeSupport.dart",
              ),
            ),
            ...barrelSpec.members
                .map((x) => x.when(
                      fromSwidClass: (val) => requiresDartClassTranslationUnit(
                        pipeline: pipeline,
                        swidClass: val.clone(
                          staticConstFieldDeclarations:
                              val.staticConstFieldDeclarations
                                  .where(
                                    (x) => !pipeline.reduceFromTerm(
                                      IsUnrepresentableStaticConst(
                                        parentClass: val,
                                        staticConst: x.value,
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                      fromSwidEnum: (_) => false,
                      fromBarrelSpec: (_) => true,
                    )
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
                .reduce((value, element) => [
                      ...value,
                      ...element,
                    ]),
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
                pipeline: pipeline,
                packageName: packageName,
                prefixPaths: prefixPaths,
                barrelSpec: x!,
              ),
            )
            .toList(),
      )
    ];
