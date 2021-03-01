import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/resolveTsImportPaths.dart';

List<Tuple2<List<String>, String>> resolveDependencyInformation({
  @required List<SwidInterface> dependencies,
  @required SwidType importer,
  @required List<String> prefixPaths,
  bool rewriteReferences = true,
}) =>
    dependencies
        .map((x) => SwidInterface.clone(
            swidType: x, name: removeTypeArguments(str: x.name)))
        .fold<List<SwidInterface>>(
            <SwidInterface>[],
            (prev, element) => prev.firstWhere((x) => x.name == element.name,
                        orElse: () => null) ==
                    null
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
        .map(
          (x) => Tuple2(
            [
              rewriteReferences &&
                      x.referenceDeclarationKind ==
                          SwidReferenceDeclarationKind.classElement
                  ? rewriteReferenceName(name: removeTypeArguments(str: x.name))
                  : removeTypeArguments(str: x.name),
            ],
            resolveTsImportsPaths(
                  importee: SwidType.fromSwidInterface(swidInterface: x),
                  importer: importer,
                  prefixPaths: prefixPaths,
                ) +
                p.separator +
                transformToCamelCase(str: removeTypeArguments(str: x.name)),
          ),
        )
        .toList()
        .cast<Tuple2<List<String>, String>>();
