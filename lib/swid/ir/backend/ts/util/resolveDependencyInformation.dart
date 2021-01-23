import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/rewriteClassReferencesToInterfaceReferences.dart';
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
        .where((x) => narrowSwidInterfaceByReferenceDeclaration(
              swidInterface: x,
              onPrimitive: (_) => false,
              onClass: (_) => true,
              onEnum: (_) => true,
              onVoid: (_) => false,
              onTypeParameter: (_) => false,
              onDynamic: (_) => false,
            ))
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
