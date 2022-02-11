import 'package:collection/collection.dart' show IterableExtension;
import 'package:dartlin/control_flow.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:path/path.dart' as p;
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/resolveTsImportPaths.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformSixteenthHashName.dart';
import 'package:hydro_sdk/swid/ir/analyses/isShadowingParentReference.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/markClassReferences.dart';
import 'package:hydro_sdk/swid/ir/transforms/rewriteReferences.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
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
        .map(
          (x) => SwidInterface.clone(
            swidType: x,
            name: removeTypeArguments(
              str: x.name,
            ),
          ),
        )
        .fold<List<SwidInterface>>(
          <SwidInterface>[],
          (prev, element) => prev.firstWhereOrNull(
                    (x) =>
                        x.name == element.name &&
                        x.originalPackagePath == element.originalPackagePath,
                  ) ==
                  null
              ? [
                  ...prev,
                  element,
                ]
              : prev,
        )
        .toList()
        .cast<SwidInterface>()
        .where(
          (x) => !isPrimitiveMap(
            swidType: SwidType.fromSwidInterface(
              swidInterface: x,
            ),
          ),
        )
        .where(
          (x) => x.name != "Object",
        )
        .where(
          (x) => removeTypeArguments(
                    str: x.name,
                  ) ==
                  removeTypeArguments(
                    str: importer.name,
                  )
              ? x.originalPackagePath != importer.originalPackagePath
              : true,
        )
        .where(
          (x) => !isDartObject(
            swidType: SwidType.fromSwidInterface(
              swidInterface: x,
            ),
          ),
        )
        .map(
          (x) => Tuple2(
            [
              (rewriteReferences &&
                          x.referenceDeclarationKind ==
                              SwidReferenceDeclarationKind.classElement
                      ? pipeline
                          .reduceFromTerm(
                            RewriteReferences(
                              swidType: pipeline.reduceFromTerm(
                                MarkClassReferences(
                                  swidType: SwidType.fromSwidInterface(
                                    swidInterface: x.clone(
                                      element: x.element?.let(
                                        (it) => it.when(
                                          fromSwidTypeArgumentElement: (val) =>
                                              SwidElement
                                                  .fromSwidTypeArgumentElement(
                                            swidTypeArgumentElement: val,
                                          ),
                                          fromSwidInterfaceElement: (val) =>
                                              SwidElement
                                                  .fromSwidInterfaceElement(
                                            swidInterfaceElement: val.clone(
                                              isShadowingParent: false,
                                            ),
                                          ),
                                          fromSwidClassElement: (val) =>
                                              SwidElement.fromSwidClassElement(
                                            swidClassElement: val.clone(
                                              isShadowingParent: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .name
                      : removeTypeArguments(
                          str: x.name,
                        ))
                  .let(
                (it) => pipeline.reduceFromTerm(
                  IsShadowingParentReference(
                    parent: importer,
                    reference: SwidType.fromSwidInterface(
                      swidInterface: x,
                    ),
                  ),
                )
                    ? [
                        it,
                        " as ",
                        pipeline.reduceFromTerm(
                          TransformSixteenthHashName(
                            swidType: SwidType.fromSwidInterface(
                              swidInterface: x.clone(
                                name: it,
                              ),
                            ),
                          ),
                        ),
                      ].join()
                    : it,
              ),
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
        .cast<Tuple2<List<String>, String>>()
        .map(
          (x) => Tuple2(
            x.item1.fold<List<String>>(
              <String>[],
              (prev, element) => prev.firstWhereOrNull(
                        (k) => k == element,
                      ) ==
                      null
                  ? [
                      ...prev,
                      element,
                    ]
                  : prev,
            ),
            x.item2,
          ),
        )
        .toList()
        .cast<Tuple2<List<String>, String>>();
