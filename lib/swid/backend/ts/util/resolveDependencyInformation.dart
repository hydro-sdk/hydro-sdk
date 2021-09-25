import 'package:collection/collection.dart' show IterableExtension;
import 'package:path/path.dart' as p;
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/resolveTsImportPaths.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';

List<Tuple2<List<String>, String>> resolveDependencyInformation({
  required final List<SwidInterface> dependencies,
  required final SwidType importer,
  required final List<String> prefixPaths,
  required final ISwarsPipeline pipeline,
  bool rewriteReferences = true,
}) =>
    dependencies
        .map((x) => SwidInterface.clone(
            swidType: x, name: removeTypeArguments(str: x.name)))
        .fold<List<SwidInterface>>(
            <SwidInterface>[],
            (prev, element) =>
                prev.firstWhereOrNull((x) => x.name == element.name) == null
                    ? [...prev, element]
                    : prev)
        .toList()
        .cast<SwidInterface>()
        .where((x) => !isPrimitiveMap(
            swidType: SwidType.fromSwidInterface(swidInterface: x)))
        .where((x) => x.name != "Object")
        .where((x) =>
            removeTypeArguments(str: x.name) !=
            removeTypeArguments(str: importer.name))
        .where((x) => !isDartObject(
              swidType: SwidType.fromSwidInterface(
                swidInterface: x,
              ),
            ))
        .map(
          (x) => Tuple2(
            [
              rewriteReferences &&
                      x.referenceDeclarationKind ==
                          SwidReferenceDeclarationKind.classElement
                  ? rewriteReferenceName(
                      swidType: SwidType.fromSwidInterface(
                        swidInterface: x,
                      ),
                    )
                  : removeTypeArguments(str: x.name),
            ],
            pipeline.reduceFromTerm(
                  ResolveTsImportPaths(
                    importee: SwidType.fromSwidInterface(swidInterface: x),
                    importer: importer,
                    prefixPaths: prefixPaths,
                  ),
                ) +
                p.separator +
                transformToCamelCase(
                  str: removeNullabilitySuffix(
                    str: removeTypeArguments(
                      str: x.name,
                    ),
                  ),
                ),
          ),
        )
        .toList()
        .cast<Tuple2<List<String>, String>>()
        .map((x) => Tuple2(
              x.item1.fold<List<String>>(
                <String>[],
                (prev, element) =>
                    prev.firstWhereOrNull((k) => k == element) == null
                        ? [
                            ...prev,
                            element,
                          ]
                        : prev,
              ),
              x.item2,
            ))
        .toList();
